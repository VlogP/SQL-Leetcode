/* Write your T-SQL query statement below */
SELECT p.product_Id as product_Id, s.year as first_year, s.quantity, s.price FROM Product p
JOIN Sales s ON p.product_id = s.product_id
GROUP BY p.product_Id, s.year, s.quantity, s.price
HAVING s.year = (SELECT MIN(year) FROM Sales s2 WHERE s2.product_id = p.product_Id)