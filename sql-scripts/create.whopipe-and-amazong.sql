CREATE TABLE IF NOT EXISTS whopipe_video_views (
    view_id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    video_name TEXT NOT NULL,
    region TEXT NOT NULL,
    date_viewed TIMESTAMP DEFAULT now() NOT NULL
);

DROP TYPE IF EXISTS department;
CREATE TYPE department AS ENUM (
    'Electronics',
    'Cleaning',
    'Grocery',
    'Furniture',
    'Stationery',
    'Clothing',
    'DIY',
    'Sports',
    'Homeware',
    'Games',
    'Transport'
);

CREATE TABLE IF NOT EXISTS amazong_products (
    product_id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name TEXT NOT NULL,
    price decimal(12,2) NOT NULL,
    image TEXT,
    category department NOT NULL
);

-- -- First, remove the table if it exists
-- drop table if exists customers;

-- -- Create the table anew
-- create table customers (
--   id INTEGER primary key generated by default as identity,
--   customer_name text,
--   phone VARCHAR(30)
-- );

-- -- insert some test data
-- -- Using a multi-row insert statement here
-- insert into customers (customer_name, phone)
-- values
--   ('Sam', '555-1234'),
--   ('Ham', '555-4321'),
--   ('Ram', '555-5678');