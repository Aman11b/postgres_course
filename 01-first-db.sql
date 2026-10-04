-- never use it on porduction only for learning
DROP DATABASE IF EXISTS postgresql;

-- create new DB inside ur server
CREATE DATABASE postgresql

-- -> Connect to the existing postgres database, then execute this SQL script.

-- psql(CLI- PostgreSQL command-line client.) 
-- -U aman(User- Connect to PostgreSQL as the PostgreSQL role/user named aman.) 
-- -d postgres(DB- Connect to the database named postgres.) 
-- -h localhost(Host-> Connect to PostgreSQL through the network interface at localhost) 
-- -f ./01-first-db.sql(File- Don't wait for me to type SQL commands manually. Read the SQL commands from this file.)



-- psql -U aman -d postgres ./first-db.sql 
-- SELECT current_database();
-- SELECT current_user;
-- SELECT version();
-- \l -> all tables
-- \dt -> all DBs
-- \q -> exit