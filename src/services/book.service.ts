import { query } from './db';

export interface Book {
    title: string;
    author: string;
    year: number;
    booktype: string;
    genre: string;
    owner: string;
    status: string;
    location: string;
    language: string;
}


export interface OwnerStats {
    Owner: string;
    Total_Libros: number;
    Por_leer: number;
    Leidos: number;
    Leyendo: number;
    Porcentaje_leidos: number | null;
}

export async function getAllBooks(): Promise<Book[]> {
    const sql = 'SELECT * FROM Books';
    const results = await query(sql);
    return results as Book[];
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
        logger.debug('getAllBooksByAuthor: empty author provided');
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
            COUNT(*) - SUM(Status = 'HB') AS Total_Libros,
            SUM(Status = 'TBR') AS Por_leer,
            SUM(Status = 'R')   AS Leidos,
            SUM(Status = 'WIP') AS Leyendo,
            ROUND(100 * SUM(Status = 'R') / NULLIF(COUNT(*) - SUM(Status = 'HB'), 0), 2) AS Porcentaje_leidos
        FROM Books
        GROUP BY Owner
        ORDER BY Owner;
    `;

    const results = await query(sql);
    return results as OwnerStats[];
}

export async function insertBook(book: Book): Promise<void> {
    const {title, author, year, booktype, genre, owner, status, location, language} = book;
    const sql = `
        INSERT INTO Books (title, author, year, booktype, genre, owner, status, location, language)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
    `;
    const params = [title, author, year, booktype, genre, owner, status, location, language];
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