SELECT 
    registration_date,
    COUNT(user_id) AS new_user_count
FROM Users
GROUP BY registration_date
ORDER BY registration_date DESC;