import express from 'express';
import mysql from 'mysql2';
import dotenv from 'dotenv';

dotenv.config();

const app = express();

// create a mysql connection
const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

app.get('/', (req, res) => {
  res.send('Welcome to Subscribe Web App!!!');
});

app.get('/subscribe', (req, res) => {
  // find user count
  const q = 'SELECT COUNT(*) as count FROM users';

  connection.query(q, (error, results) => {
    if (error) {
      console.log('Error in query: ', error);
      return res.status(500).json({ error });
    }
    console.log('Results: ', results);
    const count = results[0].count;
    res.send(`We have ${count} users!!!`);
  });
});

app.listen(8080, () => {
  console.log('Server is running on port 8080!!!');
});
