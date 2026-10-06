-- sudo su - postgres -c "psql -d postgresql -f ./25-foreign-key.sql"

-- colume that points to primary key of othr table

SELECT id, name
FROM users;

SELECT id, user_id,title
FROM posts;