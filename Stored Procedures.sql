--Stored procedure 1

DELIMITER $ 

CREATE PROCEDURE seeevalresults (em_name VARCHAR(25),em_surname VARCHAR(35))
BEGIN 
DECLARE em_name VARCHAR(25);
DECLARE em_surname VARCHAR(35);
DECLARE em_username VARCHAR(12);

SELECT name INTO em_name FROM user WHEN employee.username = user.username;
SELECT surname INTO em_surname FROM user WHEN employee.username = user.username;
SELECT COUNT job_id FROM requestevaluation WHERE 

DELIMITER ; 


--Stored procedure 2

DELIMITER $ 

CREATE PROCEDURE make_final (id_job INT(4), id_evaluator VARCHAR(12));
BEGIN

DECLARE e_phase TINYINT;
DECLARE p_grade TINYINT;

DECLARE ids CURSOR FOR 
	SELECT id, evaluator FROM job WHERE --KATI LEIPEI 
DECLARE CONTINUE HANDLER FOR NOT FOUND SET eot=1;
OPEN ids;
FETCH ids INTO id_job, id_evaluator;
WHILE (eot=0) DO 
	SELECT id_job AS 'Job ID', id_evaluator AS 'Evaluator Username';
	FETCH ids INTO id_job, id_evaluator;
END WHILE;
CLOSE ids;

SELECT phase INTO e_phase FROM evaluation WHERE ev_username=evaluator;
SELECT grade INTO p_grade FROM evaluation WHERE ev_username=evaluator;

SET @g1 = SELECT EXISTS(SELECT grade FROM evaluation WHERE phase=1);
SET @g2 = SELECT EXISTS(SELECT grade FROM evaluation WHERE phase=2);
SET @g3 = SELECT EXISTS(SELECT grade FROM evaluation WHERE phase=3);
IF(@g1=1) AND (@g2=1) AND (g3=1); THEN
	SET @fg1 = SELECT grade FROM evaluation WHERE phase=1;
	SET @fg2 = SELECT grade FROM evaluation WHERE phase=2;
	SET @fg3 = SELECT grade FROM evaluation WHERE phase=3;
	UPDATE evaluationresult
	SET grade = (@fg1+@fg2+@fg3)/3;
ELSE
	SELECT 'Your evaluation grading is still in progress.'
END IF

END$

DELIMITER ;






























