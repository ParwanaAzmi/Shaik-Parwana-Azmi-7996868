SELECT 
    e.event_id,
    e.title,
    COUNT(f.feedback_id) AS five_star_count
FROM Events e
JOIN Feedback f 
    ON e.event_id = f.event_id
WHERE f.rating = 5
GROUP BY e.event_id, e.title
ORDER BY five_star_count DESC
LIMIT 3;