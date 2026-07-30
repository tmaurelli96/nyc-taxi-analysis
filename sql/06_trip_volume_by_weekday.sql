-- Business Question:
-- Which day of the week generates the highest number of trips?

SELECT
    STRFTIME(t.tpep_pickup_datetime, '%A') AS Day,
    COUNT(*) AS Trip_Numbers
FROM taxi_trips t
GROUP BY Day
ORDER BY Trip_Numbers DESC
LIMIT 1;
