CREATE TABLE Employee_Log ( Message VARCHAR (255), Created At TIMESTAMP DEFAULT CURRENT_TIMESTAMP

PELIMITER //

CREATE TRIGGER AfterEmployeeInsert

AFTER INSERT ON Employee

FOREACH ROW

BEGIN

INSERT INTO Employee_Log (Message)

VALUES

CONCAT ('New employee inserted:',

NEW.EmployeeName)

);

END//

PELIMITER;
