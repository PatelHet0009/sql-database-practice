/* Create a database which named is XYZ */
CREATE DATABASE XYZ;

/* Using that XYZ database */
USE XYZ;

/* Creating a table inside the database and table name is employee */
/*CREATE TABLE Employee(
	ID INT PRIMARY KEY,
	Name VARCHAR(50),
	Salary INT
);*/

/* Show the table */
SELECT * FROM Employee;

/* Inserting the data into the table Employee */
INSERT INTO Employee (ID ,Name, Salary) VALUES 
(1, 'adam', 25000),
(2, 'bob', 30000),
(3, 'casey', 40000);