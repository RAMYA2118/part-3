-- Create staging table

CREATE TABLE staging_invalid_scores AS
SELECT *
FROM submissions
WHERE score < 0;

-- Before repair

SELECT *
FROM submissions
WHERE score < 0;

-- Repair query

UPDATE submissions
SET score = 0
WHERE score < 0;

-- After repair

SELECT *
FROM submissions
WHERE score = 0;

--------------------------------------------------

-- Invalid difficulty values

CREATE TABLE staging_invalid_difficulty AS
SELECT *
FROM problems
WHERE difficulty NOT IN ('Easy', 'Medium', 'Hard');

-- Before repair

SELECT *
FROM problems
WHERE difficulty NOT IN ('Easy', 'Medium', 'Hard');

-- Repair query

UPDATE problems
SET difficulty = 'Medium'
WHERE difficulty NOT IN ('Easy', 'Medium', 'Hard');

-- After repair

SELECT *
FROM problems
WHERE difficulty = 'Medium';
