insert into user values ('iloudaros','hnBHWK','Ioannis','Loudaros','2015-11-27 9:14:16','iloudaros@upnet.gr');
insert into user values ('xkratim','Jh87Xw','Xristina','Kratimenou','2014-05-14 8:10:45','xkratim@upnet.gr');
insert into user values ('sjames','WS6dZr','Sheila','James','2014-01-11 10:17:21','sjames@tech.com');
insert into user values ('agray','BXtnBM','Andrew','Gray','2019-06-12 9:36:11','agray@tech.com');
insert into user values ('aanson','Sa6xfu','Angie','Anson','2018-07-17 11:05:07','aanson@logic.com');
insert into user values ('agreenl','5cgQFw','Annette','Greenlove','2017-12-17 10:30:17','agreenl@prev.com');
insert into user values ('wgregg','jwCbKV','William','Gregg','2018-03-10 08:17:14','wgregg@prev.com');
insert into user values ('jmarsh','mYqCjU','James','Marsh','2019-04-10 09:18:48','jmarsh@prev.com');
insert into user values ('amakint','MZ7cQS','Andrew','Makintosh','2020-04-25 10:29:01','amakint@tech.com');
insert into user values ('emarch','amPBkr','Erica','March','2019-02-14 09:26:18','emarch@logic.com');
insert into user values ('jstewart','4F88Bh','Jennifer','Stewart','2018-05-02 11:12:18','jstewart@mod.com');
insert into user values ('anelson','3XtQQc','Amy','Nelson','2016-08-19 10:41:09','anelson@mod.gr');
insert into user values ('hkent','5vbPDt','Heather','Kent','2020-10-28 14:10:05','hkent@mod.gr');
insert into user values ('sknowles','4CZfwQ','Seance','Knowles','2015-02-10 09:20:48','sknowles@logic.com');
insert into user values ('cstinton','xKXefH','Christa','Stinton','2020-09-28 08:39:21','cstinton@mod.gr');
insert into user values ('abrown','dbnzzC','Alex','Brown','2019-08-16 09:14:22','abrown@logic.com');
insert into user values ('ddavis','wbNqyS','Devon','Davis','2018-11-17 10:18:20','ddavis@logic.com');
insert into user values ('ewhite','nRMUD3','Evan','White','2019-09-09 09:14:04','ewhite@logic.com');
insert into user values ('hthomas','5RCdFf','Hunter','Thomas','2020-11-10 08:05:52','hthomas@logic.com');
insert into user values ('kander','m7n6EH','Kai','Anderson','2018-10-17 08:35:51','kander@logic.com');


insert into company values ('240277197','DOY G Patrwn','Upnet','2610567846','Korinthou','350','Patras','Greece');
insert into company values ('114422384','DOY Rethymnoy','Prevail','2831025645','Kountouriwth','59','Rethymno','Greece');
insert into company values ('926898228','DOY Iwnias Thessalonikis','Tech','2310152645','Basilews Gewrgiou','95','Thessaloniki','Greece');
insert into company values ('160933162','DOY A Athinwn','Modular','2105448112','Lewforos Basilisshs Sofias','244','Athens','Greece');
insert into company values ('506365115','DOY Ioanninwn','Logic','2651056412','Dwdwnhs','161','Ioannina','Greece');


insert into manager values ('hkent','10','160933162');
insert into manager values ('hthomas','7','506365115');
insert into manager values ('amakint','11','926898228');
insert into manager values ('iloudaros','8','240277197');
insert into manager values ('jmarsh','9','114422384');


insert into evaluator values ('sknowles','5','506365115');
insert into evaluator values ('kander','9','506365115');
insert into evaluator values ('emarch','6','506365115');
insert into evaluator values ('aanson','10','506365115');


insert into employee values ('xkratim','240277197','bio','recommendat','certif','awar','3');
insert into employee values ('sjames','926898228','bio','recommendat','certif','awar','6');
insert into employee values ('agray','926898228','bio','recommendat','certif','awar','5');
insert into employee values ('agreenl','114422384','bio','recommendat','certif','awar','10');
insert into employee values ('wgregg','114422384','bio','recommendat','certif','awar','6');
insert into employee values ('jstewart','160933162','bio','recommendat','certif','awar','8');
insert into employee values ('anelson','160933162','bio','recommendat','certif','awar','7');
insert into employee values ('cstinton','160933162','bio','recommendat','certif','awar','7');
insert into employee values ('abrown','506365115','bio','recommendat','certif','awar','11');
insert into employee values ('ddavis','506365115','bio','recommendat','certif','awar','9');
insert into employee values ('ewhite','506365115','bio','recommendat','certif','awar','5');


