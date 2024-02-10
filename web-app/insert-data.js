import connection from './dbConnection';

const data = [];
for (let i = 0; i < 150; i++) {
  data.push([faker.internet.email(), faker.date.past()]);
}

var q = 'INSERT INTO users (email, created_at) VALUES ?';

connection.query(q, [data], function (err, result) {
  console.log(err);
  console.log(result);
});
