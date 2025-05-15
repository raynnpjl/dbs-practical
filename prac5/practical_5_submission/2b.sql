SELECT staff_name AS "Singaporean Staff Male"
FROM staff
WHERE gender = 'M'
	AND citizenship = 'Singapore'
	AND EXTRACT(YEAR FROM dob) BETWEEN 1960 AND 1969
ORDER BY staff_name ASC;