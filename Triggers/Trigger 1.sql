DELIMITER $

CREATE TRIGGER upj_log AFTER UPDATE
ON job
FOR EACH ROW
BEGIN

SET NOCOUNT ON;
DECLARE @EventData XML = EVENTDATA();
DECLARE @Logger VARCHAR(12);
SELECT username INTO @Logger FROM user WHERE log.user=user.username;

INSERT job.log (EventDate,
				EventType,
				TableChanged,
				Success	);
SELECT
	--@EventDate.value(CURRENT_TIMESTAMP, DATETIME);
	@EventData.value('(/EVENT_INSTANCE/EventType)[1]', ENUM);
