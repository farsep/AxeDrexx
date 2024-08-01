--Creating users table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (username),
    UNIQUE (email),
    CHECK (char_length(username) > 0),
    CHECK (char_length(password) > 0),
    CHECK (char_length(email) > 0),
    CHECK (char_length(username) <= 255),
    CHECK (char_length(password) <= 255)
);