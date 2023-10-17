-- Query the difference between the maximum and minimum populations in CITY.

-- Input Format

-- The CITY table is described as follows: CITY.jpg
--code:

select (max(POPULATION) - min(POPULATION)) as difference
from CITY;
