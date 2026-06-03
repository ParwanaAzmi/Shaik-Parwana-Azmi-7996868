SELECT 
    STRFTIME('%Y-%m', registration_date) AS registration_month,
    COUNT(registration_id) AS total_registrations
FROM Registrations
GROUP BY registration_month
ORDER BY registration_month ASC;