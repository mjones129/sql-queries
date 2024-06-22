

CREATE VIEW full_reviews AS
SELECT title, released_year, genre, rating, first_name, last_name FROM reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;

select * from full_reviews WHERE genre = 'Animation';

SELECT genre, AVG(rating) FROM full_reviews GROUP BY genre;

-- not all views are editable like a normal table
-- but some views you can edit

CREATE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;

SELECT * FROM ordered_series;

INSERT INTO ordered_series (title, released_year, genre)
VALUES('The Great', 2020, 'Comedy');
-- this inserts into the view
-- it also inserts into the real table

SELECT * FROM series;
-- shows new entry 'The Great'

-- you can also delete from this view
DELETE FROM ordered_series WHERE title = 'The Great';

SELECT * FROM series;
-- 'The Great' is gone.

-- replacing or altering views
SELECT * FROM ordered_series;

CREATE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year DESC;

-- won't work because this view already exists. You can update it like so:

CREATE OR REPLACE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year DESC;

-- alternatively
ALTER VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year ASC;

-- delete view
DROP VIEW ordered_series;
-- THIS ONLY DELETES THE VIEW, IT DOES NOT DELETE THE REAL TABLE DATA

-- keyword HAVING:
SELECT title, AVG(rating) FROM full_reviews GROUP BY title HAVING COUNT(rating) > 1;