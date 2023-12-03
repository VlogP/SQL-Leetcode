/* Write your T-SQL query statement below */

SELECT LEFT(ts.trans_date, '7') as month, 
ts.country, COUNT(*) as trans_count, COUNT(CASE WHEN state = 'approved' THEN amount ELSE NULL END) as approved_count, SUM(ts.amount) as trans_total_amount, SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) as approved_total_amount FROM Transactions ts
GROUP BY LEFT(ts.trans_date, '7'), ts.country