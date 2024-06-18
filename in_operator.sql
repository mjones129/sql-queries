-- select all books by some authors
SELECT title, author_lname FROM books
WHERE author_lname = 'Carver'
OR author_lname = 'Lahiri'
OR author_lname = 'Smith';

-- BUT THERE IS AN EASIER WAY:

SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');

-- Invert the result with NOT

SELECT title, author_lname FROM books
WHERE author_lname NOT IN ('Carver', 'Lahiri', 'Smith');

-- BONUS: Modulo operator. Exclude books with an even release year
SELECT title, released_year FROM books
WHERE released_year >= 2000 AND
released_year % 2 != 0;