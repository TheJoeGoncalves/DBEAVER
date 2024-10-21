
SELECT 
    f.origin, 
    AVG(w.temp) AS mean_temperature
FROM 
    flights.main.flights f
JOIN 
    flights.main.weather w
ON 
    f.origin = w.origin 
    AND f.time_hour = w.time_hour
GROUP BY 
    f.origin;
    
   
   
   
   
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
        flights
    WHERE 
        month = 1  -- January
    GROUP BY 
        origin, year, month, day
) AS daily_flight_counts
GROUP BY 
    origin;
