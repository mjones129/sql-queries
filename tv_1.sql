SELECT title, rating FROM series
JOIN reviews ON series.id = reviews.series_id;

-- tv challenge 2
SELECT title, AVG(rating) as avg_rating
FROM series
JOIN reviews ON series.id = reviews.series_id
GROUP BY title
ORDER BY avg_rating;

-- tv challenge 3
SELECT first_name, last_name, rating FROM reviewers
JOIN reviews ON reviews.reviewer_id = reviewers.id;

-- tv challenge 4, show series that has no reviews
SELECT title AS unreviewed_series FROM series
LEFT JOIN reviews ON series.id = reviews.series_id
WHERE rating IS NULL;
-- rewritten as a RIGHT JOIN
SELECT title AS unreviewed_series FROM reviews
RIGHT JOIN series ON reviews.series_id = series.id
WHERE rating IS NULL;

-- tv challenge 5
SELECT genre, AVG(rating) AS avg_rating FROM series
JOIN reviews ON series.id = reviews.series_id
GROUP BY genre;

-- tv challenge 6
SELECT
	first_name,
    last_name,
    COUNT(rating) AS COUNT,
    ifnull((rating),0) AS min,
    ifnull((rating),0) AS max,
    ifnull((rating),0) AS average,
    CASE
		WHEN COUNT(rating) > 0 THEN 'ACTIVE'
        ELSE 'INACTIVE'
    END AS STATUS    
    FROM reviewers
LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name, last_name;

-- tv challenge 7
SELECT title, rating, CONCAT(first_name, ' ', last_name) AS reviewer FROM reviews
JOIN series ON reviews.series_id = series.id
JOIN reviewers ON reviews.reviewer_id = reviewers.id;