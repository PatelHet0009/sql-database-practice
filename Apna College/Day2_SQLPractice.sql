/* Extra Practice Section */
--1. Creating a database named StudentDB
CREATE DATABASE StudentDB;

USE StudentDB;

--2. Creating a table named Students.
/*CREATE TABLE Students(
	StudentID INT PRIMARY KEY,
	Name VARCHAR(50),
	Age INT,
	City VARCHAR(15),
	Marks INT,
	Fees INT
);*/

--To view the created Students table.
SELECT * FROM Students;

--Now inserting a data into the table Students.
INSERT INTO Students VALUES 
(1, 'Het', 20, 'Ahmedabad', 85, 15000),
(2, 'Raj', 21, 'Surat', 72, 12000),
(3, 'Priya', 19, 'Vadodara', 91, 18000),
(4, 'Amit', 22, 'Ahmedadad', 65, 10000),
(5, 'Neha', 20, 'Rajkot', 88, 17000),
(6, 'Jay', 21, 'Surat', 55, 9000),
(7, 'Riya', 19, 'Ahmedabad', 95, 20000),
(8, 'Karan', 22, 'Bhavnagar', 78, 14000);

/* Display a student from the Ahmedabad */
SELECT * FROM Students WHERE City = 'Ahmedabad';

/* Display a student whose marks greater than 80 */
SELECT * FROM Students WHERE Marks > 80;

/* Display a student whose age is less than 21 */
SELECT * FROM Students WHERE Age < 21;

/* Find students whose fees increased by 2000 would exceed 17000. */
SELECT * FROM Students WHERE Fees + 2000 > 17000;

/* Find students whose marks multiplied by 2 are greater than 170. */
SELECT * FROM Students WHERE Marks * 2 > 170;

/* Find students whose fees after deducting 3000 are below 12000. */
SELECT * FROM Students WHERE Fees - 3000 < 12000;

/* Display a students whose marks are equal to 95 */
SELECT * FROM Students WHERE Marks = 95;

/* Display a students whose not from the Surat */
SELECT * FROM Students WHERE City NOT IN ('Surat');
SELECT * FROM Students WHERE City <> 'Surat';

/* Display a students from Ahmedabad and marks above 80. */
SELECT * FROM Students WHERE City = 'Ahmedabad' AND Marks > 80;

/* Display a students from Surat or Rajkot. */
SELECT * FROM Students WHERE City = 'Surat' OR City = 'Rajkot';

/* Display a students not from Ahmedabad */
SELECT * FROM Students WHERE NOT City = 'Ahmedabad';

/* Display a students whose from the Surat and Marks above 75 */
SELECT * FROM Students WHERE City = 'Surat' AND Marks > 75;

/* Display students from Ahmedabad whose marks are above 70. */
SELECT * FROM Students WHERE City = 'Ahmedabad' AND Marks > 70;

/* Display students whose fees are between 10000 and 18000. */
SELECT * FROM Students WHERE Fees BETWEEN 10000 AND 18000;

/* Display students whose city is Ahmedabad, Surat, or Rajkot. */
SELECT * FROM Students WHERE City IN ('Ahmedabad', 'Surat', 'Rajkot');

/* Display students whose names start with 'R'. */
SELECT * FROM Students WHERE Name LIKE 'R%';
SELECT * FROM Students WHERE Name LIKE '%t';
SELECT * FROM Students WHERE Name LIKE '%e%';

/* Display students whose marks are not between 60 and 80. */
SELECT * FROM Students WHERE Marks NOT BETWEEN 60 AND 80; 

/* Display students whose marks are greater than 75. */
SELECT * FROM Students WHERE Marks > 75;

/* Display students whose age is less than 20. */
SELECT * FROM Students WHERE Age < 20;

/* Display students whose fees are greater than or equal to 15000. */
SELECT * FROM Students WHERE Fees >= 15000;

/* Display students whose marks are not equal to 85. */
SELECT * FROM Students WHERE Marks != 85;

/* Display students whose age is greater than 19 and less than 22. */
SELECT * FROM Students WHERE Age > 19 AND Age < 22;

/* Display students from Ahmedabad and having marks above 80. */
SELECT * FROM Students WHERE City = 'Ahmedabad' AND Marks > 80; 

