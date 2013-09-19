SELECT DISTINCT
  A.MATRICULA,
  A.NOMBRE,
  A.PATERNO,
  A.MATERNO,
  A.EMAIL,
  B.CODIGOGRUPO,
  D.CLAVEASIGNATURA,
  A.ID_ESCUELA
FROM
  ALUMNOS A,
  ALUMNOS_GRUPOS B,
  GRUPOS C,
  ALUMNOS_KARDEX D,
  CFGPLANES_MST E
  
WHERE 
  A.ID_ESCUELA = 2 AND A.STATUS = 'A' AND (A.GRADO = 1 OR GRADO = 4) AND 
  (A.MATRICULA LIKE '280%' OR A.MATRICULA LIKE '284%' OR A.MATRICULA LIKE '281%' OR A.MATRICULA LIKE '282%')

  AND A.NUMEROALUMNO  = B.NUMEROALUMNO
  AND B.PERIODO       = 1
  AND B.CODIGOGRUPO   LIKE 'S%'
  AND B.INICIAL       = 2013
  AND B.FINAL         = 2013
  AND B.CODIGOGRUPO   = C.CODIGOGRUPO
  AND C.INICIAL       = 2013
  AND C.FINAL         = 2013
  AND C.PERIODO       = 1
  AND (C.GRADO =1 OR C.GRADO = 4)
  
  AND A.NUMEROALUMNO  = D.NUMEROALUMNO
  AND A.NIVEL         = E.NIVEL
  AND D.ID_PLAN       = E.ID_PLAN
  AND D.ID_EVAL       = 'A'
  AND D.CALIFICACION_1= 0  
  AND (
        D.CLAVEASIGNATURA = 'MPS0101' 
     OR D.CLAVEASIGNATURA = 'CRIM0103' 
     OR D.CLAVEASIGNATURA = 'MPEG-0103' 
     OR D.CLAVEASIGNATURA = 'MPEG-0418'
     OR D.CLAVEASIGNATURA = 'MDER101'
    )
  
ORDER BY b.CODIGOGRUPO