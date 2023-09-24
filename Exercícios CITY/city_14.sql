select sum(CITY.population)
from CITY, COUNTRY
where CITY.countrycode = COUNTRY.code and continent = "Asia"
