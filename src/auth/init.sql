-- Create the user only if it doesn't exist
CREATE USER IF NOT EXISTS 'auth_user'@'localhost' IDENTIFIED BY 'Aauth123';

-- Create the database only if it doesn't exist
CREATE DATABASE IF NOT EXISTS auth;

-- Grant privileges only if the user and database exist
GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'localhost';

-- Switch to the 'auth' database
USE auth;

-- Create the 'user' table
CREATE TABLE user (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(225) NOT NULL UNIQUE,
    password VARCHAR(225) NOT NULL
);

-- Insert sample data into the 'user' table
INSERT INTO user (email, password) VALUES ('athish@gmail.com', 'Athish@123');
