DELIMITER //

CREATE PROCEDURE print_1_to_10()
BEGIN
  DECLARE counter INT DEFAULT 1;

  WHILE counter <= 10 DO
    SELECT counter;
    SET counter = counter + 1;
  END WHILE;
END //

DELIMITER ;
call print_1_to_10();
