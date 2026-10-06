DELIMITER//

CREATE PROCEDURE Display Students() BEGIN

DECLARE done INT DEFAULT 0;

DECLARE sid INT;

DECLARE sname VARCHAR(100);

DECLARE did INT;

DECLARE student_cursor CURSOR FOR

SELECT StudentID, StudentName, DepartmentID FROM Student;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET

done = 1;

OPEN student_cursor;

read loop: LOOP

FETCH student_cursor INTO sid, sname, did;

IF done THEN

LE AVE read loop;

END IF;

SELECT sid AS Student ID,

sname As StudentName,

did AS DepartmentID;

END LOOP:

CLOSE student_cursor;

END//

DELIMITER:

CALL DisplayStudents();
