-- case statements
SELECT title, released_year,
CASE
	WHEN released_year >= 2000 THEN 'modern lit'
    ELSE '20th centry lit'
END AS genre
FROM books;

-- give a star rating based on some range of values
SELECT title, stock_quantity,
	CASE
		WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
	END AS STOCK
FROM books;



SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity <= 40 THEN '*'
        WHEN stock_quantity <= 70 THEN '**'
        WHEN stock_quantity <= 100 THEN '***'
        WHEN stock_quantity <= 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books;
