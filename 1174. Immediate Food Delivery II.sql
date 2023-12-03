/* Write your T-SQL query statement below */

with percentTable as (
SELECT d.customer_id, 
COUNT(CASE WHEN d.order_date = d.customer_pref_delivery_date THEN 1 ELSE NULL END)
as counter
FROM Delivery d
GROUP BY d.customer_id, d.order_date
HAVING d.order_date = (SELECT MIN(d2.order_date) FROM Delivery d2 WHERE d2.customer_id = d.customer_id))

SELECT ROUND(CAST(COUNT(CASE WHEN counter <> 0 THEN 1 ELSE NULL END) as decimal) / CAST(COUNT(*) as decimal), 4) * 100 as immediate_percentage  FROM percentTable