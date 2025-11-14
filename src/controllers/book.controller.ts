import { Request, Response } from 'express';
import { getAllBooks, getStats, getAllBooksByAuthor, insertBook, deleteBookById, getAllBooksByParameter, modifyBook } from '../services/book.service';
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

export async function deleteBookByIdController(req: Request, res: Response) {
    try {
        const bookId = parseInt(req.params.id, 10);
        logger.info(`Deleting book with id ${bookId} from db...`);
        await deleteBookById(bookId);
        return res.status(200).json({ message: 'Book deleted successfully' });
    } catch (err) {
        logger.error('deleteBookById error:', err);
        return res.status(500).json({ error: 'Failed to delete book' });
    }
}

export async function getAlllBooksController(req: Request, res: Response) {
    const parameter = req.params.parameter;
    const value = req.body.value;
    try {
        logger.info(`Starting to retrieve books by ${parameter} = ${value} from db...`);
        const books = await getAllBooksByParameter(parameter, value);
        return res.json(books);
    } catch (err) {
        logger.error('getAlllBooksController error:', err);
        return res.status(500).json({ error: 'Failed to fetch books by parameter' });
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

export async function modifyBookController(req: Request, res: Response) {
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
        await modifyBook(bookId, book);
        return res.status(200).json({ message: 'Book modified successfully' });
    } catch (err) {
        logger.error('modifyBook error:', err);
        const msg = err && (err as Error).message;
        return res.status(500).json({ error: 'Failed to modify book' });
    }
}