-- Business Question:
-- Create a revenue summary by pickup zone.

WITH Revenue_Summary AS
(
    SELECT
        z.Zone,
        SUM(t.total_amount) AS Revenue
    FROM taxi_trips t
    INNER JOIN taxi_zones z
        ON t.PULocationID = z.LocationID
    GROUP BY z.Zone
)

SELECT *
FROM Revenue_Summary
ORDER BY Revenue DESC;
