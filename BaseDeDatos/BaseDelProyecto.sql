use proyectoredes;
create table estudiantes(
codigo int auto_increment,
nombre char (50) not null,
documento int (15) not null,
ciudad char (50) not null,
correo char (60) not null,
idcarrera int,
primary key (codigo),
foreign key (idcarrera) references carreras(idcarrera)
#falta foreing key de carrera id carrera
);
create table carreras(
idcarrera int auto_increment,
nombrecarrera char (50) not null,
escuela char (50) not null,
primary key (idcarrera)
);
create table administradores(
idadmi int auto_increment,
nombreadmi char (50) not null,
documentoadmi int (15) not null,
primary key (idadmi)
);
create table solicitudes(
idsolicitud int auto_increment,
descripcion varchar (500), #descripcion de la solicitud
tiposolicitud boolean,
codigo int, # 1 para solicitud academico, 0 para solicitud financiera
primary key (idsolicitud),
foreign key (codigo) references estudiantes(codigo)
);
create table pagos(
idpago int auto_increment,
tipopago int (1), #exiten 3 tipos de pagos, 1 matricula, 2 deudas biblioteca, 3 bienestar
estadopago char (50), #debe aparecer el estado textual del pago a realizar(no pago, no habilitado, 
codigo int, 
# habilitado)
primary key (idpago),
foreign key (codigo) references estudiantes(codigo)
);
create table materias(
idmateria int auto_increment,
nota int (2),
descripcionnota char (10), #aprovado o no aprovado
creditos char (1),
idadmi int,
primary key (idmateria),
foreign key (idadmi) references administradores(idadmi)
);





