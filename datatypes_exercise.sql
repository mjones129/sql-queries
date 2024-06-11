-- data types exercise

-- what is a good use case for CHAR?
-- something that is fixed in charaters, like US State abbreviations (2 letters)

-- item name = VARCHAR()
-- price = DECIMAL(7,2)
-- quantity = INT

-- difference between DATETIME and TIMESTAMP?
-- TIMESTAMP can store a smaller range of dates

-- print out current time
SELECT CURTIME();

-- Select the current date
SELECT CURDATE();

-- print current day of the week (number)
SELECT DAYOFWEEK(CURDATE());

-- print out the day of the week (name)
SELECT DAYNAME(CURDATE());

-- Print out the current day in the following format: mm/dd/yyyy
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');

-- print current day and time using this format: January 2nd at 3:15 (24hr)
SELECT DATE_FORMAT(NOW(), '%M %D at %k:%i');

-- create a tweets table that stores: tweet content, username, time it was created
CREATE TABLE tweets (
	content VARCHAR(180),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);