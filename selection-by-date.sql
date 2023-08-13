SELECT *
FROM db.alumnos
WHERE (EXTRACT(YEAR FROM fecha_incorporacion)) = 2019;

SELECT *
FROM db.alumnos
WHERE DATE_PART('YEAR', fecha_incorporacion) = 2019;

SELECT *
FROM (
	SELECT *,
	DATE_PART('YEAR', fecha_incorporacion) AS year_incorporation
	FROM db.alumnos
) AS students_with_year
WHERE year_incorporation = 2020;

SELECT *
FROM db.alumnos
WHERE EXTRACT(YEAR FROM fecha_incorporacion) = 2018
AND EXTRACT(MONTH FROM fecha_incorporacion) = 5;