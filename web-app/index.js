import express from 'express';

const app = express();

app.get('/', (req, res) => {
  res.send('Welcome to Subscribe Web App!!!');
});

app.listen(8080, () => {
  console.log('Server is running on port 8080!!!');
});
