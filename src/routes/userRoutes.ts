import { Router } from 'express';
import { getAllBooksController, getAllBooksByTitleController, getStatsController, getAllBooksByAuthorController, insertBookController, deleteBookByIdController } from '../controllers/book.controller';

const router: Router = Router();

// Sample user route
router.get('/books', getAllBooksController);
router.get('/books/title/:title', getAllBooksByTitleController);
router.get('/books/author/:author', getAllBooksByAuthorController);
router.get('/stats', getStatsController);
router.post('/books/insert', insertBookController) 
router.delete('/books/delete/:id', deleteBookByIdController);

export default router;