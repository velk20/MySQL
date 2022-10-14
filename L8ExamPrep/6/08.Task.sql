select c.full_name, count(cs.id) as count_of_cars, sum(cs.bill)as total_sum
from clients as c
join courses as cs 
on c.id = cs.client_id
join cars as ca
on ca.id = cs.car_id
where full_name like '_a%'
group by c.id
having count_of_cars >1
order by full_name