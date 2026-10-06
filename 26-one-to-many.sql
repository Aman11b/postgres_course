-- sudo su - postgres -c "psql -d postgresql -f ./26-one-to-many.sql"

-- one parent row can have multiple child row

-- users - parent table
-- posts - child table

-- posts.user_id -> user.id
-- posts.user_id stores that originla user if inside the posts table

-- show all post with there authours

SELECT 
    users.name AS authour_name,
    posts.title AS post_title
FROM users
INNER JOIN posts
    ON users.id=posts.user_id
ORDER BY users.name, posts.title;