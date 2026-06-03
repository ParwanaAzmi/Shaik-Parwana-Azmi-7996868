SELECT 
    e.city,
    ROUND(AVG(f.rating), 2) AS average_rating,
    COUNT(f.feedback_id) AS total_feedback_submissions
FROM Events e
JOIN Feedback f 
    ON e.event_id = f.event_id
GROUP BY e.city;