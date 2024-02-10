import express from 'express';
import bodyParser from 'body-parser';
import connection from './dbConnection.js';

const app = express();

// middleware
app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static('public'));

// routes
app.get('/', (req, res) => {
  res.status(200).send('Welcome to Subscribe Web App!!!');
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

app.post('/register', (req, res) => {
  // insert user
  const { email } = req.body;
  const q = 'INSERT INTO users (email) VALUES (?)';

  connection.query(q, email, (error, results) => {
    if (error) {
      console.log('Error in query: ', error);
      return res.status(500).json({ error });
    }
    return res.status(200).redirect('/subscribe');
  });
});

// start the server
app.listen(8080, () => {
  console.log('Server is running on port 8080!!!');
});
