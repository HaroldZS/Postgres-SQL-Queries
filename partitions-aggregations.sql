SELECT ROW_NUMBER() OVER(ORDER BY fecha_incorporacion) AS row_id, *
FROM db.alumnos;

SELECT FIRST_VALUE(colegiatura) OVER(PARTITION BY carrera_id) AS first_tuition, *
FROM db.alumnos;

SELECT LAST_VALUE(colegiatura) OVER(PARTITION BY carrera_id) AS last_tuition, *
FROM db.alumnos;

SELECT NTH_VALUE(colegiatura, 3) OVER(PARTITION BY carrera_id) AS nth_tuition, *
FROM db.alumnos;

SELECT	*,
		RANK() OVER(PARTITION BY carrera_id ORDER BY colegiatura DESC) AS tuition_rank
		FROM db.alumnos
		ORDER BY carrera_id, tuition_rank;

SELECT	*,
		DENSE_RANK() OVER(PARTITION BY carrera_id ORDER BY colegiatura DESC) AS tuition_rank
		FROM db.alumnos
		ORDER BY carrera_id, tuition_rank;