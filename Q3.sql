WITH ranked_destinations AS (
    SELECT 
        origin, 
        dest, 
        COUNT(*) AS n,
        ROW_NUMBER() OVER (PARTITION BY origin ORDER BY COUNT(*) DESC) AS rank
    FROM 
        flights.main.flights
    GROUP BY 
        origin, dest
)
SELECT 
    origin, 
    dest, 
    n
FROM 
    ranked_destinations
WHERE 
    rank = 1;