insert into job values (null,'2021-03-05','2572.7','PR Supervisor','Patras, Greece','sknowles','2020-12-20 08:15:37','2020-12-30');
insert into job values (null,'2021-01-25','764.4','HR Coordinator','Thessaloniki, Greece','kander','2020-12-04 10:35:21','2020-12-30');
insert into job values (null,'2021-03-10','860.8','FR Analyst','Thessaloniki, Greece','kander','2020-12-04 10:35:54','2020-12-30');
insert into job values (null,'2021-02-01','4527.5','Manager','Rethymno, Greece','emarch','2020-12-12 9:10:25','2020-12-30');
insert into job values (null,'2021-02-10','952.3','PR Supervisor','Rethymno, Greece','emarch','2020-12-12 9:10:39','2020-12-30');
insert into job values (null,'2021-01-20','1200.2','CR Embassador','Rethymno, Greece','emarch','2020-12-12 9:11:19','2020-12-30');
insert into job values (null,'2021-02-01','956.6','UX Designer','Athens, Greece','aanson','2020-12-21 08:30:15','2020-12-30');
insert into job values (null,'2021-02-10','1526.1','PR Supervisor','Athens, Greece','aanson','2020-12-21 08:30:52','2020-12-30');
insert into job values (null,'2021-01-31','856.2','FR Analyst','Ioannina, Greece','sknowles','2020-12-20 08:15:45','2020-12-30');
insert into job values (null,'2021-02-07','3567.9','Manager','Ioannina, Greece','sknowles','2020-12-20 08:16:21','2020-12-30');


insert into antikeimeno values ('Social Media','In charge of the company`s social media presence.','Public Relations');
insert into antikeimeno values ('Soft Skills','In charge of group`s dynamics and conflict resolution.','Management')
insert into antikeimeno values ('Logistics','In charge of the company`s economic management and analysis.','Economics');
insert into antikeimeno values ('Graphic Design','In charge of the company`s logo design and website appearance.','Design');
insert into antikeimeno values ('Photoshop','In charge of creating posters, buisiness cards etc.','Design');
insert into antikeimeno values ('Public Relations','null','null');
insert into antikeimeno values ('Economics','null','Management');
insert into antikeimeno values ('Management','null','null');
insert into antikeimeno values ('Design','null','null');


insert into degree values ('Apolythrio Lykeioy','17o Geniko Lykeio Peristerioy','LYKEIO');
insert into degree values ('Apolythrio Lykeioy','Arsakeio Lykeio Thessalonikis','LYKEIO');
insert into degree values ('Apolythrio Lykeioy','5o Geniko Lykeio Patrws','LYKEIO');
insert into degree values ('Ptyxio Organwshs kai Dioikhshs Epixeirhsewn','Panephsthmio Patrwn, Tmhma Dioikhshs Epixeirhsewn','UNIV');
insert into degree values ('Ptyxio Oikonomikwn Episthmwn','Aristoteleio Panephsthmio Thessalonikis, Tmhma Oikonomikwn kai Politikwn Spoudwn','UNIV');
insert into degree values ('Ptyxio Statistikhs kai Asfalistikhs','Panephsthmio Peiraia, Tmhma Statistikhs kai Asfalistikhs Episthmhs','UNIV');
insert into degree values ('Master`s Degree on Graphic Design','Deree, The American College of Greece','MASTER');
insert into degree values ('Master`s Degree on Logistic Management','Aristoteleio Panephsthmio Thessalonikis, Logistics kai Dioikhsh Alusidas Efodiasmou','MASTER');
insert into degree values ('Master`s Degree on New Technologies and Marketing','UNIWA, Tmhma Grafistikhs kai Optikhs Epikoinwnias','MASTER');
insert into degree values ('PhD in Management, Finance and Economics','Deree','PHD');
insert into degree values ('Didaktoriko stis Oikonomikes Episthmes','Panephsthmio Peloponnhsou, Tmhma Oikonomikwn Episthmwn','PHD');
insert into degree values ('PhD in Marketing Science', 'Panephsthmio Peiraia, Tmhma Organwshs kai Dioikhshs Epixeirhsewn','PHD');


