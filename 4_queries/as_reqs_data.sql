SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, sum(completed_at-created_at) AS duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignments_id
ORDER BY duration;