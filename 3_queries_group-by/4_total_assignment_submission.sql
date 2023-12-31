-- Get the total number of assignment submissions for each cohort.
SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*) AS total_submission
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assignment_submissions ON students.id = student_id
GROUP BY cohort
ORDER BY total_submission DESC;