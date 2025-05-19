SELECT *
	FROM department 
	WHERE hod IN (SELECT staff_no FROM staff WHERE gender = 'F');