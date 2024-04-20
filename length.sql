-- select length

-- char length (number of characters)
SELECT CHAR_LENGTH(title) FROM books;

-- length (length in bytes)
SELECT LENGTH(title) FROM books;

-- compare length of title with title
SELECT CHAR_LENGTH(title) AS character_length, title FROM books; 