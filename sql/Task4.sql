SELECT 
    event_id,
    COUNT(session_id) AS session_count
FROM Sessions
WHERE time(start_time) >= '10:00:00' 
  AND time(end_time) <= '12:00:00'
GROUP BY event_id;