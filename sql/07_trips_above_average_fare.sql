-- Business Question:
-- Which trips have a fare amount above the average fare?

SELECT *
FROM taxi_trips t
WHERE t.fare_amount >
(
    SELECT AVG(fare_amount)
    FROM taxi_trips
);
