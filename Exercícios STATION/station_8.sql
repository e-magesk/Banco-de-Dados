select cast(min(lat_n) as decimal(10,4))
from STATION
where lat_n > 38.7780 
