select distinct city
from STATION
where not (city like "%a" or
       city like "%e" or
       city like "%i" or
       city like "%o" or
       city like "%u") or not
      (city like "A%" or
       city like "E%" or
       city like "I%" or
       city like "O%" or
       city like "U%")
