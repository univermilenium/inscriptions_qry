--tabla para el seguimiento de las extracciones. Firebird / Interbase
create table tracking
(
  username varchar(250) not null,
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
  username,
  firstname,
  lastname,
  email,
  course1,
  group1,
  type1,
  created
) values
(
  'username',
  'firstname',
  'lastname',
  'email',
  'course1',
  'group1',
  1,
  'NOW'	
);


--connectionstrings

--Firebird
--ServerType=0;User=SYSDBA;Password=masterkey;Size=4096;Dialect=3;Pooling=FALSE;database=localhost:C:\\Users\\ELEARNING\\Desktop\\extracciones\\TRACKING.GDB


--Access
--Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\ELEARNING\\Desktop\\extracciones\\tracking.accdb

