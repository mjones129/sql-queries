-- SUPER CRUD EXERCISE 1
-- Create New DB
CREATE DATABASE shirts_db;

-- Use New DB
USE shirts_db;

-- Create new table and schema
CREATE TABLE shirts (
shirt_id INT AUTO_INCREMENT PRIMARY KEY,
article VARCHAR(50),
color VARCHAR(50),
shirt_size VARCHAR(3),
last_worn INT
);

-- Insert new shirts into table
INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('tshirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 0),
('t-shirt', 'pink', 'S', 50),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

-- Show everything in shirts table
SELECT * FROM shirts;

-- Insert single shirt into table
INSERT INTO shirts (color, article, shirt_size, last_worn)
VALUE ('purple', 'polo shirt', 'M', 50);

-- Only show color and shirt type
SELECT color, article FROM shirts;

-- Show everything except shirt ID for all Medium shirts
SELECT color, article, shirt_size, last_worn FROM shirts WHERE shirt_size='M';

-- Update all polo shirts to be size large
SELECT * FROM shirts WHERE article='polo shirt';
UPDATE shirts SET shirt_size="L" WHERE article='polo shirt';

-- Update shirt last worn 15 days ago, set last_worn to 0
SELECT * FROM shirts WHERE last_worn=15;
UPDATE shirts SET last_worn=0 WHERE last_worn=15;

-- Update all white shirts, changing size to 'xs' and color to 'off white'
SELECT * FROM shirts WHERE color='white';
UPDATE shirts SET shirt_size='XS', color='off white' WHERE color='white';

-- Delete shirts last worn 200 days ago
SELECT * FROM shirts WHERE last_worn=200;
DELETE FROM shirts WHERE last_worn=200;

-- Delete all tank tops
SELECT * FROM shirts WHERE article='tank top';
DELETE FROM shirts WHERE article='tank top';

-- Delete all shirts (empty table)
SELECT * FROM shirts;
DELETE FROM shirts;

-- Delete entire table
DROP TABLE shirts;