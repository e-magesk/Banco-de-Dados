select (count(*) - (select count(distinct city) from STATION)) as DIFF
from STATION
