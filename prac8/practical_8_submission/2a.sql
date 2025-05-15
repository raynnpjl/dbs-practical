SELECT staff_name, count(staff_name) AS "Number of times staff name occurs" FROM staff
GROUP BY staff_name;