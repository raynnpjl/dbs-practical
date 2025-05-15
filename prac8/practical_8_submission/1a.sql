SELECT grade, AVG(COALESCE(pay, 0)), SUM(COALESCE(pay, 0)), COUNT(staff_no) FROM staff
WHERE type_of_employment = 'FT'
GROUP BY grade
HAVING count(staff_no) > 2
ORDER BY COUNT(staff_no) ASC;