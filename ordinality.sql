SELECT lpad('*',CAST(ordinality AS int),'*')
FROM generate_series(10,2,-2) WITH ordinality;