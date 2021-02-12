INSERT INTO user VALUES ('iloudaros','hnBHWK','Ioannis','Loudaros','2015-11-27 9:14:16','iloudaros@upnet.gr',1);
INSERT INTO user VALUES ('xkratim','Jh87Xw','Xristina','Kratimenou','2014-05-14 8:10:45','xkratim@upnet.gr',1);
INSERT INTO user VALUES ('sjames','WS6dZr','Sheila','James','2014-01-11 10:17:21','sjames@tech.com',0);
INSERT INTO user VALUES ('agray','BXtnBM','Andrew','Gray','2019-06-12 9:36:11','agray@tech.com',0);
INSERT INTO user VALUES ('aanson','Sa6xfu','Angie','Anson','2018-07-17 11:05:07','aanson@logic.com',0);
INSERT INTO user VALUES ('agreenl','5cgQFw','Annette','Greenlove','2017-12-17 10:30:17','agreenl@prev.com',0);
INSERT INTO user VALUES ('wgregg','jwCbKV','William','Gregg','2018-03-10 08:17:14','wgregg@prev.com',0);
INSERT INTO user VALUES ('jmarsh','mYqCjU','James','Marsh','2019-04-10 09:18:48','jmarsh@prev.com',0);
INSERT INTO user VALUES ('amakint','MZ7cQS','Andrew','Makintosh','2020-04-25 10:29:01','amakint@tech.com',0);
INSERT INTO user VALUES ('emarch','amPBkr','Erica','March','2019-02-14 09:26:18','emarch@logic.com',0);
INSERT INTO user VALUES ('jstewart','4F88Bh','Jennifer','Stewart','2018-05-02 11:12:18','jstewart@mod.com',0);
INSERT INTO user VALUES ('anelson','3XtQQc','Amy','Nelson','2016-08-19 10:41:09','anelson@mod.gr',0);
INSERT INTO user VALUES ('hkent','5vbPDt','Heather','Kent','2020-10-28 14:10:05','hkent@mod.gr',0);
INSERT INTO user VALUES ('sknowles','4CZfwQ','Seance','Knowles','2015-02-10 09:20:48','sknowles@logic.com',0);
INSERT INTO user VALUES ('cstinton','xKXefH','Christa','Stinton','2020-09-28 08:39:21','cstinton@mod.gr',0);
INSERT INTO user VALUES ('abrown','dbnzzC','Alex','Brown','2019-08-16 09:14:22','abrown@logic.com',0);
INSERT INTO user VALUES ('ddavis','wbNqyS','Devon','Davis','2018-11-17 10:18:20','ddavis@logic.com',0);
INSERT INTO user VALUES ('ewhite','nRMUD3','Evan','White','2019-09-09 09:14:04','ewhite@logic.com',0);
INSERT INTO user VALUES ('hthomas','5RCdFf','Hunter','Thomas','2020-11-10 08:05:52','hthomas@logic.com',0);
INSERT INTO user VALUES ('kander','m7n6EH','Kai','Anderson','2018-10-17 08:35:51','kander@logic.com',0);


INSERT INTO company VALUES ('240277197','DOY G Patrwn','Upnet','2610567846','Korinthou','350','Patras','Greece');
INSERT INTO company VALUES ('114422384','DOY Rethymnoy','Prevail','2831025645','Kountouriwth','59','Rethymno','Greece');
INSERT INTO company VALUES ('926898228','DOY Iwnias Thes','Tech','2310152645','Bas Gewrgiou','95','Thessaloniki','Greece');
INSERT INTO company VALUES ('160933162','DOY A Athinwn','Modular','2105448112','L Basil Sofias','244','Athens','Greece');
INSERT INTO company VALUES ('506365115','DOY Ioanninwn','Logic','2651056412','Dwdwnhs','161','Ioannina','Greece');


INSERT INTO manager VALUES ('hkent','10','160933162');
INSERT INTO manager VALUES ('hthomas','7','506365115');
INSERT INTO manager VALUES ('amakint','11','926898228');
INSERT INTO manager VALUES ('iloudaros','8','240277197');
INSERT INTO manager VALUES ('jmarsh','9','114422384');


