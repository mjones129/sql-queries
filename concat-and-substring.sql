-- SELECT SUBSTRING AND CONCAT

SELECT CONCAT(SUBSTR(title, 1, 10), '...') AS short_title FROM books;

-- Create a table with author names as initials
SELECT SUBSTR(author_fname, 1,1), SUBSTR(author_lname, 1, 1) FROM books;

SELECT CONCAT(
	SUBSTR(author_fname, 1,1),
    '.',
    SUBSTR(author_lname, 1,1),
    '.'
) AS author_initials
FROM books;