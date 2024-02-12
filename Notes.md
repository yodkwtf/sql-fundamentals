# SQL Fundamentals

## Introduction to SQL

## Databases and Tables

We can multiple databases in a single SQL Server instance. Each database can have multiple tables. Each table can have multiple columns and rows.

### Database

A database is a collection of tables. It is a container for tables and other objects.

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

### Tables

A table is a collection of rows and columns. It is the most important aspect of Database as it stores the data.

> Definition: A table is a collection of related data held in a structured format within a database.

#### Data Types

Each column in a table has a specific data type. The data type defines the kind of data that can be stored in the column. There are a lot of data types in SQL but the most common ones are:

- **Numeric**: INT, DECIMAL, FLOAT
- **String**: CHAR, VARCHAR
- **Date and Time**: DATE, TIME, DATETIME

Data types are used when creating a new table or modifying an existing table.

#### Create a Table

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

The NOT NULL constraint enforces a column to not accept NULL values.

```sql
CREATE TABLE my_table (
  id INT NOT NULL,
  name VARCHAR(100) NOT NULL,
  age INT
);
```

#### DEFAULT

The DEFAULT constraint is used to set a default value for a column.

```sql
CREATE TABLE my_table (
  id INT,
  name VARCHAR(100),
  age INT DEFAULT 18
);
```

#### UNIQUE

The UNIQUE constraint ensures that all values in a column are different.

```sql
CREATE TABLE my_table (
  id INT UNIQUE,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  age INT
);
```

#### PRIMARY KEY

The PRIMARY KEY constraint uniquely identifies each record in a table. It is very useful when multiple rows have the same value in a column. IDs are usually used as primary keys

```sql
CREATE TABLE my_table (
  id INT PRIMARY KEY,
  name VARCHAR(100),
  age INT
);
```

#### AUTO_INCREMENT

The AUTO_INCREMENT constraint automatically generates a unique number for each row. It is very useful when you want to generate unique IDs for each row.

```sql
CREATE TABLE my_table (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  age INT
);
```

## CRUD Operations

CRUD stands for Create, Read, Update and Delete. These are the four basic operations that can be performed on a database.

### Create (INSERT)

The INSERT statement is used to add new rows to a table.

```sql
INSERT INTO my_table (id, name, age) VALUES (1, 'John', 25);
```

### Read (SELECT)

The SELECT statement is used to retrieve data from a table.

```sql
SELECT * FROM my_table;

SELECT name, age FROM my_table;
```

#### WHERE Clause

The WHERE clause is used to filter records. It is used to extract only those records that fulfill a specified condition.

```sql
SELECT * FROM my_table WHERE age > 25;
```

#### Aliases

Aliases are used to give a table, or a column in a table, a temporary name.

```sql
SELECT name AS full_name, age AS years FROM my_table;
```

### Update (UPDATE)

The UPDATE statement is used to modify the existing records in a table.

```sql
UPDATE my_table SET age = 30 WHERE name = 'John';
```

We can also update multiple columns at once.

```sql
UPDATE my_table SET age = 30, name = 'John Doe' WHERE id = 1;
```

If there is no WHERE clause, all records will be updated.

### Delete (DELETE)

The DELETE statement is used to delete records from a table.

```sql
DELETE FROM my_table WHERE name = 'John';
```

If there is no WHERE clause, all records will be deleted.

> Rule of thumb: If update or delete statements are by mistake, they can cause a lot of damage. Therefore, it's always a good practice to first run a SELECT statement with the same WHERE clause to see which records will be affected.

#### Drop vs Delete

- DROP is used to delete a table from the database
- DELETE is used to delete records from a table
