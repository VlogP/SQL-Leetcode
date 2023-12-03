WITH 
cte_movie AS (SELECT mv.movie_id, AVG(CAST(rating as decimal)) as avg FROM MovieRating mv
WHERE Month(mv.created_at) = 2 AND YEAR(mv.created_at) = 2020
GROUP BY mv.movie_id),
cte_user AS (SELECT mv.user_id, COUNT(*) as count FROM MovieRating mv
GROUP BY mv.user_id)

SELECT results FROM (SELECT TOP(1) u.name as results FROM cte_user cte
JOIN Users u ON cte.user_id = u.user_id
ORDER BY cte.count DESC, u.name) r1

UNION ALL

SELECT results FROM (SELECT TOP(1) m.title as results FROM cte_movie cte
JOIN Movies m ON cte.movie_id = m.movie_id
ORDER BY cte.avg DESC, m.title) r2