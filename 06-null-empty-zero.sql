-- null -> is unknown /missing val
-- empty string -> known string val but it containes no char
-- zero -> actual numeric value of 0

DROP TABLE IF EXISTS basics.value_examples;

CREATE TABLE basics.value_examples(
    id SERIAL PRIMARY KEY,
    nikename TEXT,
    bio TEXT,
    score INTEGER
);

INSERT INTO basics.value_examples(nikename,bio,score)
VALUES
    -- nikename is null
    (null, 'learning postgreSQL',10),
    ('', 'empty nickname',20),
    ('Aman', '',0),
    ('Jhon', null,null);



SELECT * FROM basics.value_examples;

SELECT * FROM basics.value_examples WHERE nikename IS NULL;

SELECT * FROM basics.value_examples WHERE nikename='';

SELECT * FROM basics.value_examples WHERE score=0;

SELECT * FROM basics.value_examples WHERE nikename IS NOT NULL;

