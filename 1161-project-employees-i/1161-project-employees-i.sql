select p.project_id, ifnull(round(avg(e.experience_years),2),0) as average_years
from project p 
left join employee e
on p.employee_id = e.employee_id
group by p.project_id