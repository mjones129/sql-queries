SELECT author_lname FROM books;

SELECT DISTINCT author_lname FROM books;

SELECT released_year FROM books;

SELECT DISTINCT released_year FROM books;

SELECT CONCAT(author_fname, ' ', author_lname) FROM books;

SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books;
 -- same results as:
SELECT DISTINCT author_fname, author_lname FROM books;