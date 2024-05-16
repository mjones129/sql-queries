-- find the year each author published their first book
SELECT 
    author_fname, author_lname, MIN(released_year)
FROM
    books
GROUP BY author_lname , author_fname;

SELECT 
    author_lname, MAX(released_year), MIN(released_year)
FROM
    books
GROUP BY author_lname;

SELECT 
    author_lname,
    COUNT(*) AS books_written,
    MAX(released_year) AS latest_release,
    MIN(released_year) AS earliest_released,
    MAX(pages) AS longest_book
FROM
    books
GROUP BY author_lname, author_fname;