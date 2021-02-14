DELIMITER $

CREATE PROCEDURE make_final (id_job INT(4), evaluatorin VARCHAR(12), employeein varchar(12));
BEGIN

if(exists(select * from requestevaluation where empl_usrname = employeein and job_id = id_job)) then
SET @g1 = SELECT EXISTS(SELECT grade FROM evaluation WHERE phase=1 and empl_usrname = employeein and ev_username = evaluatorin);
SET @g2 = SELECT EXISTS(SELECT grade FROM evaluation WHERE phase=2 and empl_usrname = employeein and ev_username = evaluatorin);
SET @g3 = SELECT EXISTS(SELECT grade FROM evaluation WHERE phase=3 and empl_usrname = employeein and ev_username = evaluatorin);


IF(@g1=1) AND (@g2=1) AND (g3=1); THEN
	SET @fg1 = SELECT grade FROM evaluation WHERE phase=1 and empl_usrname = employeein and ev_username = evaluatorin;
	SET @fg2 = SELECT grade FROM evaluation WHERE phase=2 and empl_usrname = employeein and ev_username = evaluatorin;
	SET @fg3 = SELECT grade FROM evaluation WHERE phase=3 and empl_usrname = employeein and ev_username = evaluatorin;

 INSERT INTO evaluationresult values (evaluatorin,employeein,id_job,@fg1+@fg2+@fg3)
ELSE
	SELECT 'Your evaluation grading is still in progress.' as '';
END IF;

else

SELECT 'Δεν έχει γίνει σχετική αίτηση.' as '';

end if; 
END$

DELIMITER ;
