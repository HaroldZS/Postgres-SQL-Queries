SELECT *
FROM db.alumnos AS al
FETCH FIRST 1 ROWS ONLY;

SELECT *
FROM db.alumnos AS al
LIMIT 1;

SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM db.alumnos
) AS students_with_row_num
WHERE row_id = 1;