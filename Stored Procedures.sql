DELIMITER $ 

CREATE PROCEDURE seeevalresults (em_name varchar(25),em_surname varchar(35))
BEGIN 
DECLARE em_name varchar(25);
DECLARE em_surname varchar(35);
DECLARE em_username varchar(12);

SELECT name INTO em_name FROM user WHEN employee.username = user.username;
SELECT surname INTO em_surname FROM user WHEN employee.username = user.username;
SELECT COUNT job_id FROM requestevaluation WHERE 

DELIMITER ; 


DELIMITER $
CREATE TRIGGER loginfo_u AFTER URDATE ON job
FOR EACH ROW 

DELIMITER ; 


DELIMITER $ 
CREATE TRIGGER logifo_i  AFTER INSERT ON job
FOR EACH ROW 

DELIMITER ;


DELIMITER $ 
CREATE TRIGGER loginfo_d AFTER DELETE ON job
FOR EACH ROW 

DELIMITER ; 

DELIMITER $ 
CREATE TRIGGER not_allowed1 AFTER UPDATE ON company
FOR EACH ROW
BEGIN
ROLLBACK TRANSACTION$
SELECT 'No changes have been made.'$
END$
DELIMITER ; 

