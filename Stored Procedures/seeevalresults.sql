DELIMITER $

CREATE PROCEDURE seeevalresults (em_name VARCHAR(25),em_surname VARCHAR(35))
BEGIN
DECLARE em_username VARCHAR(12);
DECLARE ev_name VARCHAR(25);
DECLARE ev_username VARCHAR(25);


SELECT
    username
INTO em_username
FROM user
WHERE
    user.name = em_name
        AND user.surname = em_surname;

IF(em_username != NULL) THEN

	IF( not exists(SELECT * FROM applied_for WHERE candidate=empl_usrname)) THEN

		SELECT 'Άι μωρ@ αφού δεν έχεις κάνει καν αίτηση ακόμη.' as '';

	ELSE

		SELECT 'Οι αιτήσεις σας κυρι@ τέτοι@ μου:' as '';

		SELECT * FROM requestevaluation WHERE empl_usrname=em_username;

		SELECT 'Τα αποτελέσματα σας κυρι@ τέτοι@ μου:' as '';

		SELECT
    	empl_usrname,
    	job_id,
    	grade,
    	name,
    	surname
		FROM evaluationresult INNER JOIN user on EvID = username
		WHERE empl_usrname=em_username;

		END IF;


		IF( exists(select job,empl_usrname from evaluation where phase = 1 and job,empl_usrname not in
			(select job from evaluation where phase=3)) THEN

			SELECT 'Αυτές οι αξιολογήσεις δεν έχουν ολοκληρωθεί ακόμη:' as '';

			SELECT
      	empl_usrname,
      	job,
      	grade,
      	phase,
        name,
        surname
      FROM evaluation INNER JOIN user on ev_username = username
      WHERE empl_usrname=em_username AND phase !=3 AND job,empl_usrname not in
			(select job from evaluation where phase=3);

		END IF;



	END IF;



END$
DELIMITER ;
