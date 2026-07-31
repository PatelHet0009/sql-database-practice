USE StudentDB;

SELECT * FROM Students;

INSERT INTO Students (StudentID, Name, Age, City, Marks, Fees, Department)
VALUES
(1, 'Het', 20, 'Ahmedabad', 85, 15000, 'Computer'),
(2, 'Raj', 21, 'Surat', 72, 12000, 'Mechanical'),
(3, 'Priya', 19, 'Vadodara', 91, 18000, 'Computer'),
(4, 'Amit', 22, 'Ahmedabad', 65, 10000, 'Civil'),
(5, 'Neha', 20, 'Rajkot', 88, 17000, 'Electrical'),
(6, 'Jay', 21, 'Surat', 55, 9000, 'Mechanical'),
(7, 'Riya', 19, 'Ahmedabad', 95, 20000, 'Computer'),
(8, 'Karan', 22, 'Bhavnagar', 78, 14000, 'Civil'),
(9, 'Rahul', 20, 'Surat', 82, 16000, 'Electrical'),
(10, 'Pooja', 21, 'Vadodara', 69, 11000, 'Computer'),
(11, 'Ankit', 20, 'Rajkot', 74, 13000, 'Mechanical'),
(12, 'Sneha', 19, 'Ahmedabad', 98, 22000, 'Computer'),
(13, 'Vikas', 22, 'Bhavnagar', 61, 9500, 'Civil'),
(14, 'Nisha', 20, 'Surat', 84, 15500, 'Electrical'),
(15, 'Yash', 21, 'Ahmedabad', 79, 14500, 'Computer');


/* Update the marks of student Het to 90. */
UPDATE Students SET Marks = 90 WHERE Name = 'Het';

/* Increase the fees of all students by 2000. */
UPDATE Students SET Fees += 2000;

/* Update the city of Raj from Surat to Ahmedabad. */
UPDATE Students SET City = 'Ahmedabad' WHERE Name = 'Raj';

/* Increase the marks by 5 for students whose marks are below 70. */
UPDATE Students SET Marks += 5 WHERE Marks < 70;

/* Change the age of student whose StudentID = 3 to 20. */
UPDATE Students SET Age = 20 WHERE StudentID = 3;

/* Reduce the fees by 1000 for students from Ahmedabad. */
UPDATE Students SET Fees -= 1000 WHERE City = 'Ahmedabad';

/* Update the city to Vadodara for students whose age is 21. */
UPDATE Students SET City = 'Vadodara' WHERE Age = 21;

/* Set the marks to 100 for students whose marks are above 90. */
UPDATE Students SET Marks = 100 WHERE Marks > 90;

/* Increase the age of every student by 1. */
UPDATE Students SET Age += 1;

/* Update the fees to 15000 for students from Rajkot. */
UPDATE Students SET Fees = 15000 WHERE City = 'Rajkot';

/* Delete the student whose StudentID = 6. */
DELETE FROM Students WHERE StudentID = 6;

/* Delete all students from Surat. */
DELETE FROM Students WHERE City = 'Surat';

/* Delete students whose marks are below 60. */
DELETE FROM Students WHERE Marks < 60;

/* Delete students whose fees are less than 10000. */
DELETE FROM Students WHERE Fees < 10000;

/* Delete students whose age is 22. */
DELETE FROM Students WHERE Age = 22;

/* Delete students whose city is Bhavnagar. */
DELETE FROM Students WHERE City = 'Bhavnagar';

/* Delete students whose marks are between 60 and 70. */
DELETE FROM Students WHERE Marks BETWEEN 60 AND 70;

/* Delete students whose names start with 'A'. */
DELETE FROM Students WHERE Name LIKE 'A%';

/* Delete students whose fees are greater than 18000. */
DELETE FROM Students WHERE Fees > 18000;

/* Delete all records from the Students table. */
DELETE FROM Students;

/* Add a column Email. */
--ALTER TABLE Students ADD Email VARCHAR(20) UNIQUE;
SELECT name 
FROM sys.key_constraints 
WHERE parent_object_id = OBJECT_ID('Students') 
AND type = 'UQ';


/* Add a column PhoneNumber. */
ALTER TABLE Students ADD PhoneNumber INT UNIQUE;

/* Add a column Department. */
ALTER TABLE Students ADD Department VARCHAR(10);