/* Display students from Surat and whose age is 21. */
SELECT * FROM Students WHERE City = 'Surat' and Age = 21;

/* Display students from Ahmedabad or Rajkot. */
SELECT * FROM Students WHERE City = 'Ahmedabad' OR City = 'Rajkot';

/* Display students whose marks are below 60 or fees below 10000. */
SELECT * FROM Students WHERE Marks < 60 OR Fees < 10000;

/* Display students who are not from Surat. */
SELECT * FROM Students WHERE NOT City = 'Surat';

/* Display students who are not from Ahmedabad and whose marks are above 70. */
SELECT * FROM Students WHERE NOT City = 'Ahmedabad' AND Marks > 70;

/* Display students from Ahmedabad, Surat, or Vadodara having marks above 75. */
SELECT * FROM Students WHERE City = 'Surat' OR City = 'Vadodara' OR Marks > 75;

/* Display students whose marks plus 10 are greater than 95. */
SELECT * FROM Students WHERE Marks + 10 > 95;

/* Display students whose fees minus 5000 are greater than 10000. */
SELECT * FROM Students WHERE Fees - 5000 > 10000;

/* Display students whose age multiplied by 2 is greater than 40. */
SELECT * FROM Students WHERE Age * 2 > 40;

/* Display students whose fees divided by 1000 is greater than 15. */
SELECT * FROM Students WHERE Fees / 1000 > 15;

/* Display students whose marks modulo (%) 2 equals 0. */
SELECT * FROM Students WHERE Marks % 2 = 0;

/* Display students whose marks multiplied by 3 are greater than 250. */
SELECT * FROM Students WHERE Marks * 3 > 250;

/* Display students whose marks are between 70 and 90. */
SELECT * FROM Students WHERE Marks BETWEEN 70 AND 90;

/* Display students whose age is between 19 and 21. */
SELECT * FROM Students WHERE Age BETWEEN 19 AND 21;

/* Display students whose fees are between 10000 and 17000. */
SELECT * FROM Students WHERE Fees BETWEEN 10000 AND 17000;

/* Display students whose marks are not between 60 and 80. */
SELECT * FROM Students WHERE Marks NOT BETWEEN 60 AND 80;

/* Display students whose age is not between 20 and 22. */
SELECT * FROM Students WHERE Age NOT BETWEEN 20 AND 22;

/* Display students from Ahmedabad, Surat, and Rajkot. */
SELECT * FROM Students WHERE City IN ('Ahmedabad', 'Surat', 'Rajkot');

/* Display students whose age is 19, 20, or 22. */
SELECT * FROM Students WHERE Age IN (19, 20, 22);

/* Display students whose marks are 65, 78, or 95. */
SELECT * FROM Students WHERE Marks IN (65, 78, 95);

/* Display students whose fees are 9000, 12000, or 15000. */
SELECT * FROM Students WHERE Fees IN (9000, 12000, 15000);

/* Display students whose names start with 'A'. */
SELECT * FROM Students WHERE Name LIKE 'A%';

/* Display students whose names start with 'R'. */
SELECT * FROM Students WHERE Name LIKE 'R%';

/* Display students whose names end with 'a'. */
SELECT * FROM Students WHERE Name LIKE '%a';

/* Display students whose names contain 'i'. */
SELECT * FROM Students WHERE Name LIKE '%i%';

/* Display students whose city starts with 'A'. */
SELECT * FROM Students WHERE City LIKE 'A%';

/* Display students whose city ends with 't'. */
SELECT * FROM Students WHERE City LIKE '%t';

/* Display students whose names have exactly 4 characters. */
--SELECT * FROM Students WHERE Name LIKE '%__';

/* Display students whose age is odd using Bitwise AND. */
SELECT * FROM Students WHERE Age % 2 = 1;

/* Display students whose fees OR 1 is greater than 15000. */ 
SELECT * FROM Students WHERE Fees = 1 OR Fees > 15000; 

/* Display students from Ahmedabad whose marks are above 80 and fees are above 14000. */
SELECT * FROM Students WHERE City = 'Ahmedabad' AND Marks > 80 AND Fees > 14000;

/* Display students from Surat or Rajkot whose age is above 20. */
SELECT * FROM Students WHERE City = 'Surat' OR City = 'Rajkot' AND Age > 20;

