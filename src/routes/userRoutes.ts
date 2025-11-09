import {Router, Request, Response} from 'express';

const router: Router = Router();

// Sample user route
router.get('/books', (req: Request, res: Response) => {
  res.json([{ id: 1, name: 'John Doe' }, { id: 2, name: 'Jane Smith' }]);
});

export default router;