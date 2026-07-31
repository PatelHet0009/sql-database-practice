/* Creating a Database */
CREATE DATABASE BookStoreDB;

/* Using the Database BookStoreDB */
USE BookStoreDB;

/* Creating a table (Customers) */
/* CREATE TABLE Customers (
	CustomerID INT PRIMARY KEY,
	CustomerName VARCHAR(15),
	Age INT,
	City VARCHAR(25),
	Membership VARCHAR(20)
); */

/* Inserting a data into the Customers table */
INSERT INTO Customers (CustomerID, CustomerName, Age, City, Membership) VALUES 
(101, 'Het', 20, 'Ahmedabad', 'Gold'),
(102, 'Raj', 22, 'Surat', 'Silver'),
(103, 'Priya', 21, 'Vadodara', 'Gold'),
(104, 'Amit', 23, 'Rajkot', 'Bronze'),
(105, 'Neha', 20, 'Ahmedabad', 'Silver'),
(106, 'Jay', 24, 'Surat', 'Gold');

SELECT * FROM Customers;

/* Creating a table (Orders) */
/* CREATE TABLE Orders (
	OrderID INT PRIMARY KEY,
	CustomerID INT,
	BookName VARCHAR(40),
	Price INT,
	Quantity INT 
); */

/* Inserting a data into the table Orders table */
INSERT INTO Orders (OrderID, CustomerID, BookName, Price, Quantity) VALUES 
(201, 101, 'Python', 650, 2),
(202, 102, 'SQL', 500, 1),
(203, 103, 'Java', 700, 3),
(204, 105, 'HTML', 400, 2),
(205, 107, 'C++', 600, 1);

SELECT * FROM Orders;

/* Creating a table (Employees) */
/* CREATE TABLE Employees (
	EmpID INT PRIMARY KEY,
	EmpName VARCHAR(20),
	ManagerID INT
); */

/* Inserting a data into the Employees table */
INSERT INTO Employees (EmpID, EmpName, ManagerID) VALUES
(1, 'Rahul', NULL),
(2, 'Karan', 1),
(3, 'Sneha', 1),
(4, 'Pooja', 2),
(5, 'Vivek', 2),
(6, 'Yash', 3);

/* Display all customer details. */
SELECT * FROM Customers;

/* Display only CustomerName and City. */
SELECT CustomerName, City FROM Customers;

/* Display customers from Ahmedabad. */
SELECT * FROM Customers WHERE City = 'Ahmedabad';

/* Display customers whose age is greater than 21. */
SELECT * FROM Customers WHERE Age > 21;

/* Display Gold members. */
SELECT * FROM Customers WHERE Membership = 'Gold';

/* Display customers who are not from Surat. */
SELECT * FROM Customers WHERE NOT City = 'Surat'; 

/* Display customers whose age is between 20 and 22. */
SELECT * FROM Customers WHERE Age BETWEEN 20 AND 22;

/* Display customers from Ahmedabad or Rajkot. */
SELECT * FROM Customers WHERE City = 'Ahmedabad' OR City = 'Rajkot';

/* Display customers whose names start with 'P'. */
SELECT * FROM Customers WHERE CustomerName LIKE 'P%';

/* Display customers whose city ends with 't'. */
SELECT * FROM Customers WHERE City LIKE '%t';

/* Display customers whose age is even using Bitwise AND. */
SELECT * FROM Customers WHERE (Age & 1) = 0;

/* Display customers whose age is odd using Bitwise AND. */
SELECT * FROM Customers WHERE (Age & 1) = 1;

/* Display customers whose age + 5 is greater than 27. */
SELECT * FROM Customers WHERE Age + 5 > 27;

/* Display customers whose age × 2 is greater than 42. */
SELECT * FROM Customers WHERE Age * 2 > 42;

/* Display customers sorted by CustomerName. */
SELECT * FROM Customers ORDER BY CustomerName;

/* Display customers sorted by age (Ascending). */
SELECT * FROM Customers ORDER BY Age;

/* Display customers sorted by age (Descending). */
SELECT * FROM Customers ORDER BY Age DESC;

/* Display customers sorted by city and then age. */
SELECT * FROM Customers ORDER BY City ASC, Age ASC;

/* Display customers sorted by city and age in descending order. */
SELECT * FROM Customers ORDER BY City DESC, Age DESC;

/* Update Het's membership to Platinum. */
UPDATE Customers SET Membership = 'Platinum' WHERE CustomerName = 'Het';

/* Increase everyone's age by 1 year. */
UPDATE Customers SET Age = Age + 1;

/* Updating all customer age */
UPDATE Customers SET Age = 24 WHERE CustomerName = 'Jay';

/* Update Raj's city to Ahmedabad. */
UPDATE Customers SET City = 'Ahmedabad' WHERE CustomerName = 'Raj';

/* Change Neha's membership to Gold. */
UPDATE Customers SET Membership = 'Gold' WHERE CustomerName = 'Neha';

/* Increase age by 2 for Gold members. */
UPDATE Customers SET Age = Age + 2 WHERE Membership = 'Gold';

/* Update the city of customers aged 24 to Gandhinagar. */
UPDATE Customers SET City = 'Gandhinagar' WHERE Age = 24;

/* Change Amit's name to Amit Kumar. */
UPDATE Customers SET CustomerName = 'Amit Kumar' WHERE CustomerName = 'Amit';

/* Update the membership of all Ahmedabad customers to Platinum. */
UPDATE Customers SET Membership = 'Platinum' WHERE City = 'Ahmedabad';

