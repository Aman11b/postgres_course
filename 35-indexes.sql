-- help postgreSQL find rows faster

-- it jumps closer to data ,with index,like book

-- SELECT
--     id,
--     title,
--     status,
--     views,
--     user_id
-- FROM posts;

-- /posts?status=published

SELECT 
    id,
    title,
    status
FROM posts
WHERE status ='published'

-- idx [index] posts [table name] status [column name]
CREATE INDEX IF NOT EXISTS idx_posts_status
ON posts(status);


SELECT 
    title,
    status,
    views
FROM posts
WHERE status='published'
ORDER BY views DESC;

-- composite index
CREATE INDEX IF NOT EXISTS idx_posts_status_views
ON posts(status,views DESC);


-- GET : users/:id/posts
SELECT 
    title,
    status,
    views
FROM posts
WHERE user_id=(
    SELECT id
    FROM users
    WHERE name='rahul'
);

CREATE INDEX IF NOT EXISTS idx_posts_user_id
ON posts(user_id);