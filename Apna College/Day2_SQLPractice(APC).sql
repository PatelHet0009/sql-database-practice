USE College;

SELECT * FROM Student;

/* Write the Query to find avg marks in each city in ASC order */
SELECT City, AVG(Marks) AS avgMarks FROM Student 
GROUP BY City ORDER BY City;

--2. Question
SELECT Grade, COUNT(Name) FROM Student GROUP BY Grade;

