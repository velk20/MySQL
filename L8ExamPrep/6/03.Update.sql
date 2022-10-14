update cars as c
set c.`condition`  = 'C'
where (c.mileage >= 800000 or c.mileage is null) and c.`year` <= 2010 and c.make not like '%Mercedes-Benz%'  