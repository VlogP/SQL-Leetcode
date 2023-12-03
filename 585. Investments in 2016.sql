/* Write your T-SQL query statement below */

SELECT ROUND(SUM(i1.tiv_2016), 2) as tiv_2016 FROM Insurance i1
WHERE 
EXISTS (SELECT * FROM Insurance i2 WHERE i1.pid != i2.pid AND i1.tiv_2015 = i2.tiv_2015) 
AND  
NOT EXISTS (SELECT * FROM Insurance i2 WHERE i1.lat = i2.lat AND i1.lon  = i2.lon AND i1.pid != i2.pid )
