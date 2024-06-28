-- new IG queries
select * from users;

-- Find the 5 oldest users
SELECT * FROM users ORDER BY created_at LIMIT 5;

-- which day of the week do most users register on?
Select AVG(DAYOFWEEK(created_at)) FROM users;
-- returns 3.92, so late wednesday?

SELECT COUNT(*) AS total, DAYNAME(created_at) AS day FROM users GROUP BY day ORDER BY total DESC;
-- Thurs and Sun both have 16 registrations

-- find the users who have never posted a photo
SELECT username FROM users
LEFT JOIN photos ON users.id = photos.user_id
WHERE photos.id IS NULL;