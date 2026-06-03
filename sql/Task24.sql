SELECT 
    e.event_id,
    e.title,
    ROUND(AVG((STRFTIME('%s', s.end_time) - STRFTIME('%s', s.start_time)) / 60.0), 2) AS avg_session_duration_minutes
FROM Events e
JOIN Sessions s 
    ON e.event_id = s.event_id
GROUP BY e.event_id, e.title;