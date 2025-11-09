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

export async function getAllBooks(): Promise<Book[]> {
    const sql = 'SELECT title, author, year, booktype, genre, owner, status, location FROM Books';
    const results = await query(sql);
    return results as Book[];
}