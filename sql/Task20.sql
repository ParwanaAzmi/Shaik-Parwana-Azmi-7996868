SELECT 
    u.user_id,
    u.full_name,
    COALESCE(r.reg_count, 0) AS events_registered,
    COALESCE(f.feed_count, 0) AS feedback_submitted
FROM Users u
LEFT JOIN (
    SELECT user_id, COUNT(registration_id) AS reg_count 
    FROM Registrations 
    GROUP BY user_id
) r ON u.user_id = r.user_id
LEFT JOIN (
    SELECT user_id, COUNT(feedback_id) AS feed_count 
    FROM Feedback 
    GROUP BY user_id
) f ON u.user_id = f.user_id;