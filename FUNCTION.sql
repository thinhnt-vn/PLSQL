CREATE OR REPLACE FUNCTION total_name 
RETURN number IS
 total number(2) := 0;
BEGIN
  SELECT count(id) INTO total
  FROM select_into;
  RETURN total;
END;
