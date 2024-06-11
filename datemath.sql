-- show all the birthdays
SELECT birthdate FROM people;

-- determine the difference between today's date and birthdate (age)
SELECT birthdate, DATEDIFF(CURDATE(), birthdate) FROM people;

-- add a specific amount of time to a given date
SELECT DATE_ADD(CURDATE(), INTERVAL 1 YEAR);

-- subtract a specific amount of time from a given date
SELECT DATE_SUB(CURDATE(), INTERVAL 2 MONTH);

-- subtract a specific amount of time from a given time
SELECT TIMEDIFF(CURTIME(), '06:00:00');

-- you can also use + and - to perform date/time operations
SELECT NOW() - INTERVAL 18 YEAR;

SELECT name, birthdate, birthdate + INTERVAL 21 YEAR FROM people;