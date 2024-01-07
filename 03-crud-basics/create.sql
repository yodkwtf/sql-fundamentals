-- Create a new dataset
CREATE TABLE cakes(
  cake_id INT AUTO_INCREMENT,
  name VARCHAR(100),
  flavor VARCHAR(100),
  price INT,
  PRIMARY KEY (cake_id)
);


DESC cakes;


--- CREATE
INSERT INTO
  cakes (name, flavor, price)
VALUES
  ('Chocolate Cake', 'Chocolate', 20),
  ('Vanilla Cake', 'Vanilla', 18),
  ('Strawberry Cheesecake', 'Strawberry', 25),
  ('Red Velvet Cake', 'Red Velvet', 22),
  ('Carrot Cake', 'Carrot', 21),
  ('Lemon Pound Cake', 'Lemon', 19),
  ('Blueberry Muffin Cake', 'Blueberry', 16),
  ('Coconut Cream Cake', 'Coconut', 24),
  ('Coffee Walnut Cake', 'Coffee Walnut', 23),
  ('Raspberry Almond Torte', 'Raspberry Almond', 26);


-- drop table
DROP TABLE cakes;