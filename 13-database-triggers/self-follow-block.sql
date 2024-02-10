DELIMITER $$ 
CREATE TRIGGER trigger_name 
  BEFORE INSERT ON follows FOR EACH ROW 
  BEGIN 
    IF NEW.follower_id = NEW.followee_id 
    THEN 
      SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'You cannot follow yourself';
    END IF;
  END;
$$ 
DELIMITER;


-- check (fails)
INSERT INTO
  follows (follower_id, followee_id)
VALUES
  (1, 1);
  
  -- check (passes)
INSERT INTO
  follows (follower_id, followee_id)
VALUES
  (7, 2);