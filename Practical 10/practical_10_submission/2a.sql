SELECT a.mod_name AS "Module Name", b.mod_name AS "Pre-Requisite ModuleName"
FROM pre_requisite c
JOIN module a ON c.mod_code = a.mod_code
JOIN module b ON c.requisite = b.mod_code
ORDER BY a.mod_name ASC, b.mod_name ASC;