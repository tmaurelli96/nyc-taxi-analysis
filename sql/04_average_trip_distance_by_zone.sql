-- Business Question:
-- Which pickup zones have the highest average trip distance?

SELECT
    z.Zone,
    AVG(t.trip_distance) AS Average_Distance
FROM taxi_trips t
INNER JOIN taxi_zones z
    ON t.PULocationID = z.LocationID
GROUP BY z.Zone
ORDER BY Average_Distance DESC
LIMIT 5;
