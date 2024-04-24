-- String function exerceises

-- reverse and uppercase the following string (single query):
-- "Why does my cat look at me with such hatred?"

-- What does the following evaluate to?
SELECT
	REPLACE
    (
    CONCAT('I', ' ', 'like', ' ', 'cats'),
    ' ',
    '-'
    );
    
-- Write a query using the books table that replaces spaces in titles with '->' and name the column title

-- Write a query outputing 2 columns. 1st named 'forwards' with author's first name and 2nd named 'backwards' with author's first name printed backwards

-- Write a query resulting in one table named 'full name in caps' that outputs authors full name in all caps

-- Write a query resulting in one table named 'blurb' that combines book title with 'was released in' and the release year.

-- Print book titles and the length of each book title (two columns named 'title' and 'character count' respectively

-- FINAL BOSS
-- Output 3 columns. First named 'short title' that outputs the first 10 characters of a book title, truncated by '...'. The next column named 'author' outputs auther's lastname, comma, first name. The final column named 'quantity' outputs the quantity and 'in stock'.
