SELECT
  a.claveprofesor, a.nombreprofesor, a.email, b.codigogrupo, b.claveasignatura
FROM
  profesores a, profesores_grupos b
WHERE
  a.claveprofesor = b.claveprofesor AND
  (b.claveasignatura = 'MPEG-103' OR b.claveasignatura = 'MPEG-418') AND
  b.id_escuela = 4


 SELECT 
  B.CLAVEPROFESOR, B.NOMBREPROFESOR, B.EMAIL, A.CODIGOGRUPO, A.CLAVEASIGNATURA
FROM
  HORARIOS_DET A,
  PROFESORES B
WHERE
  A.CLAVEPROFESOR = B.CLAVEPROFESOR   AND
  A.INICIAL = 2013                    AND
  A.FINAL   = 2013					  AND
  A.PERIODO = 1						  AND
  A.ID_ESCUELA = 5                    AND
  (A.CLAVEASIGNATURA = 'MPEG-103'       OR A.CLAVEASIGNATURA = 'MPEG-418') AND
  A.CODIGOGRUPO  LIKE 'S%'            AND
  A.CLAVEPROFESOR <> ''

  GROUP BY
   B.CLAVEPROFESOR, B.NOMBREPROFESOR, B.EMAIL, A.CODIGOGRUPO, A.CLAVEASIGNATURA