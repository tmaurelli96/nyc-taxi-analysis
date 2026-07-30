-- Business Question:
-- How does revenue evolve over time?

SELECT
    STRFTIME(t.tpep_pickup_datetime, '%Y-%m') AS Period_Year_Month,
    SUM(t.total_amount) AS Revenue
FROM taxi_trips t
GROUP BY Period_Year_Month
ORDER BY Period_Year_Month;
