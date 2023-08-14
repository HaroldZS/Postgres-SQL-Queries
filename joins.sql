SELECT	a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM db.alumnos AS a
	FULL OUTER JOIN db.carreras AS c
	ON a.carrera_id = c.id
ORDER BY a.carrera_id;

SELECT	a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM db.alumnos AS a
LEFT JOIN db.carreras AS c
ON a.carrera_id = c.id
WHERE c.id IS NULL;

SELECT	a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM db.alumnos AS a
LEFT JOIN db.carreras AS c
ON a.carrera_id = c.id;

SELECT	a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM db.alumnos AS a
RIGHT JOIN db.carreras AS c
ON a.carrera_id = c.id
ORDER BY c.id DESC;

SELECT	a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM db.alumnos AS a
INNER JOIN db.carreras AS c
ON a.carrera_id = c.id
ORDER BY c.id DESC;

SELECT	a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM db.alumnos AS a
FULL OUTER JOIN db.carreras AS c
ON a.carrera_id = c.id
WHERE a.id IS NULL
OR c.id IS NULL
ORDER BY a.carrera_id DESC, c.id DESC;