-- Search for an exact value
SELECT title, author_fname, author_lname FROM books WHERE author_fname="David";

-- % is a wildcard (zero to unlimited characters)

-- _ is a wildcard (exactly one character)


-- Returns all first names containing 'da'
SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE '%da%';

-- Returns all things containing a colon ':'
SELECT * FROM books WHERE title LIKE "%:%";

-- Returns all author first names that are exactly 4 characters
SELECT * FROM books WHERE author_fname LIKE "____";