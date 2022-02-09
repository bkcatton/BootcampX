SELECT cohorts.name AS name, SELECT max(
  avg(completed_at-created_at) AS average_assistance_time
  FROM assistance_requests
  JOIN students ON students.id = assistance_requests
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name
)
FROM assistance_requests
JOIN students ON students.id = assistance_requests
JOIN cohorts ON cohorts.id = cohort_id;


