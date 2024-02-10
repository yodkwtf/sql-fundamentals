import express from 'express';
import dotenv from 'dotenv';
import connection from './dbConnection';

dotenv.config();
const app = express();

// middleware
app.set('view engine', 'ejs');

// routes
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
    const count = results[0].count;
    return res.render('index', { count });
  });
});

// start the server
app.listen(8080, () => {
  console.log('Server is running on port 8080!!!');
});
