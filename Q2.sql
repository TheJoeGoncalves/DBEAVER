
   SELECT 
    origin, 
    AVG(daily_flights) AS avg_flights_per_day
FROM (
    SELECT 
        origin, 
        year, 
        month, 
        day, 
        COUNT(*) AS daily_flights
    FROM 
        flights.main.flights
    WHERE 
        month = 1  -- January
    GROUP BY 
        origin, year, month, day
) AS daily_flight_counts
GROUP BY 
    origin;
   