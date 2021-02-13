DELIMITER $

CREATE TRIGGER no_change_rights AFTER UPDATE ON user
FOR EACH ROW
BEGIN
set @getuser = replace(user(),'@localhost','')
if (@getuser not in (select username from user where is_admin=1) )then
	if (OLD.username != NEW.username OR OLD.is_admin != NEW.is_admin) then
	SIGNAL SQLSTATE VALUE '45000' SET MESSAGE_TEXT = 'Δεν μπορείς να πραγματοποιήσεις αυτή την ενέργεια, επικοινώνησε με τον διαχειριστή της βάσης.';
	end if;
	end if;
END$
DELIMITER ;
