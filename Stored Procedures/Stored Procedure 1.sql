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

--Βάλε και ένα END$
