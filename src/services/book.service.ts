import {query} from './db';

export interface Book {
    title: string;
    author: string;
    year: number;
    booktype: string;
    genre: string;
    owner: string;
    status: string;
    location: string;
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

export async function getAllBooksByTitle(title: string): Promise<Book | null> {
    const sql = 'SELECT * FROM Books WHERE title = ?';
    const results = await query(sql, [title]);

    if (!results || (Array.isArray(results) && results.length === 0)) {
        return null;
    }

    const row = Array.isArray(results) ? results[0] : results;
    return row as Book;
}

export async function getAllBooksByAuthor(title: string): Promise<Book | null> {
    const sql = 'SELECT * FROM Books WHERE author = ?';
    const results = await query(sql, [title]);

    if (!results || (Array.isArray(results) && results.length === 0)) {
        return null;
    }

    const row = Array.isArray(results) ? results[0] : results;
    return row as Book;
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