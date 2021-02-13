
------------------------------- job

---UPDATE

DELIMITER $

CREATE TRIGGER job_log_bupdate BEFORE UPDATE
ON job
FOR EACH ROW
BEGIN

set @lastlogged = now();
set @getuser = replace(user(),'@localhost','');
insert into log values(@getuser,@lastlogged,'update','job',false);

END$




CREATE TRIGGER job_log_aupdate AFTER UPDATE
ON job
FOR EACH ROW
BEGIN

update log
set succesful = true where timestamp = @lastlogged;


END$
DELIMITER ;


---INSERT

DELIMITER $

CREATE TRIGGER job_log_binsert BEFORE INSERT
ON job
FOR EACH ROW
BEGIN

set @lastlogged = now();
set @getuser = replace(user(),'@localhost','');
insert into log values(@getuser,@lastlogged,'insert','job',false);


END$




CREATE TRIGGER job_log_ainsert AFTER INSERT
ON job
FOR EACH ROW
BEGIN

update log
set succesful = true where timestamp = @lastlogged;


END$
DELIMITER ;


---DELETE

DELIMITER $

CREATE TRIGGER job_log_bdelete BEFORE DELETE
ON job
FOR EACH ROW
BEGIN

set @lastlogged = now();
set @getuser = replace(user(),'@localhost','');
insert into log values(@getuser,@lastlogged,'delete','job',false);


END$


CREATE TRIGGER job_log_adelete AFTER DELETE
ON job
FOR EACH ROW
BEGIN

update log
set succesful = true where timestamp = @lastlogged;


END$
DELIMITER ;






------------------------------- employee

---UPDATE

DELIMITER $

CREATE TRIGGER employee_log_bupdate BEFORE UPDATE
ON employee
FOR EACH ROW
BEGIN

set @lastlogged = now();
set @getuser = replace(user(),'@localhost','');
insert into log values(@getuser,@lastlogged,'update','employee',false);

END$


CREATE TRIGGER employee_log_aupdate AFTER UPDATE
ON employee
FOR EACH ROW
BEGIN

update log
set succesful = true where timestamp = @lastlogged;


END$
DELIMITER ;



---INSERT

DELIMITER $

CREATE TRIGGER employee_log_bdinsert BEFORE INSERT
ON employee
FOR EACH ROW
BEGIN

set @lastlogged = now();
set @getuser = replace(user(),'@localhost','');
insert into log values(@getuser,@lastlogged,'insert','employee',false);

END$


CREATE TRIGGER employee_log_ainsert AFTER INSERT
ON employee
FOR EACH ROW
BEGIN

update log
set succesful = true where timestamp = @lastlogged;


END$
DELIMITER ;


---DELETE

DELIMITER $

CREATE TRIGGER employee_log_bdelete BEFORE DELETE
ON employee
FOR EACH ROW
BEGIN

set @lastlogged = now();
set @getuser = replace(user(),'@localhost','');
insert into log values(@getuser,@lastlogged,'delete','employee',false);

END$


CREATE TRIGGER employee_log_adelete AFTER DELETE
ON employee
FOR EACH ROW
BEGIN

update log
set succesful = true where timestamp = @lastlogged;


END$
DELIMITER ;







------------------------------- requestevaluation

---UPDATE

DELIMITER $

CREATE TRIGGER requestevaluation_log_bupdate BEFORE UPDATE
ON requestevaluation
FOR EACH ROW
BEGIN

set @lastlogged = now();
set @getuser = replace(user(),'@localhost','');
insert into log values(@getuser,@lastlogged,'update','requestevaluation',false);

END$


CREATE TRIGGER requestevaluation_log_aupdate AFTER UPDATE
ON requestevaluation
FOR EACH ROW
BEGIN

update log
set succesful = true where timestamp = @lastlogged;


END$
DELIMITER ;


---INSERT

CREATE TRIGGER requestevaluation_log_binsert BEFORE INSERT
ON requestevaluation
FOR EACH ROW
BEGIN

set @lastlogged = now();
set @getuser = replace(user(),'@localhost','');
insert into log values(@getuser,@lastlogged,'insert','requestevaluation',false);

END$

CREATE TRIGGER requestevaluation_log_binsert AFTER INSERT
ON requestevaluation
FOR EACH ROW
BEGIN

update log
set succesful = true where timestamp = @lastlogged;


END$
DELIMITER ;


---DELETE

CREATE TRIGGER requestevaluation_log_bdelete BEFORE DELETE
ON requestevaluation
FOR EACH ROW
BEGIN

set @lastlogged = now();
set @getuser = replace(user(),'@localhost','');
insert into log values(@getuser,@lastlogged,'delete','requestevaluation',false);


END$


CREATE TRIGGER requestevaluation_log_adelete AFTER DELETE
ON requestevaluation
FOR EACH ROW
BEGIN

update log
set succesful = true where timestamp = @lastlogged;


END$
DELIMITER ;
