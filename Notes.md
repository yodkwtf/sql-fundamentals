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

- If there is no WHERE clause, all records will be updated.

### Delete

- Used to delete records from a table.

  ```sql
  DELETE FROM my_table WHERE name = 'John';
  ```

- If there is no WHERE clause, all records will be deleted.

> **Rule of thumb:** If update or delete statements are by mistake, they can cause a lot of damage. Therefore, it's always a good practice to first run a SELECT statement with the same WHERE clause to see which records will be affected.

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

## Aggregate Functions

Aggregate functions are used to perform calculations on a set of values and return a single value.

#### COUNT

- Used to count the number of rows in a table

  ```sql
  SELECT COUNT(*) FROM my_table;
  ```

- Can also count the number of non-NULL values in a column

  ```sql
  SELECT COUNT(age) FROM my_table;
  ```

#### GROUP BY

- Used to group rows that have the same values

  ```sql
  -- group by age and count the number of people in each age group
  SELECT age, COUNT(*) FROM my_table GROUP BY age;
  ```

- One or more columns can be used to group the data

  ```sql
  SELECT age, name, COUNT(*) FROM my_table GROUP BY age, name;
  ```

#### MIN and MAX

- Used to get the minimum and maximum value in a column

  ```sql
  SELECT MIN(age) FROM my_table;
  SELECT MAX(age) FROM my_table;
  ```

- Can also be used with GROUP BY

  ```sql
  SELECT age, MIN(name) FROM my_table GROUP BY age;
  SELECT age, MAX(name) FROM my_table GROUP BY age;
  ```

#### Subqueries

- Used to nest a query within another query

  ```sql
  -- first get the maximum age and then get the name of the person with that age
  SELECT name FROM my_table WHERE age = (SELECT MAX(age) FROM my_table);
  ```

#### SUM

- Used to get the sum of a column

  ```sql
  SELECT SUM(quantity) FROM orders;
  ```

- Can also be used with GROUP BY

  ```sql
  SELECT category, SUM(quantity) FROM orders GROUP BY category;
  ```

#### AVG

- Used to get the average value of a column

  ```sql
  SELECT AVG(age) FROM my_table;
  ```

- Can also be used with GROUP BY

  ```sql
  SELECT category, AVG(quantity) FROM orders GROUP BY category;
  ```

## Data Types

There are many data types in SQL but only few are used frequently.

#### CHAR and VARCHAR

- CHAR is fixed length and VARCHAR is variable length
- CHAR is faster for fixed length data and VARCHAR is faster for variable length data

  ```sql
  CREATE TABLE my_table (
    marks CHAR(2),
    email VARCHAR(100)
  );
  ```

#### Integer Types

- INT, TINYINT, SMALLINT, MEDIUMINT, BIGINT
- Different in memory and ranges

  ```sql
  CREATE TABLE my_table (
    id INT,
    age TINYINT
  );
  ```

- Range of INT: -2147483648 to 2147483647
- Range of TINYINT: -128 to 127

##### Signed and Unsigned

- Signed can store both positive and negative numbers
- Unsigned can store only positive numbers

  ```sql
  CREATE TABLE my_table (
    id INT UNSIGNED,
    age TINYINT UNSIGNED
  );
  ```

- Range of INT UNSIGNED: 0 to 4294967295
- Range of TINYINT UNSIGNED: 0 to 255

#### Floating-Point Types

- DECIMAL, FLOAT and DOUBLE
- DECIMAL is used for exact values and FLOAT and DOUBLE are used for approximate values

  ```sql
  CREATE TABLE my_table (
    price DECIMAL(10, 2),
    weight FLOAT
  );
  ```

- DECIMAL(10, 2) can store 8 digits before the decimal point and 2 digits after the decimal point

##### FLOAT vs DOUBLE

- FLOAT is a single-precision floating-point number and DOUBLE is a double-precision floating-point number
- DOUBLE is faster and more accurate but takes more space
- FLOAT takes 4 bytes and DOUBLE takes 8 bytes