INSERT INTO evaluator VALUES ('sknowles','5','506365115');
INSERT INTO evaluator VALUES ('kander','9','506365115');
INSERT INTO evaluator VALUES ('emarch','6','506365115');
INSERT INTO evaluator VALUES ('aanson','10','506365115');


INSERT INTO employee VALUES ('xkratim','240277197','bio','recommendat','certif','awar','3');
INSERT INTO employee VALUES ('sjames','926898228','bio','recommendat','certif','awar','6');
INSERT INTO employee VALUES ('agray','926898228','bio','recommendat','certif','awar','5');
INSERT INTO employee VALUES ('agreenl','114422384','bio','recommendat','certif','awar','10');
INSERT INTO employee VALUES ('wgregg','114422384','bio','recommendat','certif','awar','6');
INSERT INTO employee VALUES ('jstewart','160933162','bio','recommendat','certif','awar','8');
INSERT INTO employee VALUES ('anelson','160933162','bio','recommendat','certif','awar','7');
INSERT INTO employee VALUES ('cstinton','160933162','bio','recommendat','certif','awar','7');
INSERT INTO employee VALUES ('abrown','506365115','bio','recommendat','certif','awar','11');
INSERT INTO employee VALUES ('ddavis','506365115','bio','recommendat','certif','awar','9');
INSERT INTO employee VALUES ('ewhite','506365115','bio','recommendat','certif','awar','5');


INSERT INTO job VALUES (null,'2021-03-05','2572.7','PR Supervisor','Patras, Greece','sknowles','2020-12-20 08:15:37','2020-12-30');
INSERT INTO job VALUES (null,'2021-01-25','764.4','HR Coordinator','Thessaloniki, Greece','kander','2020-12-04 10:35:21','2020-12-30');
INSERT INTO job VALUES (null,'2021-03-10','860.8','FR Analyst','Thessaloniki, Greece','kander','2020-12-04 10:35:54','2020-12-30');
INSERT INTO job VALUES (null,'2021-02-01','4527.5','Manager','Rethymno, Greece','emarch','2020-12-12 9:10:25','2020-12-30');
INSERT INTO job VALUES (null,'2021-02-10','952.3','PR Supervisor','Rethymno, Greece','emarch','2020-12-12 9:10:39','2020-12-30');
INSERT INTO job VALUES (null,'2021-01-20','1200.2','CR Embassador','Rethymno, Greece','emarch','2020-12-12 9:11:19','2020-12-30');
INSERT INTO job VALUES (null,'2021-02-01','956.6','UX Designer','Athens, Greece','aanson','2020-12-21 08:30:15','2020-12-30');
INSERT INTO job VALUES (null,'2021-02-10','1526.1','PR Supervisor','Athens, Greece','aanson','2020-12-21 08:30:52','2020-12-30');
INSERT INTO job VALUES (null,'2021-01-31','856.2','FR Analyst','Ioannina, Greece','sknowles','2020-12-20 08:15:45','2020-12-30');
INSERT INTO job VALUES (null,'2021-02-07','3567.9','Manager','Ioannina, Greece','sknowles','2020-12-20 08:16:21','2020-12-30');


INSERT INTO antikeimeno VALUES ('Public Relations','-',null);
INSERT INTO antikeimeno VALUES ('Management','-',null);
INSERT INTO antikeimeno VALUES ('Design','-',null);
INSERT INTO antikeimeno VALUES ('Economics','-','Management');
INSERT INTO antikeimeno VALUES ('Social Media','In charge of the company`s social media presence.','Public Relations');
INSERT INTO antikeimeno VALUES ('Soft Skills','In charge of group`s dynamics and conflict resolution.','Management');
INSERT INTO antikeimeno VALUES ('Logistics','In charge of the company`s economic management and analysis.','Management');
INSERT INTO antikeimeno VALUES ('Graphic Design','In charge of the company`s logo design and website appearance.','Design');
INSERT INTO antikeimeno VALUES ('Photoshop','In charge of creating posters, buisiness cards etc.','Design');
INSERT INTO antikeimeno VALUES ('Human Resources','-','Management');



