-- Limit returns the first 5 results:
SELECT book_id, title, released_year FROM books LIMIT 5;

-- Return the first 5 of a sorted result (ORDER BY)
SELECT book_id, title, released_year FROM books ORDER BY released_year LIMIT 5;

-- Limit a range by providing the start position, and carrying on for how many rows after that start 
-- LIMIT [start], [count]
SELECT book_id, title, released_year FROM books ORDER BY released_year LIMIT 3, 2;

-- LIMIT will not error if you provide a value that is out of bounds (more or less rows than exist) it will just return whatever it can
SELECT * FROM tbl LIMIT 95,18446744073709551615;
 
SELECT title FROM books LIMIT 5;
 
SELECT title FROM books LIMIT 5, 123219476457;
 
SELECT title FROM books LIMIT 5, 50;