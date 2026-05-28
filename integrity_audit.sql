-- Duplicate primary key check

SELECT student_id, COUNT(*)
FROM students
GROUP BY student_id
HAVING COUNT(*) > 1;

-- Duplicate email check

SELECT email, COUNT(*)
FROM students
GROUP BY email
HAVING COUNT(*) > 1;

-- Foreign key checks

SELECT e.*
FROM enrollments e
LEFT JOIN students s
ON e.student_id = s.student_id
WHERE s.student_id IS NULL;

SELECT e.*
FROM enrollments e
LEFT JOIN courses c
ON e.course_id = c.course_id
WHERE c.course_id IS NULL;

-- Missing problem references

SELECT s.*
FROM submissions s
LEFT JOIN problems p
ON s.problem_id = p.problem_id
WHERE p.problem_id IS NULL;
