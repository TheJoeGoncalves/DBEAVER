
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
    