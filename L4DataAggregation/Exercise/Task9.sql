SELECT
 case 
	when age>=0 and age<=10 then '[0-10]'
	when age>=11 and age <=20 then '[11-20]'
    when age >=21 and age <=30 then '[21-30]'
    when age >=31 and age <=40 then '[31-40]'
    when age >=41 and age <=50 then '[41-50]'
    when age >=51 and age <=60 then '[51-60]'
    else '[61+]'
    end as `age_group`,
    count(*) as 'wizard_count'
    from wizzard_deposits
    group by `age_group`
    order by `age_group`
 