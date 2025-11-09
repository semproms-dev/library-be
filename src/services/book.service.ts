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