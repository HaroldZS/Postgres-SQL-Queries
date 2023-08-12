SELECT DISTINCT colegiatura
FROM db.alumnos
WHERE colegiatura < (
	SELECT MAX(colegiatura)
	FROM db.alumnos
)
ORDER BY colegiatura DESC
LIMIT 1;

SELECT DISTINCT colegiatura
FROM db.alumnos AS a1
WHERE 2 = (
	SELECT COUNT(DISTINCT colegiatura)
	FROM db.alumnos AS a2
	WHERE a1.colegiatura <= a2.colegiatura
);

SELECT DISTINCT colegiatura
FROM db.alumnos
ORDER BY colegiatura DESC
OFFSET 1
LIMIT 1;

SELECT DISTINCT colegiatura, tutor_id
FROM db.alumnos
WHERE tutor_id = 20
ORDER BY colegiatura DESC
LIMIT 1 OFFSET 1;

SELECT *
FROM db.alumnos AS student_data
INNER JOIN (
	SELECT DISTINCT colegiatura
	FROM db.alumnos
	WHERE tutor_id = 20
	ORDER BY  colegiatura DESC
	LIMIT 1 OFFSET 1
) AS second_max_tuition
ON student_data.colegiatura = second_max_tuition.colegiatura;

SELECT DISTINCT colegiatura
	FROM db.alumnos
	WHERE tutor_id = 20
	ORDER BY colegiatura DESC
	LIMIT 1 OFFSET 1