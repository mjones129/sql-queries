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