SELECT	CONCAT(a.nombre,' ', a.apellido) AS student,
		CONCAT(t.nombre,' ', t.apellido) AS tutor
FROM db.alumnos AS a
INNER JOIN db.alumnos AS t
ON a.tutor_id = t.id;

SELECT CONCAT(t.nombre,' ', t.apellido) AS tutor,
COUNT(*) AS students_by_tutor
FROM db.alumnos AS a
INNER JOIN db.alumnos AS t
ON a.tutor_id = t.id
GROUP BY tutor
ORDER BY students_by_tutor DESC
LIMIT 10;

SELECT AVG(students_by_tutor) AS students_average_by_tutor
FROM (
	SELECT CONCAT(t.nombre,' ', t.apellido) AS tutor,
	COUNT(*) AS students_by_tutor
	FROM db.alumnos AS a
	INNER JOIN db.alumnos AS t
	ON a.tutor_id = t.id
	GROUP BY tutor
) AS students_by_tutor_table;