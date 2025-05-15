SELECT dept_code AS "Department", sum(COALESCE(pay, 0) + COALESCE(allowance, 0)) AS "Total manpower Cost by Dept", COUNT(dept_code) AS "No of staff" FROM staff
WHERE dept_code NOT IN ('DPO')
GROUP BY dept_code
HAVING sum(COALESCE(pay, 0) + COALESCE(allowance, 0)) > 20000;