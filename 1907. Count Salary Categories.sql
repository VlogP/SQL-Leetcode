/* Write your T-SQL query statement below */
SELECT 'Low Salary' as category, COUNT(CASE WHEN income < 20000 THEN account_id ELSE NULL END) as accounts_count FROM Accounts
UNION
SELECT 'Average Salary' as category, COUNT(CASE WHEN income >= 20000 AND income <= 50000  THEN account_id ELSE NULL END) as accounts_count  FROM Accounts
UNION
SELECT 'High Salary' as category, COUNT(CASE WHEN income > 50000 THEN account_id ELSE NULL END) as accounts_count  FROM Accounts