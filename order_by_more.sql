-- Order by the 3rd selection column. AKA pages
SELECT book_id, author_fname, pages FROM books ORDER BY 3;

-- order by multiple columns (sort by author's last name, and for each result under that last name, sort by released_year.
SELECT author_lname, released_year, title FROM books ORDER BY author_lname, released_year;