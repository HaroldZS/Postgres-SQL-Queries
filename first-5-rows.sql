SELECT *
FROM db.alumnos
LIMIT 5;

SELECT *
FROM db.alumnos
FETCH FIRST 5 ROWS ONLY;

SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM db.alumnos
) AS students_with_row_num
WHERE row_id IN (1,2,3,4,5);

SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM db.alumnos
) AS students_with_row_num
WHERE row_id BETWEEN 1 AND 5;

SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM db.alumnos
) AS students_with_row_num
WHERE row_id <= 5;