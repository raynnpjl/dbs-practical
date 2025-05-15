SELECT max(pay) AS "Highest Pay in SOC", min(pay) AS "Lowest Pay in SOC" FROM staff
WHERE dept_code = 'SOC';