-- Business Question:
-- Which boroughs generate the highest number of trips?

SELECT
    z.Borough,
    COUNT(*) AS Trip_Number
FROM taxi_trips t
INNER JOIN taxi_zones z
    ON t.PULocationID = z.LocationID
GROUP BY z.Borough
ORDER BY Trip_Number DESC
LIMIT 5;