insert into has_degree values ('Ptyxio Organwshs kai Dioikhshs Epixeirhsewn','Panephsthmio Patrwn, Tmhma Dioikhshs Epixeirhsewn','agreenl','2014','9.3');
insert into has_degree values ('Apolythrio Lykeioy','5o Geniko Lykeio Patrws','agreenl','2009','18.6');
insert into has_degree values ('Ptyxio Statistikhs kai Asfalistikhs','Panephsthmio Peiraia, Tmhma Statistikhs kai Asfalistikhs Episthmhs','agray','2015','8.7');
insert into has_degree values ('Master`s Degree on Logistic Management','Aristoteleio Panephsthmio Thessalonikis, Logistics kai Dioikhsh Alusidas Efodiasmou','agray','2017','9.5');
insert into has_degree values ('Ptyxio Organwshs kai Dioikhshs Epixeirhsewn','Panephsthmio Patrwn, Tmhma Dioikhshs Epixeirhsewn','sjames','2013','9.4');
insert into has_degree values ('Apolythrio Lykeioy','Arsakeio Lykeio Thessalonikis','xkratim','2014','19.6');
insert into has_degree values ('Master`s Degree on Graphic Design','Deree, The American College of Greece','wgregg','2017','9.8');
insert into has_degree values ('Ptyxio Oikonomikwn Episthmwn','Aristoteleio Panephsthmio Thessalonikis, Tmhma Oikonomikwn kai Politikwn Spoudwn','jstewart','2008','10.0');
insert into has_degree values ('Master`s Degree on Logistic Management','Aristoteleio Panephsthmio Thessalonikis, Logistics kai Dioikhsh Alusidas Efodiasmou','jstewart','2011','9.9');
insert into has_degree values ('PhD in Management, Finance and Economics','Deree','jstewart','2014','9.8');
insert into has_degree values ('Master`s Degree on Graphic Design','Deree, The American College of Greece','anelson','2015','10.0');
insert into has_degree values ('Apolythrio Lykeioy','Arsakeio Lykeio Thessalonikis','cstinton','2019','20.0');
insert into has_degree values ('Ptyxio Organwshs kai Dioikhshs Epixeirhsewn','Panephsthmio Patrwn, Tmhma Dioikhshs Epixeirhsewn','abrown','2016','8.7');
insert into has_degree values ('Master`s Degree on New Technologies and Marketing','UNIWA, Tmhma Grafistikhs kai Optikhs Epikoinwnias','abrown','2018','9.4');
insert into has_degree values ('Ptyxio Statistikhs kai Asfalistikhs','Panephsthmio Peiraia, Tmhma Statistikhs kai Asfalistikhs Episthmhs','ddavis','2011','9.8');
insert into has_degree values ('PhD in Marketing Science', 'Panephsthmio Peiraia, Tmhma Organwshs kai Dioikhshs Epixeirhsewn','ddavis','2016','9.1');
insert into has_degree values ('Didaktoriko stis Oikonomikes Episthmes','Panephsthmio Peloponnhsou, Tmhma Oikonomikwn Episthmwn','ewhite','2016','10.0');


insert into languages values ('xkratim','GR,EN');
insert into languages values ('sjames','EN,FR');
insert into languages values ('agray','EN,SP,FR');
insert into languages values ('agreenl','EN,GR,FR');
insert into languages values ('wgregg','EN');
insert into languages values ('jstewart','EN,FR');
insert into languages values ('anelson','EN,GR');
insert into languages values ('cstinton','EN,FR');
insert into languages values ('abrown','EN');
insert into languages values ('ddavis','EN,FR,SP');
insert into languages values ('ewhite','EN,SP');


insert into project values ('xkratim','null','null','http://www.emp/xk/projnum.com');
insert into project values ('agray','null','null','http://www.emp/ag/projnum.com');
insert into project values ('agreenl','null','null','http://www.emp/agr/projnum.com');
insert into project values ('wgregg','null','null','http://www.emp/wg/projnum.com');
insert into project values ('anelson','null','null','http://www.emp/an/projnum.com');
insert into project values ('ddavis','null','null','http://www.emp/dd/projnum.com');
insert into project values ('ewhite','null','null','http://www.emp/ew/projnum.com');


insert into needs values ('0001','Social Media');
insert into needs values ('0002','Soft Skills');
insert into needs values ('0003','Logistics');
insert into needs values ('0004','Management');
insert into needs values ('0005','Social Media');
insert into needs values ('0006','Soft Skills');
insert into needs values ('0007','Graphic Design');
insert into needs values ('0008','Public Relations');
insert into needs values ('0009','Economics');
insert into needs values ('0010','Management');


insert into applied_for values ('sjames','0010');
insert into applied_for values ('cstinton','0002');
insert into applied_for values ('wgregg','0007');
insert into applied_for values ('agray','0003');


insert into requestevaluation values ('ewhite','0009');
insert into requestevaluation values ('ddavis','0005');
insert into requestevaluation values ('agreenl','0006');
insert into requestevaluation values ('anelson','0007');


insert into evaluation values ('ewhite','1','','sknowles');
insert into evaluation values ('ddavis','','','emarch');
insert into evaluation values ('agreenl','','','emarch');
insert into evaluation values ('anelson','','','aanson');


insert into evaluationresult values ('sknowles','ewhite','0009','','');
insert into evaluationresult values ('emarch','ddavis','0005','','');
insert into evaluationresult values ('emarch','agreenl','0006','','');
insert into evaluationresult values ('aanson','anelson','0007','','');


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

