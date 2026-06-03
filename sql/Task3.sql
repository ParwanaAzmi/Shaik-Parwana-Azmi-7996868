SELECT 
    user_id,
    full_name,
    email,
    city
FROM Users
WHERE user_id NOT IN (
    SELECT user_id 
    FROM Registrations 
    WHERE registration_date >= date((SELECT MAX(registration_date) FROM Registrations), '-90 days')
);