/* Display students whose marks are between 70 and 90 and city is Ahmedabad. */
SELECT * FROM Students WHERE Marks BETWEEN 70 AND 90 AND City = 'Ahmedabad';

/* Display students whose name starts with 'R' and marks above 80. */
SELECT * FROM Students WHERE Name LIKE 'R%' AND Marks > 80;

/* Display students whose fees are greater than 10000 but less than 18000. */
SELECT * FROM Students WHERE Fees > 10000 AND Fees < 18000;

/* Display students whose age is 19 or marks above 90. */ 
SELECT * FROM Students WHERE Age = 19 OR Marks > 90;

/* Display students who are not from Ahmedabad and whose marks are below 80. */
SELECT * FROM Students WHERE NOT City = 'Ahmedabad' AND Marks < 80;

/* Display students whose city is Ahmedabad, Surat, or Rajkot and marks are above 70. */
SELECT * FROM Students WHERE City IN ('Ahmedabad', 'Surat', 'Rajkot') AND Marks > 70;

/* Display students whose marks plus 5 are greater than 90 and age is less than 21. */
SELECT * FROM Students WHERE Marks + 5 > 90 AND Age < 21;

/* Display students whose marks are greater than 70. */
SELECT * FROM Students WHERE Marks > 70;

/* Display students whose fees are less than 15000. */
SELECT * FROM Students WHERE Fees < 15000;

/* Display students whose age is equal to 20. */
SELECT * FROM Students WHERE Age = 20;

/* Display students whose city is Ahmedabad. */
SELECT * FROM Students WHERE City = 'Ahmedabad';

/* Display students whose marks are not equal to 91. */
SELECT * FROM Students WHERE Marks != 91;

/* Display students whose fees are greater than or equal to 12000. */
SELECT * FROM Students WHERE Fees >= 12000;

/* Display students whose age is less than or equal to 21. */
SELECT * FROM Students WHERE Age <= 21;

/* Display students whose city is not Rajkot. */
SELECT * FROM Students WHERE NOT City = 'Rajkot';

/* Display students whose marks are greater than 60 but less than 90. */
SELECT * FROM Students WHERE Marks > 60 AND Marks < 90;

/* Display students whose fees are not equal to 10000. */
SELECT * FROM Students WHERE Fees <> 10000;

/* Display students from Ahmedabad whose age is 20. */
SELECT * FROM Students WHERE City = 'Ahmedabad' AND Age = 20;

/* Display students from Surat having marks above 70. */
SELECT * FROM Students WHERE City = 'Surat' AND Marks > 70;

/* Display students from Ahmedabad or Vadodara. */
SELECT * FROM Students WHERE City = 'Ahmedabad' OR City = 'Vadodara';

/* Display students whose marks are above 90 or fees above 18000. */
SELECT * FROM Students WHERE Marks > 90 OR Fees > 18000;

/* Display students who are not from Bhavnagar. */
SELECT * FROM Students WHERE NOT City = 'Bhavnagar';

/* Display students whose age is 20 and marks are greater than 80. */
SELECT * FROM Students WHERE Age = 20 AND Marks > 80;

/* Display students from Rajkot or Surat whose fees are above 10000. */
SELECT * FROM Students WHERE City = 'Rajkot' OR City = 'Surat' AND Fees > 10000;

/* Display students whose city is Ahmedabad and fees are below 18000. */
SELECT * FROM Students WHERE City = 'Ahmedabad' AND Fees < 18000;

/* Display students whose marks are above 80 and age is below 21. */
SELECT * FROM Students WHERE Marks > 80 AND Age < 21;

/* Display students who are not from Ahmedabad and whose marks are above 75. */
SELECT * FROM Students WHERE NOT City = 'Ahmedabad' AND Marks > 75;

/* Display students whose marks + 20 are greater than 100. */
SELECT * FROM Students WHERE Marks + 20 > 100;

/* Display students whose fees - 2000 are greater than 10000. */
SELECT * FROM Students WHERE Fees - 2000 > 10000;

/* Display students whose age × 3 is greater than 60. */
SELECT * FROM Students WHERE Age * 3 > 60;

/* Display students whose fees ÷ 1000 is greater than 12. */
SELECT * FROM Students WHERE Fees / 1000 > 12;

/* Display students whose marks % 2 = 1. */
SELECT * FROM Students WHERE Marks % 2 = 1;

