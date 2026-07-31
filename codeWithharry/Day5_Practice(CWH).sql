USE StudentDB;

SELECT * FROM Students;

/* Store Procedure */
GO
CREATE PROCEDURE studentData
AS
BEGIN
	SELECT * FROM Students;
END;
GO

/* To call the stored procedure */
--CALL studentData;
EXEC studentData;

/* Way-2 To call the stored procedure */
/* If it is the only statement */
--studentData;

/* Drop procedure */
/* It is used when we have to delete a stored procedure permently */
--DROP PROCEDURE IF EXISTS studentData;

/* To add query into the Existing stored procedure */
GO
ALTER PROCEDURE studentData
AS
BEGIN
	SELECT Name, Age, Fees FROM Students;
END;
GO

