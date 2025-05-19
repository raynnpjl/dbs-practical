SELECT a.adm_no, a.stud_name, b.mark, b.grade
	FROM student a
	JOIN stud_mod_performance b
	ON a.adm_no = b.adm_no
	WHERE mod_registered = 'DBMS'
	AND b.mark > (
		SELECT AVG(mark) FROM stud_mod_performance 
		WHERE mod_registered = 'DBMS'
		)
	ORDER BY b.mark DESC;
		