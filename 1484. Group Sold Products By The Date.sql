/* Write your T-SQL query statement below */
SELECT sell_date, COUNT(*) as num_sold, STRING_AGG(product, ',') WITHIN GROUP (ORDER BY product ASC) as products FROM (select distinct * from activities) c  
GROUP BY  sell_date     