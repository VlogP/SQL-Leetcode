/* Write your T-SQL query statement below */
SELECT t.teacher_id, COUNT(*) as cnt FROM (SELECT DISTINCT teacher_id, subject_id  FROM Teacher t) as t
GROUP BY t.teacher_id

