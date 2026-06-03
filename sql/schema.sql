CREATE TABLE IF NOT EXISTS Users (
    user_id INTEGER PRIMARY KEY,
    full_name TEXT,
    email TEXT,
    city TEXT,
    registration_date DATE
);

CREATE TABLE IF NOT EXISTS Events (
    event_id INTEGER PRIMARY KEY,
    title TEXT,
    description TEXT,
    city TEXT,
    start_date DATETIME,
    end_date DATETIME,
    status TEXT,
    organizer_id INTEGER
);

CREATE TABLE IF NOT EXISTS Registrations (
    registration_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    event_id INTEGER,
    registration_date DATE
);

CREATE TABLE IF NOT EXISTS Sessions (
    session_id INTEGER PRIMARY KEY,
    event_id INTEGER,
    title TEXT,
    speaker_name TEXT,
    start_time DATETIME,
    end_time DATETIME
);

CREATE TABLE IF NOT EXISTS Feedback (
    feedback_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    event_id INTEGER,
    rating INTEGER,
    comments TEXT,
    feedback_date DATE
);

CREATE TABLE IF NOT EXISTS Resources (
    resource_id INTEGER PRIMARY KEY,
    event_id INTEGER,
    resource_type TEXT,
    resource_url TEXT,
    uploaded_at DATETIME
);