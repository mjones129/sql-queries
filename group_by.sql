-- Group by
SELECT author_lname FROM books GROUP BY author_lname;

-- count the number of instances of each author_lname
SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;

-- total number of books written by each author
SELECT author_lname, COUNT(*) AS books_written FROM books GROUP BY author_lname ORDER BY books_written DESC;

SELECT released_year, COUNT(*) FROM books GROUP BY released_year