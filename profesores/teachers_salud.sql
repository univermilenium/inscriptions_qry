 SELECT 
  B.CLAVEPROFESOR, B.NOMBREPROFESOR, B.EMAIL, A.CODIGOGRUPO, A.CLAVEASIGNATURA
FROM
  HORARIOS_DET A,
  PROFESORES B
WHERE
  B.ID_ESCUELA = 5 AND
  A.CLAVEPROFESOR = B.CLAVEPROFESOR   AND
  A.INICIAL = 2013                    AND
  A.FINAL   = 2013					  AND
  A.PERIODO = 1						  AND
  A.ID_ESCUELA = 5                    AND
  A.CLAVEASIGNATURA = 'MPS0101'       AND
  A.CODIGOGRUPO  LIKE 'S%'            AND
  A.CLAVEPROFESOR <> ''

  GROUP BY
   B.CLAVEPROFESOR, B.NOMBREPROFESOR, B.EMAIL, A.CODIGOGRUPO, A.CLAVEASIGNATURA

