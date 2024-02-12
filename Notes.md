# SQL Fundamentals

<!-- Introduction (47) -->
<!-- MySQL vs SQL (49 & 50) -->
<!-- Database vs DBMS (49) -->
<!-- Installation and Setup (50 - 52) -->
<!-- Running SQL from Command Line (74) -->

## Databases

A database is a collection of tables. It is a container for tables and other objects. We can multiple databases in a single SQL Server instance.

#### Queries

- Get the list of databases in the server

  ```sql
  SHOW DATABASES;
  ```

- Create a new database

  ```sql
  CREATE DATABASE my_database;
  ```

- Use a database

  ```sql
  USE my_database;
  ```

- Delete a database

  ```sql
  DROP DATABASE my_database;
  ```

- Show current database

  ```sql
  SELECT DATABASE();
  ```

#### Naming Conventions

- SQL terms should be in uppercase
- DB name should be obvious and descriptive
- Use underscores to separate words instead of spaces

These are just conventions and not rules. You can use any name you want but it is a good practice to follow these conventions.

## Tables

A table is a collection of related data held in a structured format within a database.

#### Data Types

Each column in a table has a specific data type. The data type defines the kind of data that can be stored in the column. There are a lot of data types in SQL but the most common ones are:

- **Numeric**: INT, DECIMAL, FLOAT
- **String**: CHAR, VARCHAR
- **Date and Time**: DATE, TIME, DATETIME

#### Table Queries

- Create a new table

  ```sql
  CREATE TABLE my_table (
    id INT,
    name VARCHAR(100),
    age INT
  );
  ```

- Show all tables in the current database

  ```sql
  SHOW TABLES;
  ```

- Show the structure of a table

  ```sql
  SHOW COLUMNS FROM my_table;
  -- or
  DESCRIBE my_table;
  -- or
  DESC my_table;
  ```

- Delete a table

  ```sql
  DROP TABLE my_table;
  ```

#### MySQL Comments

- Single line comment

  ```sql
  -- This is a single line comment
  ```

- Multi-line comment

  ```sql
  /* This is a
  multi-line comment */
  ```

## Inserting Data

Insert statements are used to insert data into a table. They take the table name, columns and values to be inserted.

#### Insert Queries

- Inset data into a table

  ```sql
  INSERT INTO my_table (id, name, age) VALUES (1, 'John', 25);
  ```

- Retrieve all rows from a table

  ```sql
  SELECT * FROM my_table;
  ```

- Insert multiple rows into a table

  ```sql
  INSERT INTO my_table (id, name, age)
  VALUES
    (2, 'Jane', 30),
    (3, 'Doe', 35);
  ```

### Table Constraints

Constraints are used to specify rules for the data in a table. They are used to limit the type of data that can go into a table.

#### NOT NULL

- Enforces a column to not accept NULL values.

  ```sql
  CREATE TABLE my_table (
    id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    age INT
  );
  ```

#### DEFAULT

- Used to set a default value for a column.

  ```sql
  CREATE TABLE my_table (
    id INT,
    name VARCHAR(100),
    age INT DEFAULT 18
  );
  ```

#### UNIQUE

- Ensures that all values in a column are different.

  ```sql
  CREATE TABLE my_table (
    id INT UNIQUE,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    age INT
  );
  ```

#### PRIMARY KEY

- Uniquely identifies each record in a table
- IDs are used as the most common primary keys

  ```sql
  CREATE TABLE my_table (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT
  );
  ```

#### AUTO_INCREMENT

- Automatically generates a unique number for each row

  ```sql
  CREATE TABLE my_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT
  );
  ```

## CRUD Operations

CRUD stands for Create, Read, Update and Delete. These are the four basic operations that can be performed on a database.

### Create

- INSERT statement is used to add new rows to a table

  ```sql
  INSERT INTO my_table (id, name, age) VALUES (1, 'John', 25);
  ```

### Read

- SELECT statement is used to retrieve data from a table

  ```sql
  SELECT * FROM my_table;

  SELECT name, age FROM my_table;
  ```

#### WHERE Clause

- Used to extract only those records that fulfill a specified condition

  ```sql
  SELECT * FROM my_table WHERE age > 25;
  ```

#### Aliases

- Used to give a table, or a column in a table, a temporary name

  ```sql
  SELECT name AS full_name, age AS years FROM my_table;
  ```

### Update

- Used to modify the existing records in a table

  ```sql
  UPDATE my_table SET age = 30 WHERE name = 'John';
  ```

- Can also update multiple columns at once.

  ```sql
  UPDATE my_table SET age = 30, name = 'John Doe' WHERE id = 1;
  ```

