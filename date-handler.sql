SELECT
EXTRACT(YEAR FROM fecha_incorporacion) AS year_incorporation,
EXTRACT(MONTH FROM fecha_incorporacion) AS month_incorporation,
EXTRACT(DAY FROM fecha_incorporacion) AS day_incorporation,
EXTRACT(HOUR FROM fecha_incorporacion) AS hour_incorporation,
EXTRACT(MINUTE FROM fecha_incorporacion) AS minute_incorporation,
EXTRACT(SECOND FROM fecha_incorporacion) AS second_incorporation
FROM db.alumnos;

SELECT 
DATE_PART('YEAR', fecha_incorporacion) AS year_incorporation,
DATE_PART('MONTH', fecha_incorporacion) AS month_incorporation,
DATE_PART('DAY', fecha_incorporacion) AS day_incorporation,
DATE_PART('HOUR', fecha_incorporacion) AS hour_incorporation,
DATE_PART('MINUTE', fecha_incorporacion) AS minute_incorporation,
DATE_PART('SECOND', fecha_incorporacion) AS second_incorporation
FROM db.alumnos;