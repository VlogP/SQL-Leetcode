/* Write your T-SQL query statement below */
SELECT p1.product_name, SUM(o1.unit) as unit  FROM Products p1
JOIN Orders o1 ON p1.product_id = o1.product_id AND MONTH(o1.order_date) = 2 AND YEAR(o1.order_date) = 2020
GROUP BY p1.product_id, p1.product_name
HAVING SUM(o1.unit) >= 100