select cast(long_w as decimal(10,4))
from STATION
where lat_n = (select max(lat_n)
               from STATION
               where lat_n < 137.2345)
