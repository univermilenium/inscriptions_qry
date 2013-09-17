--tabla para el seguimiento de las extracciones. Firebird / Interbase
create table tracking
(
  firstname varchar(250) not null,
  lastname varchar(250) not null,
  email varchar(250) not null,
  course1 varchar(250) not null,
  group1 varchar(250) not null,
  type1 int not null,
  created timestamp not null
);

--insert de prueba

insert into tracking
(
  firstname,
  lastname,
  email,
  course1,
  group1,
  type1,
  created
) values
(
  'firstname',
  'lastname',
  'email',
  'course1',
  'group1',
  1,
  'NOW'	
);