const bodyParser = require('body-parser');
const express = require('express');
const log4js = require('log4js');
import { connectToDatabase } from "./config/db-mongo";


// Configure log4js once at application startup
log4js.configure({
  appenders: { out: { type: 'console' } },
  categories: { default: { appenders: ['out'], level: 'info' } }
});
const bookRoutes = require('./routes/userRoutes').default;

const app = express();
const port = 3000;
const host = '0.0.0.0';
const logger = log4js.getLogger();
logger.info('Logging initialized');

// Middleware to parse JSON bodies with UTF-8 encoding
app.use(bodyParser.json({ charset: 'utf-8' }));
app.use(bodyParser.urlencoded({ extended: true, charset: 'utf-8' }));

// Middleware to set charset for JSON responses
app.use((req: any, res: any, next: any) => {
  res.charset = 'utf-8';
  res.setHeader('Content-Type', 'application/json; charset=utf-8');
  next();
});

app.use('/api', bookRoutes)

// Sample route
app.get('/', (req: any, res: any) => {
  res.send('Hello, World!');
});

// Start the server
app.listen(port, host, () => {
  logger.info(`Server is running at http://${host}:${port}`);
});

connectToDatabase().catch((error: string) => {
    logger.error('Failed to connect to the database:', error);
    process.exit(1); // Exit the application if the database connection fails
  }
);  