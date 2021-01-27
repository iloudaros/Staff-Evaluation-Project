--Stored procedure 1

DELIMITER $ 

CREATE PROCEDURE seeevalresults (em_name VARCHAR(25),em_surname VARCHAR(35))
BEGIN 
DECLARE em_username VARCHAR(12);
DECLARE ev_name VARCHAR(25);
DECLARE ev_username VARCHAR(25);

SELECT name INTO em_name FROM user WHEN employee.username = user.username;
SELECT surname INTO em_surname FROM user WHEN employee.username = user.username;

SELECT name INTO ev_name FROM user WHEN evaluator.username=user.username;
SELECT surname INTO ev_surname FROM user WHEN evaluator.username=user.username;

SET @nm_ex = SELECT EXISTS(em_name);
SET @sr_ex = SELECT EXISTS(em_surname);

IF(@nm_ex=1) AND (@st_ex=1) THEN
	SELECT username INTO em_username FROM user WHERE name=em_name AND surname=em_surname;
	SELECT * FROM requestevaluation WHERE em_username=empl_usrname;
	IF((SELECT * FROM requestevaluation WHERE em_username=empl_usrname)=NULL) THEN
		SELECT 'You have not requsted evaluation.'
	END IF;
	SELECT EViD,empl_usrname,job_id,grade,comments FROM evaluationresult WHERE em_username=empl_usrname;
	SELECT --ONOMATEPWNYMO EVALUATOR
ELSE IF((SELECT EViD,empl_usrname,job_id,grade,comments FROM evaluationresult WHERE em_username=empl_usrname)=NULL) THEN
	SELECT 'Evaluation in progress';
	SELECT empl_usrname,phase,grade FROM evaluation WHERE em_username=empl_usrname;
END IF;

DELIMITER ; 


--Stored procedure 2

DELIMITER $ 

CREATE PROCEDURE make_final (id_job INT(4), id_evaluator VARCHAR(12));
BEGIN

DECLARE e_phase TINYINT;
DECLARE p_grade TINYINT;

DECLARE ids CURSOR FOR 
	SELECT id, evaluator FROM job WHERE evaluation.empl_usrname=employee.username AND evaluation.ev_username=job.evaluator;
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
	SELECT 'Your evaluation grading is still in progress.';
END IF;

END$

DELIMITER ;






























