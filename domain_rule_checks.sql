-- Negative scores

SELECT *
FROM submissions
WHERE score < 0;

-- Scores above maximum

SELECT *
FROM submissions
WHERE score > 100;

-- Invalid difficulty values

SELECT *
FROM problems
WHERE difficulty NOT IN ('Easy', 'Medium', 'Hard');

-- Invalid programming languages

SELECT *
FROM submissions
WHERE language NOT IN ('Python', 'Java', 'JavaScript', 'C++');

-- NULL mandatory values

SELECT *
FROM students
WHERE email IS NULL;
