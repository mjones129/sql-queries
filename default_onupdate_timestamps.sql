
-- automatically log the timestamp when a new row is added to the captions table
CREATE TABLE captions (
	text VARCHAR(150),
    created_at TIMESTAMP default CURRENT_TIMESTAMP
);

INSERT INTO captions (text) VALUES ('beautiful sunset');

SELECT * FROM captions;

CREATE TABLE captions2 (
	text VARCHAR(150),
    created_at TIMESTAMP default CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


INSERT INTO captions2 (text) VALUES ('i love life!');
SELECT * FROM captions2;

-- 'i love life!', '2024-06-10 21:37:20', NULL

UPDATE captions2 SET text='i love live!!!!!!!';

SELECT * FROM captions2;
-- 'i love live!!!!!!!', '2024-06-10 21:37:20', '2024-06-10 21:39:09'

