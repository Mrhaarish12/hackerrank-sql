-- Write a query to print all prime numbers less than or equal to . Print your result on a single line, and use the ampersand () character as your separator (instead of a space).

-- For example, the output for all prime numbers  would be:

-- 2&3&5&7


WITH RECURSIVE Numbers as (
select 2 as n
union all 
select n + 1 from Numbers where n<1000
)
select GROUP_CONCAT(n SEPARATOR '&') as prime_numbers
from numbers
where n not in (
select distinct a.n
from Numbers a
JOIN Numbers b on a.n > 1 and b.n > 1
where a.n % b.n = 0 and a.n <> b.n
);