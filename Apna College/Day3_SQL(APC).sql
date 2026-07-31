USE XYZ;

SELECT * FROM Employee;

/* INSERT Query */
INSERT INTO Employee (ID, Name, Salary) VALUES
(1, 'Roy', 25000),
(2, 'Bob', 35000),
(3, 'Adam', 40000);


/* UPDATE Query */
--UPDATE table_name SET column_name = new_value WHERE condition;
UPDATE Employee SET Salary = 45000 WHERE ID = 1;
UPDATE Employee SET Name = 'Roy' WHERE ID = 2;
UPDATE Employee SET Age = 27, City = 'Jaipur' WHERE ID = 1;
UPDATE Employee SET Age = 39, City = 'Surat' WHERE ID = 2;
UPDATE Employee SET Age = 41, City = 'Mumbai' WHERE ID = 3;

/* DELETE Query */
--DELETE FROM table_name;
DELETE FROM Employee WHERE ID = 3;
DELETE FROM Employee;

/* ALTER Query */
--ALTER TABLE table_name ADD COLUMN column_name data_type constraint;
ALTER TABLE Employee ADD Age INT;
ALTER TABLE Employee ADD City VARCHAR(12);

--ALTER TABLE table_name DROP column_name;
ALTER TABLE Employee DROP COLUMN City;
ALTER TABLE Employee DROP City;

--ALTER TABLE table_name RENAME TO new_table_name;
--ALTER TABLE Employee RENAME TO EMP;
--RENAME TABLE Employee TO EMP;

/* SQL Joins */
--1. INNER JOIN
/* SELECT * FROM table_name - 1 
INNER JOIN table_name - 2
ON table - 1.column_name = table - 2.column_name;
*/

--2. LEFT JOIN
/* 
SELECT * FROM table_name - 1
LEFT JOIN table_name - 2
ON table - 1.column_name = table - 2.column_name;
*/

--3. RIGHT JOIN
/*
SELECT * FROM table_name - 1
RIGHT JOIN table_name - 2
ON table - 1.column_name = table - 2.column_name;
*/

--4. FULL JOIN (FULL OUTER JOIN)
/*
SELECT * FROM table_name - 1
LEFT JOIN table_name - 2
ON table - 1.column_name = table - 2.column_name;

UNION

SELECT * FROM table_name - 1
RIGHT JOIN table_name - 2
ON table - 1.column_name = table - 2.column_name;
*/

--5. SELF JOIN
/*
SELECT * FROM table_name AS alias
JOIN table_name AS alias
ON alias1.column_name = alias2.column_name;
*/

/* UNION */
/*
SELECT * FROM table_name - 1
UNION
SELECT * FROM table_name - 2;
*/

/* UNION ALL */
/*
SELECT * FROM table_name - 1
UNION ALL
SELECT * FROM table_name - 2;
*/


