-- escaping wildcards

-- this will return every single title
SELECT * FROM books WHERE title LIKE '%';

-- This is a literal percent sign within wildcards and returns the only title containing a literal percent sign
SELECT * FROM books WHERE title LIKE '%\%%';

-- Escaping a '_' works the same way
SELECT * FROM books WHERE title LIKE '%\_%';