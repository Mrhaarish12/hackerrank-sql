-- Query the average population of all cities in CITY where District is California.

-- Input Format

-- The CITY table is described as follows: CITY.jpg

--code: 
select avg(POPULATION)
from CITY
where DISTRICT="California";