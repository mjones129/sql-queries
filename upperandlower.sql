-- upper and lower challenge
SELECT UPPER('hello world');

SELECT LOWER('HELLO woRLD');

-- desired result: "I LOVE THE NAMESAKE !!!" (THE NAMESAKE is the book title)
SELECT CONCAT('I LOVE ', UPPER(title), ' !!!') FROM books;