select cast(max(lat_n) as decimal(10,4))
from STATION
where lat_n < 137.2345