INSERT INTO degree VALUES ('Apolythrio Lykeioy','17o Geniko Lykeio Peristerioy','LYKEIO');
INSERT INTO degree VALUES ('Apolythrio Lykeioy','Arsakeio Lykeio Thessalonikis','LYKEIO');
INSERT INTO degree VALUES ('Apolythrio Lykeioy','5o Geniko Lykeio Patrws','LYKEIO');
INSERT INTO degree VALUES ('Ptyxio Organwshs kai Dioikhshs Epixeirhsewn','Papa, Tmhma Dioikhshs Epixeirhsewn','UNIV');
INSERT INTO degree VALUES ('Ptyxio Oikonomikwn Episthmwn','APTh, Oikonomikwn kai Politikwn Spoudwn','UNIV');
INSERT INTO degree VALUES ('Ptyxio Statistikhs kai Asfalistikhs','PaPei, Statistikhs kai Asfalistikhs','UNIV');
INSERT INTO degree VALUES ('Master`s Degree on Graphic Design','Deree, The American College of Greece','MASTER');
INSERT INTO degree VALUES ('Master`s Degree on Logistic Management','APTh, Logistics k Dioikhsh A Efodiasmou','MASTER');
INSERT INTO degree VALUES ('Master`s Degree on New Technologies and Marketing','UNIWA, Grafistikhs kai Opt Epikoinwnias','MASTER');
INSERT INTO degree VALUES ('PhD in Management, Finance and Economics','Deree','PHD');
INSERT INTO degree VALUES ('Didaktoriko stis Oikonomikes Episthmes','PaPe, Tmhma Oikonomikwn Episthmwn','PHD');
INSERT INTO degree VALUES ('PhD in Marketing Science', 'PaPei, Tmhma Organwshs kai Dioikhshs','PHD');


INSERT INTO has_degree VALUES ('Ptyxio Organwshs kai Dioikhshs Epixeirhsewn','Papa, Tmhma Dioikhshs Epixeirhsewn','agreenl','2014','9.3');
INSERT INTO has_degree VALUES ('Apolythrio Lykeioy','5o Geniko Lykeio Patrws','agreenl','2009','18.6');
INSERT INTO has_degree VALUES ('Ptyxio Statistikhs kai Asfalistikhs','PaPei, Statistikhs kai Asfalistikhs','agray','2015','8.7');
INSERT INTO has_degree VALUES ('Master`s Degree on Logistic Management','APTh, Logistics k Dioikhsh A Efodiasmou','agray','2017','9.5');
INSERT INTO has_degree VALUES ('Ptyxio Organwshs kai Dioikhshs Epixeirhsewn','Papa, Tmhma Dioikhshs Epixeirhsewn','sjames','2013','9.4');
INSERT INTO has_degree VALUES ('Apolythrio Lykeioy','Arsakeio Lykeio Thessalonikis','xkratim','2014','19.6');
INSERT INTO has_degree VALUES ('Master`s Degree on Graphic Design','Deree, The American College of Greece','wgregg','2017','9.8');
INSERT INTO has_degree VALUES ('Ptyxio Oikonomikwn Episthmwn','APTh, Oikonomikwn kai Politikwn Spoudwn','jstewart','2008','10.0');
INSERT INTO has_degree VALUES ('Master`s Degree on Logistic Management','APTh, Logistics k Dioikhsh A Efodiasmou','jstewart','2011','9.9');
INSERT INTO has_degree VALUES ('PhD in Management, Finance and Economics','Deree','jstewart','2014','9.8');
INSERT INTO has_degree VALUES ('Master`s Degree on Graphic Design','Deree, The American College of Greece','anelson','2015','10.0');
INSERT INTO has_degree VALUES ('Apolythrio Lykeioy','Arsakeio Lykeio Thessalonikis','cstinton','2019','20.0');
INSERT INTO has_degree VALUES ('Ptyxio Organwshs kai Dioikhshs Epixeirhsewn','Papa, Tmhma Dioikhshs Epixeirhsewn','abrown','2016','8.7');
INSERT INTO has_degree VALUES ('Master`s Degree on New Technologies and Marketing','UNIWA, Grafistikhs kai Opt Epikoinwnias','abrown','2018','9.4');
INSERT INTO has_degree VALUES ('Ptyxio Statistikhs kai Asfalistikhs','PaPei, Statistikhs kai Asfalistikhs','ddavis','2011','9.8');
INSERT INTO has_degree VALUES ('PhD in Marketing Science', 'PaPei, Tmhma Organwshs kai Dioikhshs','ddavis','2016','9.1');
INSERT INTO has_degree VALUES ('Didaktoriko stis Oikonomikes Episthmes','PaPe, Tmhma Oikonomikwn Episthmwn','ewhite','2016','10.0');



