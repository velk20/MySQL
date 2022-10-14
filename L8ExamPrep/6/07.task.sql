select c.id as car_id, c.make,c.mileage, count(cs.car_id) as count_of_courses,round(avg(cs.bill),2) as avg_bill
from cars as c
left join courses as cs
on c.id = cs.car_id
group by(c.id)
having count_of_courses != 2
order by count_of_courses desc,car_id