/* Increase age by 1 for Silver members. */
UPDATE Customers SET Age = Age + 1 WHERE Membership = 'Silver';

/* Update Rajkot customers to Gold membership. */
UPDATE Customers SET Membership = 'Gold' WHERE City = 'Rajkot';

/* Delete the customer whose CustomerID is 106. */
DELETE FROM Customers WHERE CustomerID = 106;

/* Delete customers from Surat. */
DELETE FROM Customers WHERE City = 'Surat';

/* Delete Bronze members. */
DELETE FROM Customers WHERE Membership = 'Bronze';

/* Delete customers whose age is greater than 23. */
DELETE FROM Customers WHERE Age > 23;

/* Delete customers whose names start with 'A'. */
DELETE FROM Customers WHERE CustomerName LIKE 'A%';

/* Delete customers from Ahmedabad having Gold membership. */
DELETE FROM Customers WHERE City = 'Ahmedabad' AND Membership = 'Gold';

/* Delete customers whose age is below 21. */
DELETE FROM Customers WHERE Age < 21;

/* Delete Silver members. */
DELETE FROM Customers WHERE Membership = 'Silver';

/* Delete customers from Vadodara. */
DELETE FROM Customers WHERE City = 'Vadodara';

/* Delete all records from the Customers table. */
DELETE FROM Customers;

/* Viewing data of the tables */
SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Employees;

/* Display all customers with their ordered books. */
SELECT Customers.CustomerName, Orders.BookName FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/* Display CustomerName and BookName. */
SELECT Customers.CustomerName, Orders.BookName FROM Orders 
LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

/* Display all customers even if they have not placed any orders. */
SELECT Customers.CustomerName, Orders.BookName FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/* Display customers with book prices. */
SELECT Customers.CustomerName, Orders.BookName, Orders.Price FROM Customers 
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/* Display customers from Ahmedabad with their ordered books. */
SELECT Customers.CustomerName, Orders.BookName, Customers.City FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE City = 'Ahmedabad';

/* Display customers who have not placed any orders. */
SELECT Customers.CustomerName FROM Customers 
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.CustomerID IS NULL;

/* Display CustomerName, BookName, and Quantity. */
SELECT Customers.CustomerName, Orders.BookName, Orders.Quantity FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/* Display Gold members with their books. */
SELECT Customers.CustomerName, Customers.Membership, Orders.BookName FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Membership = 'Gold';

/* Display all customers sorted by BookName. */
SELECT Orders.BookName FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY BookName;

/* Display customers with books costing more than 600. */
SELECT Customers.CustomerName, Orders.BookName, Orders.Price FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.Price > 600;

/* Display all orders with customer names. */
SELECT Customers.CustomerName, Orders.OrderID, Orders.BookName FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/* Display all orders even if the customer does not exist. */
SELECT Orders.OrderID, Orders.BookName, Customers.CustomerName FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/* Display BookName and CustomerName. */
SELECT Orders.BookName, Customers.CustomerName FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/* Display orders costing more than 600 with customer names. */
SELECT Orders.OrderID, Orders.Price, Orders.BookName, Customers.CustomerName FROM Customers 
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.Price > 600;

/* Display orders placed by Ahmedabad customers. */
SELECT Orders.OrderID, Orders.BookName, Customers.CustomerName, Customers.City FROM Customers 
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Customers.City = 'Ahmedabad';

/* Display orders whose customer information is missing. */
SELECT Orders.OrderID, Orders.BookName, Customers.CustomerName FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Customers.CustomerID IS NULL;

/* Display all books with customer names. */
SELECT Orders.BookName, Customers.CustomerName FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/* Display all orders sorted by price. */
SELECT Orders.BookName, Orders.Price FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Orders.Price;

/* Display CustomerName, BookName, and Quantity. */
SELECT Customers.CustomerName, Orders.BookName, Orders.Quantity FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/* Display all orders with customer cities. */
SELECT Orders.OrderID, Orders.BookName, Customers.City FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/* Display all customers and all orders. */
SELECT * FROM Customers AS C1
LEFT JOIN Orders AS O1 ON C1.CustomerID = O1.CustomerID
UNION
SELECT * FROM Customers AS C2
RIGHT JOIN Orders AS O2 ON C2.CustomerID = O2.CustomerID;

/* Display customers without orders. */
SELECT Customers.CustomerName FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID IS NULL;

/* Display orders without customers. */
SELECT Orders.OrderID, Orders.BookName FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID; 

/* Display CustomerName and BookName. */
SELECT Customers.CustomerName, Orders.BookName FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/* Display all customers and order prices. */
SELECT Customers.CustomerName, Orders.Price FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/* Display all books and customer memberships. */
SELECT Orders.BookName, Customers.Membership FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/* Display customer names with quantities. */
SELECT Customers.CustomerName, Orders.Quantity FROM Customers 
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID; 

/* Display all customer cities and ordered books. */
SELECT Customers.City, Orders.BookName, Customers.CustomerName FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/* Display all customers sorted by BookName. */
SELECT Customers.CustomerName, Orders.BookName FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Orders.BookName;

/* Display customers and orders where the order price is greater than 500. */
SELECT Customers.CustomerName, Orders.OrderID, Orders.BookName, Orders.Price FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.Price > 500;

/* Display employee names with their manager names. */
SELECT E1.EmpName AS ManagerName, E2.EmpName FROM Employees AS E1
JOIN Employees AS E2 ON E1.EmpID = E2.ManagerID;

 