SELECT fecha_incorporacion
FROM db.alumnos
ORDER BY fecha_incorporacion DESC
LIMIT 1;

SELECT carrera_id, MAX(fecha_incorporacion) AS max_date
FROM db.alumnos
GROUP BY carrera_id
ORDER BY max_date DESC;