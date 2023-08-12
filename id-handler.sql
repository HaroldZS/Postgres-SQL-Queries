SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM db.alumnos
) AS alumnos_with_row_num
WHERE row_id IN (1,5,10,12,15,20);

SELECT *
FROM db.alumnos
WHERE id IN (
	SELECT id
	FROM db.alumnos
	WHERE tutor_id = 30
);

SELECT *
FROM db.alumnos
WHERE id NOT IN (
	SELECT id
	FROM db.alumnos
	WHERE tutor_id = 30
);

SELECT *
FROM db.alumnos
WHERE id IN (
	SELECT id
	FROM db.alumnos
	WHERE tutor_id = 30
	AND carrera_id = 31
);

SELECT *
FROM db.alumnos
WHERE id != 30;