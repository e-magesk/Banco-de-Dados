select CITY.name
from CITY, COUNTRY
where continent = "Africa" and CITY.countrycode = COUNTRY.code
