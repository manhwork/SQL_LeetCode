select distinct l1.num ConsecutiveNums 
from Logs l1 
inner join Logs l2 on l1.id+1 = l2.id 
inner join Logs l3 on l1.id+2 = l3.id
where l2.num = l1.num 
and l3.num = l1.num 