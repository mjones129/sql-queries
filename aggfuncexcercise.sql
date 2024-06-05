-- print total number of books in the database
SELECT COUNT(*) FROM books;

-- Print out how many books were released in each year
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

-- Print out the total number of books in stock
SELECT SUM(stock_quantity) FROM books;

-- Find the average released_year for each author
SELECT author_fname, author_lname, AVG(released_year) FROM books GROUP BY author_fname, author_lname;

-- Find the full name of the author who wrote the longest book
SELECT CONCAT(author_fname, ' ', author_lname) AS full_name, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);

-- do the thing
SELECT 
    released_year AS year, COUNT(*) AS '# books', AVG(pages) AS 'avg pages'
FROM
    books
GROUP BY released_year
ORDER BY released_year;