/* Drop the Email column. */
ALTER TABLE Students 
DROP CONSTRAINT UQ__Students__A9D10534AF86D68B;
ALTER TABLE Students DROP COLUMN Email;

/* Drop the PhoneNumber column. */
ALTER TABLE Students
DROP CONSTRAINT UQ__Students__85FB4E38FF9A1907;
ALTER TABLE Students DROP COLUMN PhoneNumber;

/* Change the data type of Name to VARCHAR(100). */
ALTER TABLE Students ALTER COLUMN Name VARCHAR(100);
--ALTER TABLE Students MODIFY Name VARCHAR(100);

/* Change the data type of City to VARCHAR(80). */
ALTER TABLE Students ALTER COLUMN City VARCHAR(80);

/* Add a column AdmissionDate of type DATE. */
ALTER TABLE Students ADD AdmissionDate DATE;

/* Drop the AdmissionDate column. */
ALTER TABLE Students DROP COLUMN AdmissionDate;

/* Drop the Department column */
ALTER TABLE Students DROP COLUMN Department;

/* Display students whose marks are greater than the average marks. */
SELECT * FROM Students WHERE Marks > 
(SELECT AVG(Marks) FROM Students);

/* Display students having the highest marks. */
SELECT * FROM Students WHERE Marks =
(SELECT MAX(Marks) FROM Students);

/* Display students having the lowest fees. */
SELECT * FROM Students WHERE Fees = 
(SELECT MIN(Fees) FROM Students);

/* Display students whose age is equal to the maximum age. */
SELECT * FROM Students WHERE Age = 
(SELECT MAX(Age) FROM Students);

/* Display students whose fees are greater than the average fees. */
SELECT * FROM Students WHERE Fees > 
(SELECT AVG(Fees) FROM Students);

/* Display students whose marks are less than the highest marks. */
SELECT * FROM Students WHERE Marks < 
(SELECT MAX(Marks) FROM Students);

/* Display students whose marks are greater than the minimum marks. */
SELECT * FROM Students WHERE Marks > 
(SELECT MIN(Marks) FROM Students);

/* Display students whose city is the same as student Het. */
SELECT * FROM Students WHERE City = 
(SELECT City FROM Students WHERE Name = 'Het');

/* Display students whose fees are equal to the minimum fees. */
SELECT * FROM Students WHERE Fees = 
(SELECT MIN(Fees) FROM Students);

/* Display students having the second-highest marks. */
SELECT * 
FROM Students 
WHERE Marks = (
    SELECT MAX(Marks) 
    FROM Students 
    WHERE Marks < (SELECT MAX(Marks) FROM Students)
);

/* Creating a table Department */
CREATE TABLE Department(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(15),
    HOD VARCHAR(10)
);

SELECT * FROM Department;

SELECT * FROM Students;

/* Inseting a data into the Department table */
INSERT INTO Department (DepartmentID, DepartmentName, HOD)
VALUES
(101, 'Computer', 'Mr. Shah'),
(102, 'Mechanical', 'Mr. Patel'),
(103, 'Civil', 'Mr. Mehta'),
(104, 'Electrical', 'Mr. Joshi');

/* Add DepartmentID to the Students table. */
ALTER TABLE Students ADD DepartmentID INT;

UPDATE Students SET DepartmentID = 101 WHERE Department = 'Computer';
UPDATE Students SET DepartmentID = 102 WHERE Department = 'Mechanical';
UPDATE Students SET DepartmentID = 103 WHERE Department = 'Civil';
UPDATE Students SET DepartmentID = 104 WHERE Department = 'Electrical';

/* Display student names along with their department names. */
SELECT * FROM Students 
INNER JOIN Department
ON Students.DepartmentID = Department.DepartmentID; 

/* Display student name, city, and department name. */
SELECT Name, City, Department.DepartmentName FROM Students 
INNER JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display student name and HOD name. */
SELECT Name, Department.HOD FROM Students 
INNER JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display students whose department is Computer. */
SELECT * FROM Students 
INNER JOIN Department
ON Students.DepartmentID = Department.DepartmentID 
WHERE DepartmentName = 'Computer';

/* Display student name, department name, and marks. */
SELECT Name, Department.DepartmentName, Marks FROM Students 
INNER JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display students from Ahmedabad along with their department names. */
SELECT * FROM Students 
INNER JOIN Department
ON Students.DepartmentID = Department.DepartmentID
WHERE City = 'Ahmedabad';

