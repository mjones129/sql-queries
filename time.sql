SELECT name, birthtime, HOUR(birthtime) FROM people;

SELECT name, birthtime, MINUTE(birthtime) FROM people;

SELECT name, birthtime, SECOND(birthtime) FROM people;

SELECT birthdt, HOUR(birthdt) FROM people;

SELECT birthdt, DATE(birthdt), TIME(birthdt) FROM people;


SELECT MONTHNAME(birthdate), DAY(birthdate), YEAR(birthdate) FROM people;

-- display birth date in a specific format
SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM people;

SELECT birthdt, DATE_FORMAT(birthdt, '%r') FROM people;