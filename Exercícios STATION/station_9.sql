select cast(long_w as decimal(10,4))
from STATION
where lat_n = (select min(lat_n)
               from STATION
               where lat_n > 38.7780)
