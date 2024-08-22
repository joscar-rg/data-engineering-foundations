-- POSTGRES_PASSWORD=password
-- POSTGRES_HOST_AUTH_METHOD=trust

CREATE DATABASE etl_pipelline;

-- \c -- shows current conn info
-- \l -- shows databases
-- \dt -- shows tables
-- \c etl_pipeline;

CREATE TABLE movies (
id SERIAL PRIMARY KEY,
name VARCHAR(255),
description VARCHAR(255),
category VARCHAR(255)
);

CREATE TABLE users (
id SERIAL PRIMARY KEY,
movie_id INTEGER,
rating INTEGER,
FOREIGN KEY (movie_id) REFERENCES movies (id) ON DELETE SET NULL
);