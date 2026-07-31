/* To create a database */
-- CREATE DATABASE database_name;
-- CREATE DATABASE IF NOT EXISTS database_name;

/* To drop a database */
-- DROP DATABASE database_name;
-- DROP DATABASE IF EXISTS database_name;

/* To use the specific database */
-- USE database_name;

/* Display the list of the database */
--SHOW DATABASES;

/* Display the list of the table */
-- SHOW TABLES;

/* To create a table */
/*CREATE TABLE table_name(
	column_name datatype,
	column_name datatype
);*/

/* To drop the table */
--DROP TABLE table_name;

/* To insert a data into the table */
--INSERT INTO table_name VALUES (values1, values2);

/* To view all the data of the table */
--SELECT * FROM table_name;

/* Creating a smaple data and database */
CREATE DATABASE College;

USE College;

/* Creating a table which name is student */
/*CREATE TABLE Student(
	Rollno INT PRIMARY KEY,
	Name VARCHAR(50),
	Marks INT NOT NULL,
	Grade VARCHAR(1),
	City VARCHAR(20) 
);*/

/* Inserting a data into the table Student */
INSERT INTO Student (Rollno, Name, Marks, Grade, City) VALUES
(101, 'anil', 78, 'C', 'Pune'),
(102, 'bhumika', 93, 'A', 'Mumbai'),
(103, 'chetan', 85, 'B', 'Mumbai'),
(104, 'dhruv', 96, 'A', 'Delhi'),
(105, 'emanuel', 12, 'F', 'Delhi'),
(106, 'Farah', 82, 'B', 'Delhi');  

/* View the table data */
SELECT * FROM Student;

/* SELECT in detail */
--To view all the rows and columns data.
SELECT * FROM Student;

--To view only specified columns data.
SELECT Name, Grade FROM Student;

--To view only specified rows data.
SELECT * FROM Student Where Grade = 'A';

--To view only specified columns and rows data.
SELECT Name, Grade, City FROM Student WHERE Marks = 78;

--DISTINCT keyword its show only unique value in the output.
SELECT DISTINCT City FROM Student;

/* WHERE Clause in detail */
SELECT * FROM Student WHERE City = 'Mumbai';

SELECT Name, Grade FROM Student WHERE City = 'Pune';

/* Operators in WHERE Clause */
--Comparison Operators
SELECT * FROM Student WHERE Marks > 80;

SELECT * FROM Student WHERE Marks < 80;

SELECT * FROM Student WHERE Marks >= 75;

SELECT * FROM Student WHERE Marks <= 69;

SELECT * FROM Student WHERE Marks = 70;

SELECT * FROM Student WHERE Marks != 90;

--Logical Operators
SELECT * FROM Student WHERE City = 'Mumbai' AND Marks = 96;

SELECT * FROM Student WHERE City = 'Mumbai' OR Marks = 96;

SELECT * FROM Student WHERE NOT City = 'Mumbai';  

SELECT * FROM Student WHERE City IN ('Mumbai');

SELECT * FROM Student WHERE City NOT IN ('Delhi');

SELECT * FROM Student WHERE Marks BETWEEN 70 AND 90;

/* LIMIT Clause */
--SELECT * FROM table_name LIMIT number;
--SELECT * FROM Student LIMIT 3;

/* In the Microsoft SQL server a TOP clause supported */
--SELECT TOP number * FROM table_name;
SELECT TOP 3 * FROM Student;

SELECT TOP 3 * FROM Student WHERE Marks > 75;

/* ORDER BY Clause */
--SELECT * FROM table_name ORDER BY column_name ASC or DESC;
SELECT * FROM Student ORDER BY City ASC;

SELECT * FROM Student ORDER BY City DESC;

SELECT TOP 3 * FROM Student ORDER BY Marks ASC;

/* Aggregate Functions */
--1. COUNT()
SELECT COUNT(Marks) FROM Student;
SELECT COUNT(Name) FROM Student;

--2. MAX()
SELECT MAX(Marks) FROM Student;

--3. MIN()
SELECT MIN(Marks) FROM Student;

--4. AVG()
SELECT AVG(Marks) FROM Student;

--5. SUM()
SELECT SUM(Marks) FROM Student; 

/* GROUP BY Clause */
SELECT City, COUNT(Name) FROM Student GROUP BY City;

SELECT City, AVG(Marks) FROM Student GROUP BY City;

