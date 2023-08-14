SELECT email
FROM db.alumnos
WHERE email ~*'[A-Z0-9._%*-]+@[A-Z0-9.-]+\.[A-Z]{2,4}';

SELECT email
FROM db.alumnos
WHERE email ~*'[A-Z0-9._%*-]+@google[A-Z0-9.-]+\.[A-Z]{2,4}';