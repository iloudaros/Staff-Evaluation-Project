DELIMITER $

CREATE TRIGGER no_change_rights AFTER UPDATE ON user
FOR EACH ROW
BEGIN

	if (OLD.username != NEW.username OR OLD.is_admin != NEW.is_admin) then
	SIGNAL SQLSTATE VALUE '45000' SET MESSAGE_TEXT = 'Δεν μπορείς να πραγματοποιήσεις αυτή την ενέργεια, επικοινώνησε με τον διαχειριστή της βάσης.';


END$
DELIMITER ;
