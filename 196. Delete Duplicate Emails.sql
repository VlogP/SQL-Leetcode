/* Write your T-SQL query statement below */

DELETE FROM PERSON
WHERE id in (SELECT id FROM(
SELECT id, 
    ROW_NUMBER() OVER (PARTITION BY email ORDER BY id) rw  
FROM PERSON ) c WHERE c.rw > 1)