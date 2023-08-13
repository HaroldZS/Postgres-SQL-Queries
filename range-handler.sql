SELECT *
FROM db.alumnos
WHERE tutor_id IN (1,2,3,4);

SELECT *
FROM db.alumnos
WHERE tutor_id >= 1
AND tutor_id <= 10;

SELECT *
FROM db.alumnos
WHERE tutor_id BETWEEN 1 AND 10;

SELECT int4range(1,20) @> 3;

SELECT numrange(11.1, 19.9) && numrange(20.0, 30.0);

SELECT UPPER(int8range(15, 25));

SELECT LOWER(int8range(15, 25));

SELECT int4range(10, 20) * int4range(15, 25);

SELECT ISEMPTY(numrange(1, 5));

SELECT *
FROM db.alumnos
WHERE int4range(10, 20) @> tutor_id;

SELECT int4range(MIN(tutor_id), MAX(tutor_id)) 
* int4range(MIN(carrera_id), MAX(carrera_id))
FROM db.alumnos;