import { Router } from 'express';
import { getAllBooksController, getAllBooksByTitleController, getStatsController, getAllBooksByAuthorController } from '../controllers/book.controller';

const router: Router = Router();

// Sample user route
router.get('/books', getAllBooksController);
router.get('/books/title/:title', getAllBooksByTitleController);
router.get('/books/author/:author', getAllBooksByAuthorController);
router.get('/stats', getStatsController);

export default router;