INSERT INTO languages VALUES ('xkratim','GR,EN');
INSERT INTO languages VALUES ('sjames','EN,FR');
INSERT INTO languages VALUES ('agray','EN,SP,FR');
INSERT INTO languages VALUES ('agreenl','EN,GR,FR');
INSERT INTO languages VALUES ('wgregg','EN');
INSERT INTO languages VALUES ('jstewart','EN,FR');
INSERT INTO languages VALUES ('anelson','EN,GR');
INSERT INTO languages VALUES ('cstinton','EN,FR');
INSERT INTO languages VALUES ('abrown','EN');
INSERT INTO languages VALUES ('ddavis','EN,FR,SP');
INSERT INTO languages VALUES ('ewhite','EN,SP');


INSERT INTO project VALUES ('xkratim',null,'Project Description:','http://www.emp/xk/projnum.com');
INSERT INTO project VALUES ('agray',null,'Project Description:','http://www.emp/ag/projnum.com');
INSERT INTO project VALUES ('agreenl',null,'Project Description:','http://www.emp/agr/projnum.com');
INSERT INTO project VALUES ('wgregg',null,'Project Description:','http://www.emp/wg/projnum.com');
INSERT INTO project VALUES ('anelson',null,'Project Description:','http://www.emp/an/projnum.com');
INSERT INTO project VALUES ('ddavis',null,'Project Description:','http://www.emp/dd/projnum.com');
INSERT INTO project VALUES ('ewhite',null,'Project Description:','http://www.emp/ew/projnum.com');


INSERT INTO needs VALUES ('0001','Social Media');
INSERT INTO needs VALUES ('0002','Soft Skills');
INSERT INTO needs VALUES ('0003','Economics');
INSERT INTO needs VALUES ('0004','Management');
INSERT INTO needs VALUES ('0005','Photoshop');
INSERT INTO needs VALUES ('0006','Design');
INSERT INTO needs VALUES ('0007','Graphic Design');
INSERT INTO needs VALUES ('0008','Public Relations');
INSERT INTO needs VALUES ('0009','Logistics');
INSERT INTO needs VALUES ('0010','Human Resources');


INSERT INTO applied_for VALUES ('sjames','0010');
INSERT INTO applied_for VALUES ('cstinton','0002');
INSERT INTO applied_for VALUES ('wgregg','0007');
INSERT INTO applied_for VALUES ('agray','0003');


INSERT INTO requestevaluation VALUES ('ewhite','0009');
INSERT INTO requestevaluation VALUES ('ddavis','0005');
INSERT INTO requestevaluation VALUES ('agreenl','0006');
INSERT INTO requestevaluation VALUES ('anelson','0007');


INSERT INTO evaluation VALUES ('ewhite','9','1','3','sknowles');
INSERT INTO evaluation VALUES ('ewhite','9','2','3','sknowles');
INSERT INTO evaluation VALUES ('ewhite','9','3','3','sknowles');
INSERT INTO evaluation VALUES ('ddavis','9','1','4','emarch');
INSERT INTO evaluation VALUES ('ddavis','9','2','3','emarch');
INSERT INTO evaluation VALUES ('agreenl','6','1','3','emarch');
INSERT INTO evaluation VALUES ('agreenl','6','2','2','emarch');
INSERT INTO evaluation VALUES ('agreenl','6','3','3','emarch');
INSERT INTO evaluation VALUES ('anelson','7','1','3','aanson');
INSERT INTO evaluation VALUES ('anelson','7','2','3','aanson');
INSERT INTO evaluation VALUES ('anelson','7','3','4','aanson');


INSERT INTO evaluationresult VALUES ('sknowles','ewhite','0009',9,'commentscommentscommentscomments');
INSERT INTO evaluationresult VALUES ('emarch','agreenl','0006',8,'commentscommentscommentscomments');
INSERT INTO evaluationresult VALUES ('aanson','anelson','0007',10,'commentscommentscommentscomments');
