-- REVERSE function
USE book_shop;
SELECT REVERSE(author_fname) FROM books;

-- Concatenate firstname with reverse first name, creating palendrome
SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;