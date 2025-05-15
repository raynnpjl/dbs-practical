-- 1. leaving the null values as is
SELECT AVG(lab_fee) AS "Mean Lab Fee" FROM course;

--2. handling the null values as 0
SELECT AVG(COALESCE(lab_fee, 0)) AS "Mean Lab Fee" FROM course;