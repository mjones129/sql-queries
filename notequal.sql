-- select all books NOT published in 2017
SELECT title from books WHERE released_year != 2017;

-- another example
SELECT title, author_lname FROM books WHERE author_lname != 'Gaiman';

