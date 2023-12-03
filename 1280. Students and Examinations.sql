/* Write your T-SQL query statement below */
SELECT DISTINCT s.student_id, s.student_name, sub.subject_name, (SELECT COUNT(*) FROM Examinations ex2 where ex2.subject_name = sub.subject_name AND ex2.student_id = s.student_id) as attended_exams  FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations ex ON ex.student_id = s.student_id
GROUP BY s.student_id, sub.subject_name, s.student_name
ORDER BY s.student_id, sub.subject_name