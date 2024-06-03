-- add all the results together from whatever query
SELECT SUM(pages) FROM books;

SELECT author_lname, COUNT(*), SUM(released_year) FROM books GROUP BY author_lname;