/* Display students whose fees + 5000 are greater than 20000. */
SELECT * FROM Students WHERE Fees + 5000 > 20000;

/* Display students whose marks × 2 are greater than 180. */
SELECT * FROM Students WHERE Marks * 2 > 180;

/* Display students whose age + 5 is less than 27. */
SELECT * FROM Students WHERE Age + 5 < 27;

/* Display students whose fees % 2000 = 0. */
SELECT * FROM Students WHERE Fees % 2000 = 0;

/* Display students whose marks - 10 are greater than 70. */
SELECT * FROM Students WHERE Marks - 10 > 70;

/* Display students whose names start with 'H'. */
SELECT * FROM Students WHERE Name LIKE 'H%';

/* Display students whose names start with 'P'. */
SELECT * FROM Students WHERE Name LIKE 'P%';

/* Display students whose names end with 't'. */
SELECT * FROM Students WHERE Name LIKE '%t';

/* Display students whose names contain the letter 'y'. */
SELECT * FROM Students WHERE Name LIKE '%y%';

/* Display students whose city starts with 'S'. */
SELECT * FROM Students WHERE City LIKE 'S%';

/* Display students whose city ends with 'd'. */
SELECT * FROM Students WHERE City LIKE '%d';

/* Display students whose city contains 'a'. */
SELECT * FROM Students WHERE City LIKE '%a%'

/* Display students whose names have exactly 5 letters. */
SELECT * FROM Students WHERE Name LIKE '%_____';

/* Display students whose names have exactly 4 letters. */
SELECT * FROM Students WHERE Name LIKE '%____';

/* Display students whose names have 'a' as the second character. */
SELECT * FROM Students WHERE Name LIKE '_a%';

/* Display students whose marks are between 75 and 95. */
SELECT * FROM Students WHERE Marks BETWEEN 75 AND 95;

/* Display students whose fees are between 12000 and 18000. */
SELECT * FROM Students WHERE Fees BETWEEN 12000 AND 18000;

/* Display students whose age is between 19 and 20. */
SELECT * FROM Students WHERE Age BETWEEN 19 AND 20;

/* Display students whose city is Ahmedabad, Surat, or Vadodara. */
SELECT * FROM Students WHERE City IN ('Ahmedabad', 'Surat', 'Vadodara');

/* Display students whose marks are 65, 78, or 95. */
SELECT * FROM Students WHERE Marks IN (65, 78, 95);

/* Display students whose age is 20 or 22. */
SELECT * FROM Students WHERE Age BETWEEN 20 AND 22;

/* Display students whose fees are 10000, 15000, or 17000. */
SELECT * FROM Students WHERE Fees IN (10000, 15000, 17000);

/* Display students whose marks are not between 70 and 90. */
SELECT * FROM Students WHERE Marks NOT BETWEEN 70 AND 90;

/* Display students whose age is not between 20 and 22. */
SELECT * FROM Students WHERE Marks NOT BETWEEN 20 AND 22;

/* Display students whose city is not Ahmedabad, Surat, or Rajkot. */
SELECT * FROM Students WHERE City NOT IN ('Ahmedabad', 'Surat', 'Rajkot');

/* Display all students in ascending order of marks. */
SELECT * FROM Students ORDER BY Marks;

/* Display all students in descending order of marks. */
SELECT * FROM Students ORDER BY Marks DESC;

/* Display all students in ascending order of fees. */
SELECT * FROM Students ORDER BY Fees;

/* Display all students in descending order of age. */
SELECT * FROM Students ORDER BY Age DESC;

/* Display the top 5 students based on marks. */
SELECT TOP 5* FROM Students ORDER BY Marks DESC; 

/* Display the top 3 students based on fees. */
SELECT TOP 3* FROM Students ORDER BY Fees DESC;

/* Display the top 4 youngest students. */
SELECT TOP 4* FROM Students ORDER BY Age ASC;

/* Display the top 2 students from Ahmedabad based on marks. */
SELECT TOP 2* FROM Students WHERE City = 'Ahmedabad' ORDER BY Marks DESC;

/* Display all students sorted by city in alphabetical order. */
SELECT * FROM Students ORDER BY City ASC;

/* Display students sorted first by city and then by marks in descending order. */
SELECT * FROM Students ORDER BY City ASC, Marks DESC; 