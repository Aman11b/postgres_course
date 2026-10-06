-- lets you run multiple SQL state as same unit

-- place an order, 
-- reduce stock,
-- creating payment record,
-- trasnferig money
-- create user record with realted profile data

-- multilple DB changes must succed together


-- start transaction

BEGIN;

UPDATE  posts
SET status='published'
WHERE title= 'Indexes for beginner'
    AND status = 'draft';

UPDATE posts
SET views =views + 50
WHERE title= 'Indexes for beginner';


SELECT 
    title,
    status,
    views
FROM posts
WHERE title= 'Indexes for beginner';

COMMIT;

-- rollback -> cancel all changes