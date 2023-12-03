/* Write your T-SQL query statement below */
SELECT machine_id, 
ROUND(((SELECT SUM(a2.timestamp) FROM Activity a2 WHERE a2.machine_id = a.machine_id AND a2.activity_type = 'end') - (SELECT SUM(a2.timestamp) FROM Activity a2 WHERE a2.machine_id = a.machine_id AND a2.activity_type = 'start'))
/ COUNT(DISTINCT process_id), 3)

as processing_time FROM Activity a
GROUP BY machine_id