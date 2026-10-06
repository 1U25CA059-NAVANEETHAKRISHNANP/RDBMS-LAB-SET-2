DELIMITER//

CREATE PROCEDURE InsertStudent(

IN P_StudentID INT, IN p StudentName VARCHAR(100), IN p DepartmentID INT

BEGIN

INSERT INTO Student (StudentID, StudentName, DepartmentID) VALUES (p_StudentID, p_StudentName, P_DepartmentID);

END//

DELIMITER:

CALL InsertStudent (101, 'Arun', 10);
