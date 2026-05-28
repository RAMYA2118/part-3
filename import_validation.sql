-- Row count validation

SELECT 'students' AS table_name, COUNT(*) AS row_count FROM students;
SELECT 'courses' AS table_name, COUNT(*) AS row_count FROM courses;
SELECT 'submissions' AS table_name, COUNT(*) AS row_count FROM submissions;

-- NULL checks

SELECT * FROM students
WHERE student_id IS NULL OR name IS NULL;

SELECT * FROM submissions
WHERE submission_id IS NULL;

-- Empty table checks

SELECT COUNT(*) FROM enrollments;
