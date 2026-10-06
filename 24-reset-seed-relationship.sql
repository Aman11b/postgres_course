-- sudo su - postgres -c "psql -d postgresql -f ./24-reset-seed-relationship.sql"

CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS post_tags;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS users;


CREATE TABLE users(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL
);

CREATE TABLE posts(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id),
    title TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'draft'
        CHECK (status IN ('draft','published')),
    views INTEGER NOT NULL DEFAULT 0 CHECK (views>=0)
);


CREATE TABLE comments(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    post_id UUID NOT NULL REFERENCES posts(id),
    body TEXT NOT NULL
);

CREATE TABLE tags(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE
);



-- Composite key-> multiple fileds together form unique ID
CREATE TABLE post_tags(
    post_id UUID NOT NULL REFERENCES posts(id),
    tag_id UUID NOT NULL REFERENCES tags(id),
    PRIMARY KEY (post_id,tag_id)
);

-- Seeding

INSERT INTO users (name)
VALUES
  ('Ananya'),
  ('Rahul');


INSERT INTO posts(user_id,title,status,views)
SELECT id, 'PostgreSQL Join','published',100
FROM users
WHERE name = 'Ananya';
-- Parser reads it Order of exe will be -Always execute SELECT first and then result

INSERT INTO posts(user_id,title,status,views)
SELECT id, 'Indexes for beginner','draft',40
FROM users
WHERE name = 'Ananya';

INSERT INTO posts(user_id,title,status,views)
SELECT id, 'Backend APIs','published',180
FROM users
WHERE name = 'Rahul';


INSERT INTO comments (post_id,body)
SELECT id, 'Very clear explaination.'
FROM posts
WHERE title='PostgreSQL Join';

INSERT INTO comments (post_id,body)
SELECT id, 'Please add more examples.'
FROM posts
WHERE title='Backend APIs';

INSERT INTO tags (name) VALUES 
    ('sql'),
    ('backend');

INSERT INTO post_tags (post_id,tag_id)
SELECT p.id ,t.id
FROM posts p,tags t
WHERE p.title='PostgreSQL Join'
    AND t.name='sql';


INSERT INTO post_tags (post_id,tag_id)
SELECT p.id ,t.id
FROM posts p,tags t
WHERE p.title='Indexes for beginner'
    AND t.name='sql';

INSERT INTO post_tags (post_id,tag_id)
SELECT p.id ,t.id
FROM posts p,tags t
WHERE p.title='Backend APIs'
    AND t.name='backend';

SELECT 'reduced database reset and sample data inserted successful.' AS message;

-- sudo su - postgres -c "psql -d postgresql -f ./24-reset-seed-relationship.sql"