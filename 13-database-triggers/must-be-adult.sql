DELIMITER $$ 
CREATE TRIGGER before_insert_users 
  BEFORE INSERT ON users FOR EACH ROW 
  BEGIN 
    IF NEW.age < 18 
    THEN 
      SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'User must be an adult';
    END IF;
  END;
$$ 
DELIMITER;


-- check if trigger is working
INSERT INTO
  users
VALUES
  ('user3', 20);


INSERT INTO
  users
VALUES
  ('user4', 15);