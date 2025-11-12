import { Request, Response } from 'express';
import { getAllBooks, getAllBooksByTitle, getStats, getAllBooksByAuthor, insertBook } from '../services/book.service';
const log4js = require('log4js');

// use a named logger for this controller
const logger = log4js.getLogger('book');

export async function getAllBooksController(req: Request, res: Response) {
  try {
    logger.info('Starting to retrieve all books from db...');
    const books = await getAllBooks();
    logger.info(`Returning ${Array.isArray(books) ? books.length : 0} books`);
    return res.json(books);
  } catch (err) {
    // You can enhance error handling / logging here
    logger.error('getAllBooksController error:', err);
    return res.status(500).json({ error: 'Failed to fetch books' });
  }
}

export async function getAllBooksByTitleController(req: Request, res: Response) {
    const title = req.params.title;
    try {
        logger.info(`Starting to retrieve books by title ${title} from db...`);
        const books = await getAllBooksByTitle(title);
        return res.json(books);
    } catch (err) {
        logger.error('getAllBooksByTitleController error:', err);
        return res.status(500).json({ error: 'Failed to fetch books by title' });
    }
}

export async function getAllBooksByAuthorController(req: Request, res: Response) {
    const author = req.params.author;
    try {
        logger.info(`Starting to retrieve books by author ${author} from db...`);
        const books = await getAllBooksByAuthor(author);
        return res.json(books);
    } catch (err) {
        logger.error('getAllBooksByAuthorController error:', err);
        return res.status(500).json({ error: 'Failed to fetch books by author' });
    }
}

export async function getStatsController(req: Request, res: Response) {
    try {
        logger.info('Starting to retrieve owner stats from db...');
        const stats = await getStats();
        return res.json(stats);
    } catch (err) {
        logger.error('getStatsController error:', err);
        return res.status(500).json({ error: 'Failed to fetch stats' });
    }
}

export async function insertBookController(req: Request, res: Response) {
    try {
        const book = req.body;
        logger.info('Inserting new book into db...', book);
        await insertBook(book);
        return res.status(201).json({ message: 'Book inserted successfully' });
    } catch (err) {
        logger.error('insertBook error:', err);
        return res.status(500).json({ error: 'Failed to insert book' });
    }
}