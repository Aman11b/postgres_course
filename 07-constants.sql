-- not null
-- unique
-- default
-- check


DROP TABLE IF EXISTS basics.accounts;

CREATE TABLE basics.accounts(
    id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    is_active BOOLEAN default true,
    age INTEGER CHECK (age>=18),
    created_at TIMESTAMP default NOW()
);

insert into basics.accounts (full_name,email,age)
VALUES
    ('aman', 'aman@gamil.com',19),
    ('shivam', 'shivam@gamil.com',45);


-- sudo su - postgres -c "psql -d postgresql -f ./07-constants.sql"
-- sudo su - postgres -c "psql -d postgresql"


SELECT * from basics.accounts;

