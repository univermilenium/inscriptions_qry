SELECT 
  B.CLAVEPROFESOR, B.NOMBREPROFESOR, B.EMAIL, A.CODIGOGRUPO, A.CLAVEASIGNATURA
FROM
  HORARIOS_DET A,
  PROFESORES B
WHERE
  B.ID_ESCUELA = 3 AND
  A.CLAVEPROFESOR = B.CLAVEPROFESOR   AND
  A.INICIAL = 2013                    AND
  A.FINAL   = 2013					  AND
  A.PERIODO = 1						  AND
  A.ID_ESCUELA = 3                    AND
  (A.CLAVEASIGNATURA = 'MPS0101'       OR A.CLAVEASIGNATURA = 'MPEG0103' OR A.CLAVEASIGNATURA = 'MPEG0418' OR A.CLAVEASIGNATURA = 'MDER0101' OR A.CLAVEASIGNATURA = 'CRIM0103') AND
  A.CODIGOGRUPO  LIKE 'S%'            AND
  A.CLAVEPROFESOR <> ''

  GROUP BY
   B.CLAVEPROFESOR, B.NOMBREPROFESOR, B.EMAIL, A.CODIGOGRUPO, A.CLAVEASIGNATURA