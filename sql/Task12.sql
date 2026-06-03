SELECT 
    e.event_id,
    e.title,
    COUNT(s.session_id) AS session_count
FROM Events e
JOIN Sessions s 
    ON e.event_id = s.event_id
GROUP BY e.event_id, e.title
HAVING session_count = (
    SELECT COUNT(session_id) AS max_cnt
    FROM Sessions
    GROUP BY event_id
    ORDER BY max_cnt DESC
    LIMIT 1
);