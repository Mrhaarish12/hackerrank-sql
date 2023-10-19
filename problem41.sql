-- A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.

-- Input Format

-- The STATION table is described as follows:

-- Station.jpg

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

SELECT ROUND(LAT_N, 4)
FROM (
    SELECT LAT_N, ROW_NUMBER() OVER (ORDER BY LAT_N) AS Rownum
    FROM STATION
) AS temp_table
WHERE Rownum = (
    SELECT ROUND((COUNT(Rownum) / 2), 0)
    FROM STATION
)
