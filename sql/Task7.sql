SELECT 
    e.event_id,
    e.title,
    CASE 
        WHEN COUNT(f.feedback_id) = 0 THEN 'No Feedback'
        ELSE ROUND(AVG(f.rating), 2)
    END AS average_rating
FROM Events e
LEFT JOIN Feedback f 
    ON e.event_id = f.event_id
GROUP BY e.event_id, e.title
HAVING COUNT(f.feedback_id) = 0 OR AVG(f.rating) < 3.5;