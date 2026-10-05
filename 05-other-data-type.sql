DROP TABLE IF EXISTS basics.app_events;

CREATE TABLE basics.app_events(
    -- UUID -> unique ID 
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    event_name TEXT NOT NULL,

    -- JSONB -> json data in binary
    metadata JSONB DEFAULT '{}'::jsonb,

    created_At TIMESTAMP DEFAULT NOW()

);


-- sudo su - postgres -c "psql -d postgresql"
-- postgresql=# \dt basics.*

INSERT INTO basics.app_events(event_name,metadata)
VALUES
(
    'sign-up',
    '{"browser":"chrome"}'
),
(
    'sign-in',
    '{"user":"aman"}'
);


SELECT * FROM basics.app_events;


SELECT 
    event_name, 
    metadata ->> 'browser' AS browser
FROM basics.app_events
WHERE metadata ? 'browser';


-- sudo su - postgres -c "psql -d postgresql -f ./05-other-data-type.sql"