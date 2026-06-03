SELECT 
    user_id,
    full_name,
    email,
    city,
    registration_date
FROM Users
WHERE user_id NOT IN (
    SELECT DISTINCT user_id 
    FROM Registrations
);