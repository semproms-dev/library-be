import mongoose from 'mongoose';
import log4js from 'log4js';
const logger = log4js.getLogger();

export async function connectToDatabase(): Promise<void> {
    const mongoURI = process.env.MONGO_URI as string || 'mongodb://mongo_root:admin@mongodb:27017/library_mongo?authSource=admin';  
    logger.info('Connecting to MongoDB database...');
    try {
        await mongoose.connect(mongoURI);
        logger.info('Connected to MongoDB database');
    } catch (error) {
        logger.error('Error connecting to MongoDB database:', error);
        throw error;
    }
}