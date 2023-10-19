-- Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

-- Input Format

-- The CITY and COUNTRY tables are described as follows: CITY.jpg

-- Country.jpg

select COUNTRY.CONTINENT, Floor(avg(CITY.POPULATION))
from COUNTRY,CITY
where COUNTRY.Code = CITY.CountryCode
group by COUNTRY.CONTINENT;
-- Line: 1 Col: 53
-- Run Code Submit CodeUpload Code as File
-- Congratulations!

-- You have passed the sample test cases. Click the submit button to run your code against all the test cases.


-- Sample Test case 0
-- Your Output (stdout)
-- Asia 693038
-- Europe 175138
-- Oceania 109189
-- South America 147435
-- Africa 274439
-- BlogScoring