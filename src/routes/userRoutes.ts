import { Router } from 'express';
import { 
    getStatsController, 
    getAllBooksByAuthorController, 
    insertBookController, 
    deleteBookByIdController, 
    getAlllBooksController, 
    modifyBookController,
    getConfigController,
    getBooksByFilterListController
 } from '../controllers/book.controller';

const router: Router = Router();

// Sample user route
router.post('/books', getBooksByFilterListController);
router.get('/books/author/:author', getAllBooksByAuthorController);
router.get('/stats', getStatsController);
router.delete('/books/delete/:id', deleteBookByIdController);
router.get('/books/:parameter', getAlllBooksController);
router.post('/books/insert/', insertBookController);
router.put('/books/modify/:id', modifyBookController);
router.get('/config', getConfigController);

export default router;