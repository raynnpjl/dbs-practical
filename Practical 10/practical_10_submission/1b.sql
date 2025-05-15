SELECT a.dept_name, b.crse_name, (COALESCE(b.crse_fee, 0) + COALESCE(b.lab_fee, 0)) AS "Total Semester Fee"
FROM department a
JOIN course b ON a.dept_code = b.offered_by
ORDER BY a.dept_name ASC, (b.crse_fee + b.lab_fee) DESC
