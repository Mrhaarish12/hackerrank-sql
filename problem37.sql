-- Query the smallest Northern Latitude (LAT_N) from STATION that is greater than . Round your answer to  decimal places.

-- Input Format

-- The STATION table is described as follows:

-- Station.jpg

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

--code:
select round(min(LAT_N),4)
from STATION
where LAT_N > 38.7780;