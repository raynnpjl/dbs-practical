SELECT dept_code, max(pay) AS "highest pay",
	max(allowance) AS "highest allowance",
	min(pay) AS "lowest pay",
	min(allowance) AS "lowest allowance"
	FROM staff
	GROUP BY dept_code
	ORDER BY dept_code ASC;
