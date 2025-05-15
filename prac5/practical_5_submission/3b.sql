SELECT highest_qln, staff_name, designation
FROM staff
WHERE highest_qln ILIKE 'B%' 
   OR designation ILIKE '%deputy%'
ORDER BY highest_qln ASC, staff_name ASC;