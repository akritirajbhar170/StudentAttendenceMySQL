-- Mark attendance
INSERT INTO attendance (student_id, date, status) VALUES
(1, '2026-02-12', 'Present'),
(2, '2026-02-12', 'Absent'),
(3, '2026-02-12', 'Present');

-- View all attendance
SELECT s.id, s.name, s.course, a.date, a.status
FROM students s
JOIN attendance a ON s.id = a.student_id
ORDER BY a.date;

-- Attendance percentage per student
SELECT 
    s.id,
    s.name,
    s.course,
    ROUND(SUM(CASE WHEN a.status='Present' THEN 1 ELSE 0 END)/COUNT(a.id)*100, 2) AS attendance_percentage
FROM students s
LEFT JOIN attendance a ON s.id = a.student_id
GROUP BY s.id, s.name, s.course;

-- Students below 75%
SELECT 
    s.id,
    s.name,
    s.course,
    ROUND(SUM(CASE WHEN a.status='Present' THEN 1 ELSE 0 END)/COUNT(a.id)*100, 2) AS attendance_percentage
FROM students s
LEFT JOIN attendance a ON s.id = a.student_id
GROUP BY s.id, s.name, s.course
HAVING attendance_percentage < 75;
