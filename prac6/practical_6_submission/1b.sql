SELECT staff_name, 
	(COALESCE(pay, 0) + COALESCE(allowance, 0)) AS salary, 
	((COALESCE(pay, 0) + COALESCE(allowance, 0)) * 2.25) as bonus 
FROM staff
ORDER BY bonus DESC;