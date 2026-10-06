-- nested sql query

-- inner query firsta nd then outer query

SELECT 
    title,
    status,
    views
FROM posts
WHERE views > (
    SELECT AVG(views)
    FROM posts
)
ORDER BY views DESC;