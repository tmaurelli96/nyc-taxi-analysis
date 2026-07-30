-- Business Question:
-- Which boroughs generate more than $1,000,000 in revenue?

SELECT
    z.Borough,
    SUM(t.total_amount) AS Revenue
FROM taxi_trips t
INNER JOIN taxi_zones z
    ON t.PULocationID = z.LocationID
GROUP BY z.Borough
HAVING SUM(t.total_amount) > 1000000
ORDER BY Revenue DESC;
