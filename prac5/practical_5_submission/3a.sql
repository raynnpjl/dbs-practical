SELECT citizenship, staff_name
FROM staff
WHERE citizenship IN ('Hong Kong', 'Korea', 'Malaysia', 'Thailand')
ORDER BY citizenship ASC;