--- PROBLEM STATEMENT
-- Create a `pastries` table in bakery database
-- Should have 2 columns - name max length 50, quantity
-- Verify creation using query
-- Drop the table in end

--- SOLUTION
-- create database
CREATE DATABASE bakery;

-- select database
USE bakery;

-- create table
CREATE TABLE pastries (
  name VARCHAR(50), 
  quantity INT
);

-- check table creation
DESC pastries;

-- see list of tables
SHOW TABLES;

-- delete the table
DROP TABLE pastries;

-- see list of tables again
SHOW TABLES;