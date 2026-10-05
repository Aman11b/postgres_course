

DROP TABLE IF EXISTS basics.product_basics;

CREATE TABLE basics.product_basics(
    id SERIAL PRIMARY KEY,
    -- string with max length of 100 char
    name VARCHAR(100) NOT NULL,

    description TEXT,

    -- INTEGER WILL hold whole number
    stock INTEGER DEFAULT 0,

    -- larger whole number then integer
    total_views BIGINT DEFAULT 0,

    -- exaat decimal values-10 total digits ,2- digits after decimal point
    price NUMERIC(10,2),

    is_active BOOLEAN default true
);


-- sudo su - postgres -c "psql -d postgresql -f ./04-data-types.sql"

--query

INSERT INTO basics.product_basics
    (name,description,stock,total_views,price,is_active)
values
    ('product_1','product_desc',100,1200,2345.78,true),
    ('product_2','product_desc2',10,1500,245.78,false);

SELECT * FROM basics.product_basics;

SELECT id,name,price,is_active
FROM basics.product_basics
WHERE is_active;

