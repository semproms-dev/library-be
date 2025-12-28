import { query } from '../config/db-mysql';

export interface Book {
    title: string;
    author: string;
    year: number;
    bookType: string;
    genre: string;
    owner: string;
    status: string;
    location: string;
    language: string;
}



export interface OwnerStats {
    Owner: string;
    Total_Books: number;
    To_Read: number;
    Already_Read: number;
    Reading: number;
    Percentage_Read: number | null;
}

export interface Config {
    genre: string[];
    owner: string[];
    status: string[];
    location: string[];
    bookType: string[];
}

export async function getConfig(): Promise<Config> {
    const sql = 'SELECT kind, value FROM Config ORDER BY kind, value';
    const rows = await query(sql);

    const config: Config = {
        genre: [],
        owner: [],
        status: [],
        location: [],
        bookType: []
    };

    for (const row of rows as { kind: keyof Config; value: string }[]) {
        config[row.kind].push(row.value);
    }

    return config;
}

export interface PaginatedResult<T> {
    data: T[];
    pagination: {
        page: number;
        pageSize: number;
        total: number;
        totalPages: number;
    };
}

export async function getAllBooks(): Promise<Book[]> {
    const sql = 'SELECT * FROM Books';
    const results = await query(sql);
    return results as Book[];
}

type FilterValue = string | number | boolean;
type FiltersObject = Record<string, FilterValue>;

function buildWhere(filters: FiltersObject, allowed: string[]): { whereClause: string; params: any[] } {
  // Validate that filters is an object
  if (typeof filters !== 'object' || filters === null || Array.isArray(filters)) {
    throw new Error('filters must be an object');
  }

  const whereClauses: string[] = [];
  const params: any[] = [];

  // Iterate over the object keys
  for (const [key, value] of Object.entries(filters)) {
    // Skip undefined, null, or empty string values
    if (value === undefined || value === null || value === '') {
      continue;
    }

    const col = key.toLowerCase();
    if (!allowed.includes(col)) {
      throw new Error(`Invalid filter parameter: ${key}`);
    }
    
    whereClauses.push(`LOWER(\`${col}\`) LIKE ?`);
    const searchValue = typeof value === 'string' ? value.toLowerCase() : String(value);
    params.push(`%${searchValue}%`);
  }

  return {
    whereClause: whereClauses.join(' AND '),
    params
  };
}

export async function getAllBooksByFilterList(
    filters: FiltersObject,
    page: number = 1,
    pageSize: number = 10
): Promise<PaginatedResult<Book>> {
    console.log('Filters received in getAllBooksByFilterList:', filters, 'page:', page, 'pageSize:', pageSize);
    
    // Validate that filters is an object
    if (typeof filters !== 'object' || filters === null || Array.isArray(filters)) {
        throw new Error('filters must be an object');
    }
    
    // Validate and normalize pagination parameters
    const pageNum = Math.max(1, Math.floor(Number(page) || 1));
    const limitNum = Math.max(1, Math.min(100, Math.floor(Number(pageSize) || 10))); // Max 100 items per page
    const offset = Math.max(0, (pageNum - 1) * limitNum);

    const allowed = ['title', 'author', 'year', 'booktype', 'genre', 'owner', 'status', 'location', 'language'];

    // Filter out empty values from filters object
    const filterKeys = Object.keys(filters).filter(key => {
      const value = filters[key];
      return value !== undefined && value !== null && value !== '';
    });

    let whereClause = '';
    let countParams: any[] = [];
    let dataParams: any[] = [];

    if (filterKeys.length > 0) {
        const whereResult = buildWhere(filters, allowed);
        whereClause = `WHERE ${whereResult.whereClause}`;
        countParams = [...whereResult.params];
        // Only include WHERE clause params, not LIMIT/OFFSET since they're interpolated
        dataParams = [...whereResult.params];
    } else {
        // No filters, no params needed since LIMIT/OFFSET are interpolated
        dataParams = [];
    }

    // Get total count
    const countSql = filterKeys.length > 0 
        ? `SELECT COUNT(*) as total FROM Books ${whereClause}`
        : 'SELECT COUNT(*) as total FROM Books';
    const countResult = await query(countSql, countParams.length > 0 ? countParams : undefined);
    const total = Number((countResult as any[])[0]?.total || 0);


    // Get paginated data - LIMIT and OFFSET are interpolated, so only pass WHERE params
    const sql = filterKeys.length > 0
        ? `SELECT * FROM Books ${whereClause} ORDER BY BookId LIMIT ${limitNum} OFFSET ${offset}`
        : `SELECT * FROM Books ORDER BY BookId LIMIT ${limitNum} OFFSET ${offset}`;
    const results = await query(sql, dataParams.length > 0 ? dataParams : undefined);

    
    const totalPages = Math.ceil(total / limitNum);

    return {
        data: results as Book[],
        pagination: {
            page: pageNum,
            pageSize: limitNum,
            total: total,
            totalPages: totalPages
        }
    };
}

