DELIMITER $

CREATE TRIGGER company_info BEFORE UPDATE ON company
FOR EACH ROW
BEGIN

	if (OLD.DOY != NEW.DOY OR OLD.AFM != NEW.AFM OR OLD.NAME != NEW.NAME) then
	set NEW.DOY = OLD.DOY;
	set NEW.AFM = OLD.AFM;
	set NEW.NAME = OLD.NAME;

	select 'Οι αλλαγές αγνοήθηκαν' as '';
	end if;


END$
DELIMITER ;
