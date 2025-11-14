import { Router } from 'express';
import { getAllBooksController, getStatsController, getAllBooksByAuthorController, insertBookController, deleteBookByIdController, getAlllBooksController, modifyBookController } from '../controllers/book.controller';

const router: Router = Router();

// Sample user route
router.get('/books', getAllBooksController);
router.get('/books/author/:author', getAllBooksByAuthorController);
router.get('/stats', getStatsController);
router.delete('/books/delete/:id', deleteBookByIdController);
router.get('/books/:parameter', getAlllBooksController);
router.post('/books/insert/', insertBookController);
router.put('/books/modify/:id', modifyBookController);

export default router;