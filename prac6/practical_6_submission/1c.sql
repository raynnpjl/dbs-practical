SELECT dept_name, max_staff_strength, no_of_staff, (max_staff_strength - no_of_staff) AS "number understaffed" FROM department
WHERE (max_staff_strength - no_of_staff) > 0
ORDER BY (max_staff_strength - no_of_staff) DESC;