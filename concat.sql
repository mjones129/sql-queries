-- CONCAT functions

-- Add string after all first names
SELECT CONCAT(author_fname, '???') FROM books;

-- combine first and last name (no space between)
SELECT CONCAT(author_fname, author_lname) FROM books;

-- combine first and last name (with space between)
SELECT CONCAT(author_fname, ' ', author_lname) FROM books;

-- combine first and list name (with space and rename the ouput table as author_name)
SELECT CONCAT(author_fname, ' ', author_lname) AS author_name FROM books;

-- Concatenate WS (With Separator). The first argument will be the separator between each addtional argument)
SELECT CONCAT_WS('!','Hi','Bye','LOL');

-- add a dash in front of title, full name, no spaces
SELECT CONCAT('-',title, author_fname, author_lname);

-- separate title, first name and last name with a dash
SELECT CONCAT_WS('-', title, author_fname, author_lname) FROM books;