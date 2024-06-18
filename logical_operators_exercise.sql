-- logical operators exercies
-- evaluate the following:
SELECT 10 != 10;
-- 0 (false)

SELECT 15 > 14 AND 99 - 5 <= 94;
-- 1 (true)

SELECT 1 IN (5,3) OR 9 BETWEEN 8 AND 10;
-- 1 (true)

-- select all books written before 1980 (non inclusive, or not including 1980)
SELECT * FROM books WHERE released_year < 1980;

-- select all books written by eggers or chabon
SELECT * FROM books WHERE author_lname = 'Eggers' OR author_lname = 'Chabon';

-- select all books written by lahiri written after year 2000
SELECT * FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;

-- select all books with page counts between 100 and 200
SELECT * FROM books WHERE pages BETWEEN 100 AND 200;

-- select all books where the author's last name begins with a "C" or "S"
SELECT * FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

SELECT title, author_lname,
CASE
	WHEN title LIKE '%stories%' THEN 'Short Stories'
    WHEN title = 'Just Kids' OR title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
    ELSE 'Novel'
END AS GENRE
FROM books;

-- bonus: make a book count
SELECT author_fname, author_lname,
CASE
	WHEN COUNT(*) = 1 THEN '1 book'
    ELSE CONCAT(COUNT(*), ' books')
END AS count
FROM books
WHERE author_lname IS NOT NULL
GROUP BY author_fname, author_lname;