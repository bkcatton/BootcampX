SELECT day, count(assignments.day) AS number_of_assignments, sum(assignments.durations) AS duration
FROM assignments
GROUP BY day
ORDER BY day;