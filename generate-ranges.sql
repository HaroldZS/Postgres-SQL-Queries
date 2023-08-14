SELECT *
FROM generate_series(1,5);

SELECT *
FROM generate_series(5,1,-2);

SELECT *
FROM generate_series(4,4);

SELECT *
FROM generate_series(1.1,4,1.3);

SELECT s.*
FROM generate_series(0,14,7) AS s(a);

SELECT current_date + s.a AS dates
FROM generate_series(0,14,7) AS s(a);

SELECT *
FROM generate_series('2020-09-01 00:00:00'::timestamp,
					 '2020-09-04 00:00:00', '10 hours');

SELECT	a.id,
		a.nombre,
		a.apellido,
		a.carrera_id,
		s.a
FROM db.alumnos AS a
INNER JOIN generate_series(0,10) AS s(a)
ON s.a = a.carrera_id
ORDER BY a.carrera_id;

SELECT lpad('*',a,'*')
FROM generate_series(1,5) AS s(a);