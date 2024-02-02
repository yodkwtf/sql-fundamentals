SELECT
  @ @Global.sql_mode;


SELECT
  @ @session.sql_mode;


-- error for division by zero
SELECT
  1 / 0;


SHOW WARNINGS;


-- change the sql mode for error for division by zero
SET
  SESSION sql_mode = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';


SELECT
  1 / 0;


SHOW WARNINGS;