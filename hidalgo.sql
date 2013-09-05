SELECT DISTINCT
	A.MATRICULA,
	A.NOMBRE,
	A.PATERNO,
	A.MATERNO,
	A.EMAIL,
	G.CODIGOGRUPO,
	K.CLAVEASIGNATURA
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
	(K.CLAVEASIGNATURA = 'MPEG-103' OR K.CLAVEASIGNATURA = 'MPEG-418')      AND
	K.ID_EVAL         = 'A'            AND
	K.CALIFICACION_1  = 0