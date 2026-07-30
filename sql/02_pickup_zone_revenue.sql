-- Business Question:
-- Which pickup zones generate the highest revenue?

SELECT
    z.Zone,
    SUM(t.total_amount) AS Revenue
FROM taxi_trips t
INNER JOIN taxi_zones z
    ON t.PULocationID = z.LocationID
GROUP BY z.Zone
ORDER BY Revenue DESC
LIMIT 5;
