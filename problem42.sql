-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

-- Input Format

-- The CITY and COUNTRY tables are described as follows: CITY.jpg

-- Country.jpg

select sum(CITY.POPULATION)
from CITY
INNER JOIN COUNTRY on CITY.COUNTRYCODE = COUNTRY.CODE 
where COUNTRY.CONTINENT = "Asia";