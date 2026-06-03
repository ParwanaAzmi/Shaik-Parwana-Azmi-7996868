SELECT 
    s1.event_id,
    s1.title AS session_one_title,
    s1.start_time AS session_one_start,
    s2.title AS session_two_title,
    s2.start_time AS session_two_start
FROM Sessions s1
JOIN Sessions s2 
    ON s1.event_id = s2.event_id 
    AND s1.session_id < s2.session_id
WHERE s1.start_time < s2.end_time 
  AND s1.end_time > s2.start_time;