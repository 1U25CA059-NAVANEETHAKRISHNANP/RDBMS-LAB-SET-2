PELIMITER //

CREATE PROCEPURE CheckResult (IN marks INT) BEGIN

IF marks>= 40 THEN

SELECT 'Pass' AS Result;

ELSE

SELECT 'Fail' AS Result; END IF;

ENP//

DELIMITER;

CALL CheckResult(65);
