SELECT title, rating FROM series
JOIN reviews ON series.id = reviews.series_id;

-- tv challenge 2
SELECT title, AVG(rating) as avg_rating
FROM series
JOIN reviews ON series.id = reviews.series_id
GROUP BY title
ORDER BY avg_rating;