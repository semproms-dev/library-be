import { Request, Response } from 'express';
import { getAllBooks, getStats, getAllBooksByAuthor, insertBook, deleteBookById, getAllBooksByParameter, modifyBook } from '../services/book.service';
import { storeLog } from '../utils/store.actions';
const log4js = require('log4js');
import { getRequesterInfo } from '../utils/requester.action';

// use a named logger for this controller
const logger = log4js.getLogger('book');



export async function getAllBooksController(req: Request, res: Response)  {
    const requesterInfo = await getRequesterInfo(req);
    logger.info('requester info in getAllBooksController:', requesterInfo);
    try {
        logger.info('Starting to retrieve all books from db...');
        const books = await getAllBooks();
        const message = `Returning ${Array.isArray(books) ? books.length : 0} books`;
        storeLog({  message, level: 'info', meta: {requesterInfo} });
        return res.json(books);
    } catch (err) {
        // You can enhance error handling / logging here
        const message = `Error retrieving all books ${err}`;
        logger.error(message);
        storeLog({  message, level: 'error', meta: { error: err, requesterInfo: requesterInfo } });
        return res.status(500).json({ error: 'Failed to fetch books' });
    }
}


export async function getAllBooksByAuthorController(req: Request, res: Response) {
    const author = req.params.author;
    const requesterInfo = await getRequesterInfo(req);
    try {
        logger.info(`Starting to retrieve books by author ${author} from db...`);
        storeLog({ message: `Fetching books for author: ${author}`, level: 'info', meta: { requesterInfo: requesterInfo } });
        const books = await getAllBooksByAuthor(author);
        return res.json(books);
    } catch (err) {
        logger.error('getAllBooksByAuthorController error:', err);
        storeLog({ message: `Error fetching books for author: ${author}`, level: 'error', meta: { error: err, requesterInfo: requesterInfo } });
        return res.status(500).json({ error: 'Failed to fetch books by author' });
    }
}

export async function getStatsController(req: Request, res: Response) {
    const requesterInfo = await getRequesterInfo(req);
    try {
        logger.info('Starting to retrieve owner stats from db...');
        storeLog({ message: 'Fetching owner stats', level: 'info', meta: { requesterInfo: requesterInfo } });
        const stats = await getStats();
        return res.json(stats);
    } catch (err) {
        logger.error('getStatsController error:', err);
        storeLog({ message: 'Error fetching owner stats', level: 'error', meta: { error: err, requesterInfo: requesterInfo } });
        return res.status(500).json({ error: 'Failed to fetch stats' });
    }
}

export async function deleteBookByIdController(req: Request, res: Response) {
    const requesterInfo = await getRequesterInfo(req);
    try {
        const bookId = parseInt(req.params.id, 10);
        logger.info(`Deleting book with id ${bookId} from db...`);
        storeLog({ message: `Deleting book with id: ${bookId}`, level: 'info', meta: { requesterInfo: requesterInfo } });
        await deleteBookById(bookId);
        return res.status(200).json({ message: 'Book deleted successfully' });
    } catch (err) {
        logger.error('deleteBookById error:', err);
        storeLog({ message: `Error deleting book with id: ${req.params.id}`, level: 'error', meta: { error: err, requesterInfo: requesterInfo } });
        return res.status(500).json({ error: 'Failed to delete book' });
    }
}

export async function getAlllBooksController(req: Request, res: Response) {
    const parameter = req.params.parameter;
    const value = req.body.value;
    const requesterInfo = await getRequesterInfo(req);
    try {
        logger.info(`Starting to retrieve books by ${parameter} = ${value} from db...`);
        storeLog({ message: `Fetching books where ${parameter} = ${value}`, level: 'info', meta: { requesterInfo: requesterInfo } });
        const books = await getAllBooksByParameter(parameter, value);
        return res.json(books);
    } catch (err) {
        logger.error('getAlllBooksController error:', err);
        storeLog({ message: `Error fetching books where ${parameter} = ${value}`, level: 'error', meta: { error: err, requesterInfo: requesterInfo } });
        return res.status(500).json({ error: 'Failed to fetch books by parameter' });
    }
}

export async function insertBookController(req: Request, res: Response) {
    const requesterInfo = await getRequesterInfo(req);
    try {
        const book = req.body;
        logger.info('Inserting new book into db...', book);
        storeLog({ message: 'Inserting new book', level: 'info', meta: { book, requesterInfo: requesterInfo } });
        await insertBook(book);
        return res.status(201).json({ message: 'Book inserted successfully' });
    } catch (err) {
        logger.error('insertBook error:', err);
        storeLog({ message: 'Error inserting new book', level: 'error', meta: { error: err, requesterInfo: requesterInfo } });
        return res.status(500).json({ error: 'Failed to insert book' });
    }
}

export async function modifyBookController(req: Request, res: Response) {
    const requesterInfo = await getRequesterInfo(req);
    try {
        const bookId = parseInt(req.params.id, 10);
        if (!bookId || isNaN(bookId)) {
            return res.status(400).json({ error: 'Invalid book id' });
        }

        const book = req.body;
        if (!book || Object.keys(book).length === 0) {
            return res.status(400).json({ error: 'No fields to update' });
        }

        logger.info(`Modifying book id=${bookId} with`, book);
        storeLog({ message: `Modifying book id=${bookId}`, level: 'info', meta: { book, requesterInfo: requesterInfo } });
        await modifyBook(bookId, book);
        return res.status(200).json({ message: 'Book modified successfully' });
    } catch (err) {
        logger.error('modifyBook error:', err);
        storeLog({ message: `Error modifying book id=${req.params.id}`, level: 'error', meta: { error: err, requesterInfo: requesterInfo } });
        const msg = err && (err as Error).message;
        return res.status(500).json({ error: 'Failed to modify book' });
    }
}