/* Display students whose marks are above 80 along with department names. */
SELECT * FROM Students
INNER JOIN Department
ON Students.DepartmentID = Department.DepartmentID
WHERE Marks > 80;

/* Display all students and their HOD names. */
SELECT Name, Department.HOD FROM Students
INNER JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display student name, department, and fees. */
SELECT Name, Department.DepartmentName, Fees FROM Students
INNER JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display students whose department is Mechanical. */
SELECT * FROM Students 
INNER JOIN Department
ON Students.DepartmentID = Department.DepartmentID
WHERE DepartmentName = 'Mechanical';

/* Display all students and their department names. */
SELECT Name, Department.DepartmentName FROM Students
LEFT JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display all students even if they are not assigned to any department. */
SELECT * FROM Students
LEFT JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display student names with HOD names. */
SELECT Name, Department.HOD FROM Students
LEFT JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display all students with department details. */
SELECT Name, Department.DepartmentID, Department.DepartmentName, Department.HOD FROM Students
LEFT JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display students whose department information is missing. */
SELECT * FROM Students
LEFT JOIN Department
ON Students.DepartmentID = Department.DepartmentID
WHERE Department.DepartmentID IS NULL; 

/* Display all students and department names sorted by department. */
SELECT Name, Department.DepartmentName FROM Students
LEFT JOIN Department
ON Students.DepartmentID = Department.DepartmentID
ORDER BY Department.DepartmentName;

/* Display student names with department names where fees are above 15000. */
SELECT Name, Department.DepartmentName FROM Students
LEFT JOIN Department 
ON Students.DepartmentID = Department.DepartmentID
WHERE Fees > 15000;

/* Display all students from Ahmedabad with department names. */
SELECT Name, Department.DepartmentName, City FROM Students
LEFT JOIN Department
ON Students.DepartmentID = Department.DepartmentID
WHERE City = 'Ahmedabad';

/* Display students and departments in ascending order of marks. */
SELECT Name, Department.DepartmentName, Marks FROM Students
LEFT JOIN Department
ON Students.DepartmentID = Department.DepartmentID
ORDER BY Marks ASC;

/* Display all students and their HODs. */
SELECT Name, Department.HOD FROM Students
LEFT JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display all departments and their students. */
SELECT DepartmentName, Students.Name FROM Department
RIGHT JOIN Students
ON Department.DepartmentID = Students.DepartmentID;

/* Display departments even if no student belongs to them. */
SELECT Department.DepartmentName, Students.Name FROM Students
RIGHT JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display department names with student names. */
SELECT Department.DepartmentName, Students.Name FROM Students
RIGHT JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display all HOD names with student names. */
SELECT Department.HOD, Students.Name FROM Students
RIGHT JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display departments having no students. */
SELECT Department.DepartmentName, Students.Name FROM Students 
RIGHT JOIN Department
ON Students.DepartmentID = Department.DepartmentID
WHERE Students.Name IS NULL;

/* Display all departments sorted alphabetically. */
SELECT DISTINCT Department.DepartmentName FROM Students
RIGHT JOIN Department
ON Students.DepartmentID = Department.DepartmentID
ORDER BY Department.DepartmentName ASC;

/* Display department names with students whose marks are above 80. */
SELECT Department.DepartmentName, Students.Name, Marks FROM Students 
RIGHT JOIN Department
ON Students.DepartmentID = Department.DepartmentID
WHERE Marks > 80;

/* Display departments with students from Ahmedabad. */
SELECT Department.DepartmentName, Students.Name, Students.City FROM Students
RIGHT JOIN Department
ON Students.DepartmentID = Department.DepartmentID
WHERE City = 'Ahmedabad';

/* Display all departments and student fees. */
SELECT Department.DepartmentName, Students.Name, Students.Fees FROM Students
RIGHT JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display department names with student ages. */
SELECT Department.DepartmentName, Students.Age, Students.Name FROM Students
RIGHT JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display all students and all departments. */
SELECT Students.Name, Department.DepartmentName FROM Students
FULL JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display all students even if no department exists. */
SELECT Students.Name, Department.DepartmentName FROM Students
FULL JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display all departments even if no student exists. */
SELECT Department.DepartmentName, Students.Name FROM Students
FULL JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display student names and department names. */
SELECT Students.Name, Department.DepartmentName FROM Students
FULL JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display all HOD names with student names. */
SELECT Department.HOD, Students.Name FROM Students
FULL JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display students whose departments are missing. */
SELECT * FROM Students
FULL JOIN Department
ON Students.DepartmentID = Department.DepartmentID
WHERE Students.DepartmentID IS NULL;

