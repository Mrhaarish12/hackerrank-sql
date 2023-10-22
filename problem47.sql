-- P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

-- * 
-- * * 
-- * * * 
-- * * * * 
-- * * * * *
-- Write a query to print the pattern P(20).

--code:
/*
Enter your query here.
*/
set @Temp:=0;
select repeat('* ',@Temp:=@Temp+1)
from INFORMATION_SCHEMA.TABLES
where @Temp<20;
