SELECT DISTINCT a.mod_code, b.mod_name, b.credit_unit, b.mod_coord
	FROM pre_requisite a
	JOIN module b
	ON a.mod_code = b.mod_code
	ORDER BY mod_code ASC;