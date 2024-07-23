select r.contest_id, round(count(distinct r.user_id)*100/count(distinct u.user_id),2) as percentage
from users u, register r
group by r.contest_id
order by -percentage, r.contest_id
