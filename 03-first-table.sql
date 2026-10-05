-- store one type of data
-- table lives in schema

DROP TABLE IF EXISTS basics.students;

CREATE TABLE basics.students(
    -- create an auto increment INTEGER
    -- PRIMARY KEY means it uniquely identifies
    id SERIAL PRIMARY KEY,
    -- TEXT -> STRING DATA
    -- not null -> required
    name TEXT NOT NULL,

    -- no 2 students can have same email
    email TEXT NOT NULL UNIQUE,

    age INTEGER CHECK(age>=18),

-- timstamp -> stores date and time format
-- default -> will take on its own

    created_at TIMESTAMP DEFAULT NOW()

);

--  psql -U aman -d postgresql -h localhost -f ./03-first-table.sql
-- postgresql=> \dt basics.*

-- 'Aman'       → string value
-- "Aman"       → identifier

-- insert data

INSERT INTO basics.students (name,email,age)
VALUES 
('Aman','aman@gamil.com',33),
('vman','vman@gamil.com',23);

-- postgresql=> SELECT * from basics.students;

SELECT * FROM basics.students;


--  sudo su - postgres -c "psql -d postgresql -f ./03-first-table.sql"