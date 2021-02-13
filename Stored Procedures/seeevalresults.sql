DELIMITER $

CREATE PROCEDURE seeevalresults (em_name VARCHAR(25),em_surname VARCHAR(35))
BEGIN
DECLARE em_username VARCHAR(12);
DECLARE ev_name VARCHAR(25);
DECLARE ev_username VARCHAR(25);


SELECT username INTO emp_username FROM user WHERE user.name =em_name AND user.username=em_surname;

IF(em_username != NULL) THEN

	IF( not exists(SELECT * FROM requestevaluation WHERE em_username=empl_usrname)) THEN

		SELECT 'Άι μωρ@ αφού δεν έχεις κάνει καν αίτηση ακόμη.' as '';

	ELSE

		SELECT 'Οι αιτήσεις σας κυρι@ τέτοι@ μου:' as '';

		SELECT * FROM requestevaluation WHERE empl_usrname=em_username;

		SELECT 'Τα αποτελέσματα σας κυρι@ τέτοι@ μου:' as '';

		SELECT evaluationresult.empl_usrname,evaluationresult.job_id,evaluationresult.grade,evaluationresult.comments,user.name,user.surname
		FROM evaluationresult
		WHERE empl_usrname=em_username
		INNER JOIN user on EvID = username;

		END IF;


		IF( exists(select job,empl_usrname from evaluation where phase = 1 and job,empl_usrname not in
			(select job from evaluation where phase=3) THEN

			SELECT 'Αυτές οι αξιολογήσεις δεν έχουν ολοκληρωθεί ακόμη:' as '';

			SELECT evaluation.empl_usrname,evaluation.job,evaluation.grade,evaluation.phase,user.name,user.surname FROM evaluationresult
			WHERE empl_usrname=em_username AND phase !=3 AND job,empl_usrname not in
			(select job from evaluation where phase=3)
			INNER JOIN user on EvID = username;

		END IF;



	END IF;



END$
DELIMITER ;
