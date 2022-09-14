SELECT deposit_group, is_deposit_expired,
avg(deposit_interest) as `average_interest` 	
FROM gringotts.wizzard_deposits
where 	deposit_start_date > '1985-01-01'
group by deposit_group,is_deposit_expired
order by deposit_group desc, is_deposit_expired
