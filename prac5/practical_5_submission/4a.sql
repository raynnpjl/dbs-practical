SELECT gender, pay, staff_name
FROM staff
WHERE (
    (gender = 'F' AND (pay BETWEEN 4000 AND 7000))
    OR
    (gender = 'M' AND (pay BETWEEN 2000 AND 6000))
)
ORDER BY gender ASC, pay ASC;