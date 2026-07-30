-- Business Question:
-- Rank pickup zones by revenue within each borough.

SELECT
    z.Borough,
    z.Zone,
    SUM(t.total_amount) AS Revenue,
    RANK() OVER
    (
        PARTITION BY z.Borough
        ORDER BY SUM(t.total_amount) DESC
    ) AS Revenue_Rank
FROM taxi_trips t
INNER JOIN taxi_zones z
    ON t.PULocationID = z.LocationID
GROUP BY
    z.Borough,
    z.Zone;
