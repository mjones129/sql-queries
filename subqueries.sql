-- How do I find the title of the longest book?
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

-- OR... use subqueries
SELECT 
    title, pages
FROM
    books
WHERE
    pages = (SELECT 
            MAX(pages)
        FROM
            books);
            
-- insert another book that has the same number of pages as the max, to return both results
INSERT INTO books (title, pages) VALUES ('my life in words', 634);

SELECT title, released_year FROM books WHERE released_year = (SELECT MIN(released_year) FROM books);