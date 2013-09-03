SELECT DISTINCT
    K.NUMEROALUMNO,
    K.CALIFICACION_1,
	A.MATRICULA,
	A.NOMBRE,
	A.PATERNO,
	A.MATERNO,
	A.CORREO,
	G.CODIGOGRUPO
FROM
	ALUMNOS_KARDEX K,
	ALUMNOS A,
	ALUMNOS_GRUPOS G,
	GRUPOS GR
WHERE
	A.NUMEROALUMNO    = K.NUMEROALUMNO AND
	A.NUMEROALUMNO    = G.NUMEROALUMNO AND
	G.PERIODO         = 1              AND 
	G.INICIAL         = 2013           AND 
	G.FINAL           = 2013           AND
	G.CODIGOGRUPO     = GR.CODIGOGRUPO AND
        (GR.GRADO = 1 OR GR.GRADO = 4  )   AND
	G.CODIGOGRUPO LIKE 'S%'            AND 
	(K.CLAVEASIGNATURA = 'MDER0101' OR K.CLAVEASIGNATURA = 'CRIM0103')      AND
	K.ID_EVAL         = 'A'            AND
	K.CALIFICACION_1  = 0