import {Router, Request, Response} from 'express';
import { getAllBooks } from '../services/book.service';

const router: Router = Router();

// Sample user route
router.get('/books', async(req: Request, res: Response) => {
  try {
    const books = await getAllBooks()
    res.json(books);
  } catch(err) {
    res.status(500).json({error: 'Failed to fetch books'});
  }
});

export default router;