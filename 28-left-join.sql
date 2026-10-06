-- sudo su - postgres -c "psql -d postgresql -f ./28-left-join.sql"


-- left join will keep all rows from left table
-- if right table has matching data ,postgreSQL will keep it
-- if not it will return null


-- posts-> left table
-- comments -> right table 

-- not all posts will have comments,some will have many some will have none

SELECT 
    posts.title AS post_title,
    comments.body AS comment_body
FROM posts
LEFT JOIN comments
    ON posts.id=comments.post_id
ORDER BY posts.title;