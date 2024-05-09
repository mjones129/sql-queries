-- Group by
SELECT author_lname FROM books GROUP BY author_lname;

SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;