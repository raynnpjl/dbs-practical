SELECT SUBSTRING(staff_no, 1, 1) AS "By First alphabet of staff_no",
	COUNT(staff_no) AS "Number of staff",
	AVG(EXTRACT(YEAR FROM AGE(dob))) AS "Mean Age"
	FROM staff
	GROUP BY SUBSTRING(staff_no, 1, 1);