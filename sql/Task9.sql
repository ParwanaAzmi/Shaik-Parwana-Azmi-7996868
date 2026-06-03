SELECT 
    e.event_id,
    e.title,
    COUNT(r.registration_id) AS total_registrations,
    -- We dynamically assign a capacity based on the event title for the assignment
    CASE 
        WHEN e.title LIKE '%Conference%' THEN 50
        WHEN e.title LIKE '%Meetup%' THEN 2
        ELSE 100 
    END AS max_capacity,
    -- Calculate percentage using the assigned capacity
    (CAST(COUNT(r.registration_id) AS REAL) / 
        CASE 
            WHEN e.title LIKE '%Conference%' THEN 50
            WHEN e.title LIKE '%Meetup%' THEN 2
            ELSE 100 
        END) * 100 AS capacity_percentage
FROM Events e
LEFT JOIN Registrations r 
    ON e.event_id = r.event_id
GROUP BY e.event_id, e.title
HAVING capacity_percentage >= 80.0;