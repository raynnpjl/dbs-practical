SELECT a.dept_name, b.crse_name, c.stud_name, EXTRACT(YEAR FROM AGE(c.dob)) AS "Age of Student"
FROM student c
JOIN course b ON c.crse_code = b.crse_code
JOIN department a ON b.offered_by = a.dept_code
ORDER BY dept_name ASC, crse_name ASC, EXTRACT(YEAR FROM AGE(c.dob)) DESC