import dotenv from 'dotenv';
import mysql from 'mysql2/promise';

dotenv.config();

const pool = mysql.createPool({
  host: process.env.DB_HOST,
  port: Number(process.env.DB_PORT) || 3306,
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_PASSWORD,
  database: process.env.MYSQL_DATABASE,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
  charset: 'utf8mb4'
});

// Ensure charset is set on each connection
pool.on('connection', (connection: any) => {
  connection.query('SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci');
});

export async function query(sql: string, params?: any[]) {
  // If params is undefined or empty array, don't pass it to execute
  if (!params || params.length === 0) {
    const [results] = await pool.execute(sql);
    return results;
  }
  const [results] = await pool.execute(sql, params);
  return results;
}

export default pool;