SELECT distinct 
    i1.num as ConsecutiveNums 
FROM 
    logs i1,
    logs i2,
    logs i3
WHERE 
    i3.id=i2.id+1 AND 
    i2.id=i1.id+1 AND 
    i1.num=i2.num AND 
    i2.num=i3.num