SELECT
  a.claveprofesor, a.nombreprofesor, a.email, b.codigogrupo, b.claveasignatura
FROM
  profesores a, profesores_grupos b
WHERE
  a.claveprofesor = b.claveprofesor AND
  (b.claveasignatura = 'MPEG-103' OR b.claveasignatura = 'MPEG-418') AND
  b.id_escuela = 4