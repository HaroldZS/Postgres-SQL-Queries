SELECT int4range(MIN(tutor_id), MAX(tutor_id)) 
* int4range(MIN(carrera_id), MAX(carrera_id))
FROM db.alumnos;

SELECT numrange(
	(SELECT MIN(tutor_id) FROM db.alumnos),
	(SELECT MAX(tutor_id) FROM db.alumnos)
) * numrange(
	(SELECT MIN(carrera_id) FROM db.alumnos),
	(SELECT MAX(carrera_id) FROM db.alumnos)
)