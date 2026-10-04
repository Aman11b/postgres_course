-- folder inside DB
-- DB -> schema -> table -> rows

-- if not exists prevents error if DB already exists
CREATE schema IF NOT EXISTS basics;

-- create uuid
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- query
SELECT schema_name
from information_schema.schemata
ORDER BY schema_name;

-- psql -U aman -d postgres -h localhost -f ./02-first-schema.sql