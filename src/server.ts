const bodyParser = require('body-parser');
const express = require('express');
const bookRoutes = require('./routes/userRoutes').default;

const app = express();
const port = 3000;

// Middleware to parse JSON bodies
app.use(bodyParser.json());
app.use('/api', bookRoutes)

// Sample route
app.get('/', (req: any, res: any) => {
  res.send('Hello, World!');
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});