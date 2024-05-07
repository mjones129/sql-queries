-- how many books are in the database?
SELECT COUNT(*) FROM books;

-- How namy author first names are in the database?
SELECT COUNT(author_fname) FROM books;

-- Both the above functions return the same number. Add two blank entries to differentiate (run twice)
INSERT INTO books () VALUES ();

-- How many DISTINCT author first names?
SELECT COUNT(DISTINCT(author_fname)) FROM books;

-- Count the unique last names
SELECT COUNT(DISTINCT(author_lname)) FROM books;

-- How many titles contain "the"?
SELECT COUNT(*) FROM books WHERE title LIKE "%the%";