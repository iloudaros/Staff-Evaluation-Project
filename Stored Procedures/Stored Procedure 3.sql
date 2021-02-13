CREATE DEFINER=`root`@`localhost` PROCEDURE `job_progress`(id int(4))
BEGIN


declare incomplete int;
declare applications int;

SELECT
    COUNT(*)
INTO applications FROM
    requestevaluation
WHERE
    job_id = id;

if (applications=0) then
	select "Δεν υπάρχουν αξιολογήσεις σε εξέληξη κούκλ@ μου" as '';
else

SELECT COUNT(*)
INTO incomplete
FROM evaluation
WHERE job=id and empl_usrname NOT IN
	(SELECT empl_usrname
	FROM evaluation
	WHERE phase = 3);


if (incomplete>=0) then
select "Οριστικοποιημένοι Πίνακες" as '';
select empl_usrname as 'Username', job_id as 'Job', grade as 'Grade'
from evaluationresult
where job_id=id
order by grade desc;

end if;

if (incomplete>0)
then
select "Αξιολόγηση σε εξέληξη. Εκρεμμούν:" as '',incomplete as '';
end if;

end if;
END
