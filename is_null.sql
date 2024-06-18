-- IS NULL

-- how do you target values that are null?

SELECT * FROM books WHERE author_lname = NULL;
-- returns null, funny enough

SELECT * FROM books WHERE author_lname IS NULL;
-- returns all book IDs (auto-added and required on INSERT) that contain other values that are NULL

-- delete all books without a title
SELECT * FROM books WHERE title IS NULL;
-- returns 3 books

DELETE FROM books WHERE title IS NULL;
-- deletes books with empty title values

SELECT * FROM books WHERE title IS NULL;
-- returns null

-- IS NOT NULL is also a thing