export async function getAllBooksByParameter(parameter: string, value: string): Promise<Book[]> {
    const allowed = ['title', 'author', 'year', 'booktype', 'genre', 'owner', 'status', 'location', 'language'];
    const col = parameter ? parameter.toLowerCase() : '';

    if(parameter !== 'author') {
        if (!allowed.includes(col)) {
            throw new Error(`Invalid search parameter: ${parameter}`);
        }

        const sql = `SELECT * FROM Books WHERE LOWER(\`${col}\`) LIKE ?`;
        const results = await query(sql, [`%${value.toLowerCase()}%`]);
        return results as Book[];
    }

    return getAllBooksByAuthor(value);

}


export async function getAllBooksByAuthor(author: string): Promise<Book[]> {
    const q = author || '';
    if (!q.trim()) {
            return [];
    }

    const sql = `
        SELECT *
        FROM Books
        WHERE (
            LOWER(author) LIKE CONCAT('%', LOWER(SUBSTRING_INDEX(?, ' ', 1)), '%')
            AND LOWER(author) LIKE CONCAT('%', LOWER(SUBSTRING_INDEX(?, ' ', -1)), '%')
        )
        OR LOWER(author) = LOWER(CONCAT(SUBSTRING_INDEX(?, ' ', -1), ', ', SUBSTRING_INDEX(?, ' ', 1)));
    `;

    const params = [q, q, q, q];

    const results = await query(sql, params);
    const rows: Book[] = Array.isArray(results) ? (results as any as Book[]) : [];

    return rows;
}



export async function getStats(): Promise<OwnerStats[]> {
    const sql = `
        SELECT
            Owner,
            COUNT(*) - SUM(Status = 'HB') AS Total_Books,
            SUM(Status = 'TBR') AS To_Read,
            SUM(Status = 'R')   AS Already_Read,
            SUM(Status = 'WIP') AS Reading,
            ROUND(100 * SUM(Status = 'R') / NULLIF(COUNT(*) - SUM(Status = 'HB'), 0), 2) AS Percentage_Read
        FROM Books
        GROUP BY Owner
        ORDER BY Owner;
    `;

    const results = await query(sql);
    return results as OwnerStats[];
}

export async function insertBook(book: Book): Promise<void> {
    const {title, author, year, bookType, genre, owner, status, location, language} = book;
    
    const sql = `
        INSERT INTO Books (title, author, year, booktype, genre, owner, status, location, language)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
    `;

    const params = [title, author, year, bookType, genre, owner, status, location, language];
    await query(sql, params);
}

export async function modifyBook(bookId: number, book: Partial<Book>): Promise<void> {
    if (!bookId || isNaN(bookId)) {
        throw new Error('Invalid bookId');
    }

    // Whitelist allowed updatable columns
    const allowed = ['title', 'author', 'year', 'booktype', 'genre', 'owner', 'status', 'location', 'language'];
    const setClauses: string[] = [];
    const params: any[] = [];

    for (const col of allowed) {
        if (Object.prototype.hasOwnProperty.call(book, col) && (book as any)[col] !== undefined) {
            setClauses.push(`\`${col}\` = ?`);
            params.push((book as any)[col]);
        }
    }

    if (setClauses.length === 0) {
        throw new Error('No fields provided to update');
    }

    const sql = `UPDATE Books SET ${setClauses.join(', ')} WHERE BookId = ?`;
    params.push(bookId);

    await query(sql, params);
}


export async function deleteBookById(bookId: number): Promise<void> {
    const sql = 'DELETE FROM Books WHERE BookId = ?';
    await query(sql, [bookId]);
}