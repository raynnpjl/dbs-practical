SELECT crse_code,
	UPPER(crse_name),
	LENGTH(crse_name) AS "length of diploma name"
FROM course
WHERE LENGTH(crse_name) > 32
ORDER BY "length of diploma name"