select top 1 s.person_name from ( select person_name , sum(weight)over(order by turn asc) as total 
from queue) s where s.total<=1000
order  by s.total desc