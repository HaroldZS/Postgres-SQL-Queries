SELECT nombre
FROM db.alumnos
ORDER BY nombre DESC
LIMIT 1;

SELECT tutor_id, MAX(nombre)
FROM db.alumnos
GROUP BY tutor_id
ORDER BY tutor_id;