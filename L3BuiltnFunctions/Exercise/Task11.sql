select peak_name,river_name,
concat(lower(peak_name),lower(substr(river_name,2))) as `mix`
from peaks,rivers
where right(peak_name,1) = left(river_name,1)
order by mix