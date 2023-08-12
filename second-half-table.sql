SELECT *
FROM db.alumnos
LIMIT (SELECT COUNT(*) FROM db.alumnos) / 2
OFFSET (SELECT COUNT(*) FROM db.alumnos) / 2;

SELECT * 
FROM db.alumnos 
OFFSET (
	SELECT (COUNT(id)/2) 
	FROM db.alumnos 
);

SELECT ROW_NUMBER() OVER() AS row_id, *
FROM db.alumnos
OFFSET (
	SELECT COUNT(*)/2
	FROM db.alumnos
);