## Date and Time

Date and time data types are used to store date and time values.

#### DATE

- Used to store date values in the format 'YYYY-MM-DD'

  ```sql
  CREATE TABLE my_table (
    dob DATE
  );
  ```

- Example: '2021-08-04'

#### TIME

- Used to store time values in the format 'HH:MM:SS'

  ```sql
  CREATE TABLE my_table (
    time TIME
  );
  ```

- Example: '12:30:45'

#### DATETIME

- Used to store date and time values in the format 'YYYY-MM-DD HH:MM:SS'

  ```sql
  CREATE TABLE my_table (
    created_at DATETIME
  );
  ```

- Example: '2021-08-04 12:30:45'

#### TIMESTAMP

- Used to store the current date and time in the format 'YYYY-MM-DD HH:MM:SS'
- Consumes less space than DATETIME
- Supports smaller range of values (1970-2038)

  ```sql
  CREATE TABLE my_table (
    updated_at TIMESTAMP
  );
  ```

- Suitable for fields like `created_at` and `updated_at`
- Automatically updates when a record is created or updated

  ```sql
  CREATE TABLE my_table (
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT NOW ON UPDATE NOW()
  );
  ```

#### CURDATE and CURTIME

- Used to get the current date and time

  ```sql
  SELECT CURDATE();
  SELECT CURTIME();
  ```

- Example: '2021-08-04' and '12:30:45'

#### NOW

- Used to get the current date and time

  ```sql
  SELECT NOW();
  ```

- Example: '2021-08-04 12:30:45'

### Date Functions

Date functions are used to perform operations on date and time values.

- `DAY()` -> Get the day of the month

  ```sql
  SELECT DAY('2021-08-04'); -- 4
  ```

- `DAYNAME()` -> Get the name of the day

  ```sql
  SELECT DAYNAME('2021-08-04'); -- Wednesday
  ```

- `DAYOFYEAR()` -> Get the day of the year

  ```sql
  SELECT DAYOFYEAR('2021-08-04'); -- 216
  ```

- `MONTHNAME()` -> Get the name of the month

  ```sql
  SELECT MONTHNAME('2021-08-04'); -- August
  ```

### Time Functions

Time functions are used to perform operations on time values.

- `HOUR()` -> Get the hour

  ```sql
  SELECT HOUR('12:30:45'); -- 12
  ```

- `MINUTE()` -> Get the minute

  ```sql
  SELECT MINUTE('12:30:45'); -- 30
  ```

### Formatting Dates

We can format date and time values using the `DATE_FORMAT` function and a bunch of format specifiers.

```sql
SELECT DATE_FORMAT('2021-08-04', '%d-%m-%Y'); -- 04-08-2021
```

- `%d` -> Day of the month
- `%m` -> Month
- `%Y` -> Year
- `%H` -> Hour
- `%i` -> Minute
- `%s` -> Second

```sql
SELECT DATE_FORMAT('12:30:45', '%H:%i:%s'); -- 12:30:45
```

### Maths and Dates

We can perform mathematical operations on date and time values.

- `DATE_ADD()` -> Add a date or time interval to a date

  ```sql
  SELECT DATE_ADD('2021-08-04', INTERVAL 1 DAY); -- 2021-08-05
  ```

- `DATE_SUB()` -> Subtract a date or time interval from a date

  ```sql
  SELECT DATE_SUB('2021-08-04', INTERVAL 1 DAY); -- 2021-08-03
  ```

- `DATEDIFF()` -> Get the difference between two dates

  ```sql
  SELECT DATEDIFF('2021-08-04', '2021-08-01'); -- 3
  ```

- `TIMESTAMPDIFF()` -> Get the difference between two timestamps

  ```sql
  SELECT TIMESTAMPDIFF(MINUTE, '2021-08-04 12:30:45', '2021-08-04 12:45:45'); -- 15
  ```
