SELECT
  a.claveprofesor, a.nombreprofesor, a.email, b.codigogrupo, b.claveasignatura
FROM
  profesores a, profesores_grupos b
WHERE
  a.claveprofesor = b.claveprofesor AND
  (b.claveasignatura = 'MPS0101' OR b.claveasignatura = 'MPEG0103'  OR b.claveasignatura = 'MPEG0418' OR b.claveasignatura = 'MDER0101' OR b.claveasignatura = 'CRIM0103' ) AND
  b.id_escuela = 2