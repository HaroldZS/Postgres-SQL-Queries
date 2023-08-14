SELECT	*,
		AVG(colegiatura) OVER(PARTITION BY carrera_id)
FROM db.alumnos;

SELECT	*,
		AVG(colegiatura) OVER()
FROM db.alumnos;

SELECT	*,
		SUM(colegiatura) OVER(ORDER BY colegiatura)
FROM db.alumnos;

SELECT	*,
		SUM(colegiatura) OVER(PARTITION BY carrera_id ORDER BY colegiatura)
FROM db.alumnos;

SELECT	*
FROM (
	SELECT *,
	RANK() OVER(PARTITION BY carrera_id ORDER BY colegiatura DESC) AS brand_rank
	FROM db.alumnos

) AS ranked_intuitions_by_careers
WHERE brand_rank <= 3		
ORDER BY brand_rank;