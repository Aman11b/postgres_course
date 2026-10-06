-- sudo su - postgres -c "psql -d postgresql -f ./31-aggregate-function.sql"


-- always calculate on result from many rows
-- COUNT()-> numbe rof rows
-- SUM()->totale values
-- AVG()->averate value
-- MIN()-> smallest value
-- MAX()-> largest value

SELECT 
    COUNT(*) AS total_post
FROM posts;

SELECT 
    COUNT(*) AS total_post,
    COUNT(*) FILTER (WHERE status='published') AS published_posts,
    SUM(views) AS total_views,
    AVG(views) AS average_views,
    MIN(views) AS lowest_views,
    MAX(views) AS maximum_views
FROM posts;


