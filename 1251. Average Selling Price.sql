/* Write your T-SQL query statement below */
SELECT p.product_id, 
ISNULL(ROUND(CAST(SUM(us.units * p.price) as float) / CAST(SUM(us.units) as float), 2 ), 0)as average_price FROM Prices p
LEFT JOIN UnitsSold us ON p.product_id = us.product_id AND us.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id