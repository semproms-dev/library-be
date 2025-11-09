const bodyParser = require('body-parser');
const express = require('express');
const log4js = require('log4js');

// Configure log4js once at application startup
log4js.configure({
  appenders: { out: { type: 'console' } },
  categories: { default: { appenders: ['out'], level: 'info' } }
});
const bookRoutes = require('./routes/userRoutes').default;

const app = express();
const port = 3000;
const logger = log4js.getLogger();
logger.info('Logging initialized');

// Middleware to parse JSON bodies
app.use(bodyParser.json());
app.use('/api', bookRoutes)

// Sample route
app.get('/', (req: any, res: any) => {
  res.send('Hello, World!');
});

// Start the server
app.listen(port, () => {
  logger.info(`Server is running at http://localhost:${port}`);
});