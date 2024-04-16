-- UPDATING DATA

SELECT * FROM cats;

-- UPDATE Jackson's name to "Jack"
SELECT * FROM cats WHERE cat_id=7;
UPDATE cats SET name='Jack' WHERE cat_id=7;
SELECT * FROM cats WHERE name='Ringo';
UPDATE cats SET breed='British Shorthair' WHERE name='Ringo';
SELECT * FROM cats WHERE breed='Maine Coon';
UPDATE cats SET age=12 WHERE breed='Maine Coon';
