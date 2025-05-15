SELECT staff_name,
	EXTRACT(year FROM CURRENT_DATE) - join_yr AS "years in service"
FROM staff
ORDER BY "years in service" DESC;