SELECT citizenship, staff_name FROM staff
WHERE dept_code = 'SOC' AND citizenship != 'Singapore'
ORDER BY citizenship DESC, staff_name ASC;