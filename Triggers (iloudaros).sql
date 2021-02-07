--Trigger 2

DELIMITER $

CREATE TRIGGER block_afm_doi_change BEFORE INSERT ON company
FOR EACH ROW
BEGIN
	DECLARE sameTitleCount INT;
	SET sameTitleCount=0;
	
	SELECT COUNT(*) INTO sameTitleCount 
	FROM business
	INNER JOIN belongs ON belongs.bus_id=business.id
	WHERE ch_name=NEW.ch_name
	AND business.title IN (
		SELECT title FROM business 
		WHERE id=NEW.bus_id
	);

	IF(sameTitleCount>0) THEN
		INSERT INTO chamber(name) VALUES (NULL);
	END IF;
END$
DELIMITER ;
