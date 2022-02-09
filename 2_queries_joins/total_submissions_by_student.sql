SELECT student, SUM(duration) AS total_submissions
FROM students
JOIN assignment_submission_seeds ON students.id = assignment_submission_seeds.student_id
HAVING SUM(duration) < 100
