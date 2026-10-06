-- count unique values
-- used when join create repeted rows

-- how many unique posts conncted to each tags

-- sudo su - postgres -c "psql -d postgresql -f ./33-count-distinct.sql"

SELECT 
    t.name AS tag_name,
    COUNT( DISTINCT p.id) as toatle_unique_post
FROM tags AS t
LEFT JOIN post_tags AS pt
    ON t.id =pt.tag_id
LEFT JOIN posts AS p 
    ON pt.post_id =p.id 
GROUP BY t.id,t.name
ORDER BY toatle_unique_post DESC;