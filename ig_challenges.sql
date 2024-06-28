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

-- we're running a new contest to see who can get the most likes on a single photo. WHO WON???
SELECT username, COUNT(*) AS total_likes FROM users
LEFT JOIN likes ON users.id = likes.user_id GROUP BY username ORDER BY total_likes DESC;
-- returns total likes per user :/

-- solution
SELECT photos.id, photos.image_url, COUNT(*)
FROM photos
INNER JOIN likes
	ON likes.photo_id = photos.id
    GROUP BY photos.id
    ORDER BY COUNT(*) DESC;
    
-- how many times does the average user post?
SELECT username, AVG(COUNT(username)) AS num_posts FROM users
LEFT JOIN photos ON users.id = photos.user_id
GROUP BY username;

-- solution
SELECT (SELECT Count(*) 
        FROM   photos) / (SELECT Count(*) 
                          FROM   users) AS avg; 
                          


-- what are the top 5 most commonly used hashtags?
SELECT tags.tag_name, COUNT(*) from photo_tags
JOIN tags ON photo_tags.tag_id = tags.id
GROUP BY tags.id
ORDER BY count(*) DESC
LIMIT 5;

-- finding bots - users who have liked every single photo
SELECT username, COUNT(*) AS total FROM users
INNER JOIN likes ON users.id = likes.user_id
GROUP BY likes.user_id
ORDER BY total DESC;