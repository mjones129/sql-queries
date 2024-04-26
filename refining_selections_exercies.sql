-- SELECT REFINEMENT EXERCISES

-- SELECT all book titles containing the word 'stories'
SELECT 
    title
FROM
    books
WHERE
    title LIKE '%stories%';

-- Find the longest book. Print the title and page count
SELECT 
    title, pages
FROM
    books
ORDER BY pages DESC
LIMIT 1;

-- Print a summary containing a title and release year for the 3 most recent books
SELECT 
    CONCAT(title, ' - ', released_year)
FROM
    books
ORDER BY released_year DESC
LIMIT 3;

-- Find all books that has an author's last name that contains a space " ".
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname LIKE '% %';

-- Find the 3 books with the lowest stock quantity
SELECT 
    title, released_year, stock_quantity
FROM
    books
ORDER BY stock_quantity
LIMIT 3;

-- Print title and author last name, sorted first by author last name, then by title
SELECT title, author_lname FROM books ORDER BY author_lname, title;

-- Yell all authors sorted by last name
SELECT 
    UPPER(CONCAT('MY FAVORITE AUTHOR IS ',
                    author_fname,
                    ' ',
                    author_lname,
                    '!')) AS yell
FROM
    books
ORDER BY author_lname;