select w1.id 
from weather w1
where w1.temperature > (
    select temperature 
    from weather w2
    where w2.recordDate = date_sub(w1.recordDate,interval 1 day)
)