-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
-- The CITY table is described as follows:
-- CITY.jpg

--code:

select * from CITY 
where COUNTRYCODE='USA' and POPULATION >100000;