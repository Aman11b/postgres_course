-- sudo su - postgres -c "psql -d postgresql -f ./27-inner-join.sql"

-- INNER JOIN -> return only the matching rows from both tables
-- INNER JOIN HIDEs the filed whihc is empty
SELECT
    users.name AS authour_name,
    posts.title AS post_title,
    posts.status,
    posts.views
FROM posts
INNER JOIN users
    ON posts.user_id=users.id;

SELECT
    users.name AS authour_name,
    posts.title AS post_title,
    posts.status,
    posts.views
FROM posts
INNER JOIN users
    ON posts.user_id=users.id
WHERE posts.status='published'
ORDER BY posts.views DESC;