If there is no WHERE clause, all records will be updated.

### Delete

- Used to delete records from a table.

  ```sql
  DELETE FROM my_table WHERE name = 'John';
  ```

If there is no WHERE clause, all records will be deleted.

> Rule of thumb: If update or delete statements are by mistake, they can cause a lot of damage. Therefore, it's always a good practice to first run a SELECT statement with the same WHERE clause to see which records will be affected.

#### Drop vs Delete

- DROP is used to delete a table from the database
- DELETE is used to delete records from a table

## String Functions

String functions are used to perform operations on strings like searching for a substring, replacing a substring, etc.

#### CONCAT

- Used to combine strings

  ```sql
  SELECT CONCAT('H', 'e', 'y'); -- Hey
  SELECT CONCAT(f_name. ' ', l_name) FROM users; -- John Doe
  ```

#### CONCAT_WS

- Stands for _`CONCAT` With Separator_
- Takes separator as first argument

  ```sql
  SELECT CONCAT_WS('/', '04', '08', '2001'); -- 04/08/2001
  ```

#### SUBSTRING

- Used to extract a part of a string
- Takes input string, start position and length as arguments

  ```sql
  SELECT SUBSTRING('Hello World', 1, 5); -- Hello

  -- changing starting point
  SELECT SUBSTRING('Hello World', 7, 5); -- World

  -- specify starting point only
  SELECT SUBSTR('Hello World', 7); -- World

  -- negative starting point
  SELECT SUBSTR('Hello World', -3); -- rld
  ```

#### REPLACE

- Used to replace all occurrences of a substring within a string
- Takes input string, old substring and new substring as arguments

  ```sql
  SELECT REPLACE('www.example.com', 'w.', 'W.'); -- wwW.example.com
  ```

#### REVERSE

- Used to reverse a string

  ```sql
  SELECT REVERSE('Hello World'); -- dlroW olleH
  ```

#### CHAR_LENGTH

- Used to get the length of a string

  ```sql
  SELECT CHAR_LENGTH('Hello World'); -- 11
  ```

#### UPPER and LOWER

- Used to convert a string to upper or lower case

  ```sql
  SELECT UPPER('Hello World'); -- HELLO WORLD
  SELECT LOWER('Hello World'); -- hello world
  ```

#### INSERT

- Used to insert a substring into a string at a specified position
- Takes input string, start position, how many characters to remove and new substring as arguments

  ```sql
  SELECT INSERT('Hello Bobby', 7, 4, 'There'); -- Hello Therey
  ```

#### LEFT and RIGHT

- Used to extract a specified number of characters from a string, starting from the left or right

  ```sql
  SELECT LEFT('Hello World', 5); -- Hello
  SELECT RIGHT('Hello World', 5); -- World
  ```

#### REPEAT

- Used to repeat a string a specified number of times

  ```sql
  SELECT REPEAT('Hello', 3); -- HelloHelloHello
  ```

#### TRIM

- Used to remove leading and trailing spaces from a string

  ```sql
  SELECT TRIM(' Hello '); -- Hello
  ```

- Can also remove leading and trailing characters

  ```sql
  SELECT TRIM(LEADING 'x' FROM 'xxxHello'); -- Hello
  SELECT TRIM(TRAILING 'x' FROM 'Helloxxx'); -- Hello
  SELECT TRIM(BOTH 'x' FROM 'xxxHelloxxx'); -- Hello
  ```

## Refining Selections

When we want to retrieve data from a table, we can use the SELECT statement. We can also refine the selection by using a few clauses.

#### DISTINCT

- Used to return only distinct values

  ```sql
  SELECT DISTINCT age FROM my_table;
  ```

#### ORDER BY

- Used to sort the result set in ascending or descending order

  ```sql
  SELECT * FROM my_table ORDER BY age;
  SELECT * FROM my_table ORDER BY age DESC;
  ```

- Can also sort by multiple columns

  ```sql
  SELECT * FROM my_table ORDER BY age, name;
  ```

#### LIMIT

- Used to limit the number of records returned

  ```sql
  SELECT * FROM my_table LIMIT 5;
  ```

- Specify the starting point and number of records to return

  ```sql
  SELECT * FROM my_table LIMIT 5, 10;
  ```

#### LIKE

- Used to search by finding records that include the specified value

  ```sql
  SELECT * FROM my_table WHERE name LIKE 'J%';
  SELECT * FROM my_table WHERE name LIKE 'J_n';

  -- any no. of characters before or after D
  SELECT * FROM my_table WHERE name LIKE '%D%';
  ```

##### Wildcards

- `%` -> Represents zero or more characters
- `_` -> Represents a single character
