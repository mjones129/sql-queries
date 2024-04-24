-- ORDER BY
SELECT book_id, title, author_lname FROM books;

SELECT book_id, author_fname, author_lname FROM books ORDER BY author_lname DESC;

-- using numbers

SELECT title, pages FROM books ORDER BY pages;