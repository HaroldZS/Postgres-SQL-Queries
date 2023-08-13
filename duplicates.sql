insert into db.alumnos (id, nombre, apellido, email, colegiatura, fecha_incorporacion, carrera_id, tutor_id) values (1000, 'Pamelina', null, 'pmylchreestrr@salon.com', 4800, '2020-04-26 10:18:51', 12, 16);

SELECT *
FROM db.alumnos AS ou
WHERE (
	SELECT COUNT(*)
	FROM db.alumnos AS inr
	WHERE ou.id = inr.id
) > 1;

SELECT db.alumnos.* :: text, COUNT(*)
FROM db.alumnos
GROUP BY db.alumnos.*
HAVING COUNT(*) > 1;

SELECT (
	db.alumnos.nombre,
	db.alumnos.apellido,
	db.alumnos.email,
	db.alumnos.colegiatura,
	db.alumnos.fecha_incorporacion,
	db.alumnos.carrera_id,
	db.alumnos.tutor_id
) :: text, count(*)
FROM db.alumnos
GROUP BY db.alumnos.nombre,
	db.alumnos.apellido,
	db.alumnos.email,
	db.alumnos.colegiatura,
	db.alumnos.fecha_incorporacion,
	db.alumnos.carrera_id,
	db.alumnos.tutor_id
HAVING COUNT(*) > 1;

SELECT *
FROM (
	SELECT id,
	ROW_NUMBER() OVER(
		PARTITION BY
			nombre,
			apellido,
			email,
			colegiatura,
			fecha_incorporacion,
			carrera_id,
			tutor_id
		ORDER BY id ASC
	) AS row,
	*
	FROM db.alumnos
) AS duplicates
WHERE duplicates.row > 1;

DELETE FROM db.alumnos
WHERE id = (
SELECT id
FROM (
	SELECT ROW_NUMBER() OVER(
		PARTITION BY
			nombre,
			apellido,
			email,
			colegiatura,
			fecha_incorporacion,
			carrera_id,
			tutor_id
	) AS row,
	*
	FROM db.alumnos
) AS duplicates
WHERE duplicates.row > 1
);