-- Get the total number of assistance_requests for a teacher
SELECT COUNT(assistance_requests.*) as total_assitances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY name;