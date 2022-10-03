insert into actors(first_name,last_name,birthdate,height,awards,country_id)
 (select REVERSE(first_name),REVERSE(last_name),DATE_ADD(birthdate, interval -2 day),(height+10) ,country_id, 3
from actors where id <=10)

