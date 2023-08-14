SELECT lpad('sql', 15, '*');

SELECT lpad('*', id, '*')
FROM db.alumnos
WHERE id < 10;

SELECT lpad('*', CAST(row_id AS int), '*')
FROM (
	SELECT ROW_NUMBER() OVER(ORDER BY carrera_id) AS row_id, *
	FROM db.alumnos
) AS alumnos_with_row_id
WHERE row_id <= 5
ORDER BY carrera_id;

SELECT rpad('sql', 15, '+');

SELECT rpad('*', id, '*')
FROM db.alumnos
WHERE id < 10;

SELECT rpad('*', CAST(row_id AS int), '*')
FROM (
	SELECT ROW_NUMBER() OVER(ORDER BY carrera_id) AS row_id, *
	FROM db.alumnos
) AS alumnos_with_row_id
WHERE row_id <= 5
ORDER BY carrera_id;