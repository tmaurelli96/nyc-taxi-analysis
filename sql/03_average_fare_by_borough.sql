-- Business Question:
-- What is the average fare by borough?

SELECT
    z.Borough,
    AVG(t.fare_amount) AS Average_Fare
FROM taxi_trips t
INNER JOIN taxi_zones z
    ON t.PULocationID = z.LocationID
GROUP BY z.Borough
ORDER BY Average_Fare DESC;
