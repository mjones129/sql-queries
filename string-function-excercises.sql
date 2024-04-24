-- String function exerceises

-- reverse and uppercase the following string (single query):
-- "Why does my cat look at me with such hatred?"
SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));

-- What does the following evaluate to?
SELECT
	REPLACE
    (
    CONCAT('I', ' ', 'like', ' ', 'cats'),
    ' ',
    '-'
    );
-- 'I-like-cats'
    
-- Write a query using the books table that replaces spaces in titles with '->' and name the column title
SELECT 
    REPLACE(title, ' ', '->')
FROM
    books;

-- Write a query outputing 2 columns. 1st named 'forwards' with author's first name and 2nd named 'backwards' with author's first name printed backwards
SELECT 
    author_fname AS forwards, REVERSE(author_fname) AS backwards
FROM
    books;

-- Write a query resulting in one table named 'full name in caps' that outputs authors full name in all caps
SELECT 
    CONCAT(UPPER(author_fname),
            ' ',
            UPPER(author_lname)) AS 'full name in caps'
FROM
    books;
-- Write a query resulting in one table named 'blurb' that combines book title with 'was released in' and the release year.
SELECT 
    CONCAT(title,
            ' was released in ',
            released_year) AS blurb
FROM
    books;

-- Print book titles and the length of each book title (two columns named 'title' and 'character count' respectively
SELECT 
    title AS title, CHAR_LENGTH(title) AS 'character count'
FROM
    books;

-- FINAL BOSS
-- Output 3 columns. First named 'short title' that outputs the first 10 characters of a book title, truncated by '...'. The next column named 'author' outputs auther's lastname, comma, first name. The final column named 'quantity' outputs the quantity and 'in stock'.
SELECT 
    CONCAT(LEFT(title, 10), '...') AS 'short title',
    CONCAT(author_lname, ', ', author_fname) AS 'author',
    CONCAT(stock_quantity, ' in stock') AS 'quantity'
FROM
    books;
