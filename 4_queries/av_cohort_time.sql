SELECT cohorts.name AS name, avg(completed_at-created_at) AS average_assistance_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;