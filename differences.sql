SELECT carrera_id, COUNT(*) AS cuenta
FROM db.alumnos
GROUP BY carrera_id
ORDER BY cuenta DESC;

DELETE FROM db.carreras
WHERE id BETWEEN 30 AND 40;

SELECT	a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM db.alumnos AS a
	LEFT JOIN db.carreras AS c
	ON a.carrera_id = c.id
WHERE c.id IS NULL
ORDER BY a.carrera_id;

SELECT	a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM db.alumnos AS a
	LEFT JOIN db.carreras AS c
	ON a.carrera_id = c.id
--WHERE c.id IS NULL
ORDER BY a.carrera_id;