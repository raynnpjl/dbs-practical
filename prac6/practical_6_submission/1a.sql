SELECT crse_name,
	crse_fee,
	COALESCE(lab_fee, 0) AS lab_fee,
	(crse_fee + COALESCE(lab_fee, 0)) AS fee_per_semester 
FROM course
ORDER BY fee_per_semester DESC;