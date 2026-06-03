SELECT 
    u.user_id,
    u.full_name,
    COUNT(r.registration_id) AS total_registrations,
    MAX(r.registration_date) AS latest_registration_date
FROM Users u
JOIN Registrations r 
    ON u.user_id = r.user_id
GROUP BY u.user_id, u.full_name
HAVING COUNT(r.registration_id) > 3;