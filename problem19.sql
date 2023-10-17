-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

-- Input Format

-- The STATION table is described as follows:

-- Station.jpg

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

--code:
/*
Enter your query here.
*/

select distinct CITY from STATION
where regexp_like(CITY, '^[^aeiouAEIOU].*[^aeiouAEIOU]$');