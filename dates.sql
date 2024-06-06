CREATE TABLE people (name VARCHAR(100), birthdate DATE, birthtime TIME, birthdt DpeopleATETIME );


INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00');

SELECT * FROM people;

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Lulu', '1985-04-11', '09:45:10', '1985-04-11 11:00:00');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Hazel', CURDATE(), CURTIME(), NOW());

-- select day of month
SELECT birthdate, DAY(birthdate), DAYOFWEEK(birthdate), DAYOFYEAR(birthdate) FROM people;

SELECT birthdate, MONTHNAME(birthdate) FROM people;

SELECT name, birthdt, YEAR(birthdt), MONTHNAME(birthdt) FROM people;