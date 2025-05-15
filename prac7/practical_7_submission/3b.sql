SELECT COUNT(crse_code) AS "Number of course with lab fee" FROM course
WHERE lab_fee IS NOT NULL;