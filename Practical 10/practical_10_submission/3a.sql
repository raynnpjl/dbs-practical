SELECT a.dept_name, COUNT(*) AS staff_count
FROM staff b
JOIN department a ON a.dept_code = b.dept_code
GROUP BY a.dept_name
ORDER BY staff_count DESC;
