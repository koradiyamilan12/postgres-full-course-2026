

CREATE SCHEMA IF NOT EXISTS basics;

DROP TABLE IF EXISTS basics.students;

CREATE TABLE basics.students (
  -- auto incrementing integer
  -- 1 -> 2 -> 3 and so on
  -- primary key means this column uniquely identifies each row
  id SERIAL PRIMARY KEY,

  -- text/string data
  -- NOT NULL means this column is required
  name TEXT NOT NULL,

  -- UNIQUE means no two students can have same email
  email TEXT NOT NULL UNIQUE,

  -- age must be 18 or greater
  age INTEGER CHECK (age >= 18),

  -- stores date and time
  -- DEFAULT means if you don't give any value, PostgreSQL will use current time
  created_at TIMESTAMP DEFAULT NOW()
);


-- insert some data

INSERT INTO basics.students (name, email, age)
VALUES
  ('Milan', 'milan@gmail.com', '22'),
  ('John', 'john@gmail.com', '23');

SELECT * FROM basics.students;
