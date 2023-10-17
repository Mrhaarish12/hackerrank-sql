-- Generate the following two result sets:

-- Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
-- Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

-- There are a total of [occupation_count] [occupation]s.
-- where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

-- Note: There will be at least two entries in the table for each type of occupation.

-- Input Format

-- The OCCUPATIONS table is described as follows:  Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

-- Sample Input

-- An OCCUPATIONS table that contains the following records:



-- Sample Output

-- Ashely(P)
-- Christeen(P)
-- Jane(A)
-- Jenny(D)
-- Julia(A)
-- Ketty(P)
-- Maria(A)
-- Meera(S)
-- Priya(S)
-- Samantha(D)
-- There are a total of 2 doctors.
-- There are a total of 2 singers.
-- There are a total of 3 actors.
-- There are a total of 3 professors.
-- Explanation

-- The results of the first query are formatted to the problem description's specifications.
-- The results of the second query are ascendingly ordered first by number of names corresponding to each profession (), and then alphabetically by profession (, and ).

-- SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.') AS result
-- FROM OCCUPATIONS
-- GROUP BY LOWER(Occupation)
-- ORDER BY COUNT(*), LOWER(Occupation);

-- 1
-- SELECT CONCAT(name, '(', UPPER(LEFT(Occupation, 1)), ')') AS formatted_result
-- 2
-- FROM OCCUPATIONS
-- 3
-- ORDER BY formatted_result;
-- 4
-- ​
-- 5
-- SELECT CONCAT('There are a total of ', occupation_count, ' ', occupation, 's.') AS result
-- 6
-- FROM (
-- 7
--   SELECT COUNT(*) AS occupation_count, LOWER(Occupation) AS occupation
-- 8
--   FROM OCCUPATIONS
-- 9
--   GROUP BY LOWER(Occupation)
-- 10
-- ) AS subquery
-- 11
-- ORDER BY occupation_count, occupation;
-- 12
-- ​
-- Line: 12 Col: 1
-- Run Code Submit CodeUpload Code as File
-- Congratulations!

-- You have passed the sample test cases. Click the submit button to run your code against all the test cases.


-- Sample Test case 0
-- Your Output (stdout)
-- Aamina(D)
-- Ashley(P)
-- Belvet(P)
-- Britney(P)
-- Christeen(S)
-- Eve(A)
-- Jane(S)
-- Jennifer(A)
-- Jenny(S)
-- Julia(D)
-- Ketty(A)
-- Kristeen(S)
-- Maria(P)
-- Meera(P)
-- Naomi(P)
-- Priya(D)
-- Priyanka(P)
-- Samantha(A)
-- There are a total of 3 doctors.
-- There are a total of 4 actors.
-- There are a total of 4 singers.
-- There are a total of 7 professors.
-- Blog

--code:
SELECT CONCAT(name, '(', UPPER(LEFT(Occupation, 1)), ')') AS formatted_result
FROM OCCUPATIONS
ORDER BY formatted_result;

SELECT CONCAT('There are a total of ', occupation_count, ' ', occupation, 's.') AS result
FROM (
  SELECT COUNT(*) AS occupation_count, LOWER(Occupation) AS occupation
  FROM OCCUPATIONS
  GROUP BY LOWER(Occupation)
) AS subquery
ORDER BY occupation_count, occupation;