/* Display departments without students. */
SELECT DISTINCT Department.DepartmentName FROM Students
FULL JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display all student names, cities, and department names. */
SELECT Students.Name, Students.City, Department.DepartmentName FROM Students
FULL JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display all student names with HOD names. */
SELECT Students.Name, Department.HOD FROM Students
FULL JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display all student names and department names sorted alphabetically. */
SELECT Students.Name, Department.DepartmentName FROM Students
FULL JOIN Department
ON Students.DepartmentID = Department.DepartmentID
ORDER BY Students.Name, Department.DepartmentName;

/* Creating a Employee table */
CREATE TABLE Employee(
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(15),
    ManagerID INT
);

SELECT * FROM Employee;

/* Inserting a data into the Employee table */
INSERT INTO Employee (EmpID, EmpName, ManagerID) VALUES
(2, 'Raj', 1),
(3, 'Neha', 1),
(4, 'Jay', 2),
(5, 'Priya', 2),
(6, 'Riya', 3);

/* Display employee names along with their manager names. */
SELECT E1.EmpName AS EmployeeName, E2.EmpName AS ManagerName FROM Employee AS E1
JOIN Employee AS E2
ON E1.ManagerID = E2.EmpID;

/* Display employees managed by Amit. */
SELECT E1.EmpName, E2.EmpName FROM Employee AS E1
JOIN Employee AS E2
ON E1.EmpID = E2.ManagerID
WHERE E1.EmpName = 'Amit';

/* Display employees who do not have a manager. */
SELECT E1.EmpName, E1.ManagerID FROM Employee AS E1
JOIN Employee AS E2
ON E1.EmpID = E2.EmpID
WHERE E2.ManagerID IS NULL;

/* Display employee-manager pairs. */
SELECT E1.EmpName, E2.EmpName AS Manager_Name FROM Employee AS E1
JOIN Employee AS E2
ON E1.EmpID = E2.ManagerID; 

/* Display manager names with the number of employees they manage. */
/* SELECT * FROM Employee AS E1
JOIN Employee AS E2
ON E1.EmpID = E2.ManagerID
HAVING COUNT(E1.EmpID); */

/* Increase the fees of students whose marks are greater than 85 by 10%. */
UPDATE Students SET Fees = Fees * 1.10 WHERE Marks > 85;

/* Delete students whose age is greater than 21. */
DELETE FROM Students WHERE Age > 21;

/* Add a column Gender and update it for all students. */
ALTER TABLE Students ADD
Gender VARCHAR(10);

SELECT * FROM Students;

UPDATE Students SET Gender = 'Male' WHERE StudentID = 15;

/* Display the top 5 students with their department names. */
SELECT TOP 5 * FROM Students;

/* Display students who don't belong to any department. */
SELECT * FROM Students 
LEFT JOIN Department
ON Students.DepartmentID = Department.DepartmentID
WHERE Students.DepartmentID IS NULL;

/* Display departments without any students. */
SELECT Department.DepartmentID, Department.DepartmentName FROM Students
INNER JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* With DISTINCT Keyword */
SELECT DISTINCT Department.DepartmentID, Department.DepartmentName FROM Students
INNER JOIN Department
ON Students.DepartmentID = Department.DepartmentID;

/* Display every employee and their manager. */
SELECT E1.EmpName AS Manager_Name, E2.EmpName FROM Employee AS E1
JOIN Employee AS E2
ON E1.EmpID = E2.ManagerID;

/* Display students from Ahmedabad whose department is Computer. */
SELECT Students.Name, Students.City, Department.DepartmentName FROM Students
INNER JOIN Department
ON Students.DepartmentID = Department.DepartmentID
WHERE Students.City = 'Ahmedabad' AND Department.DepartmentName = 'Computer';

/* Update the department of all Ahmedabad students to Computer. */
UPDATE Students SET DepartmentID = 101 WHERE City = 'Ahmedabad';

/* Delete all students whose department is Mechanical. */
DELETE FROM Students WHERE DepartmentID = (
SELECT * FROM Students 
INNER JOIN Department
ON Students.DepartmentID = Department.DepartmentID
WHERE Department.DepartmentName = 'Mechanical'
);

DELETE FROM Students WHERE DepartmentID = 102;