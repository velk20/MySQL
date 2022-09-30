update addresses
set country =
	case 
		when left(country,1) = 'B' then 'Blocked'
        when left(country,1) = 'T' then 'Test'
        when left(country,1) = 'P' then 'In Progress'
        end where left(country,1) in ('B','T','P');