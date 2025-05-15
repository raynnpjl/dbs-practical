SELECT staff_name || ' (' || dept_code || ')' AS "staff and department"
FROM staff
WHERE staff_no LIKE 'S%'; --- start with S