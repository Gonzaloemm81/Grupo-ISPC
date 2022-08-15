-- crear base de datos 
create database peluqueria_canina;
use peluqueria_canina;
-- crear tabla Dueno
create table Dueno(
DNI bigint,
Nombre varchar(25) not null,
Apellido varchar(25) not null,
Telefono bigint not null,
Dirección varchar(255) not null,
constraint pk_dni primary key (DNI));
-- crear tabla Perro
create table Perro(
ID_Perro int auto_increment,
Nombre varchar(25) not null,
Fecha_nac date not null,
Sexo varchar(9) not null,
DNI_dueno bigint not null,
constraint pk_idperro primary key(ID_Perro),
constraint fk_dnidueno foreign key(DNI_dueno) references Dueno(DNI));
create table Historial(
ID_Historial int auto_increment,
Fecha date not null,
Perro int,
Descripción varchar(150) not null,
Monto float not null,
constraint pk_idhist primary key(ID_Historial),
constraint fk_perro foreign key(Perro) references Perro(ID_Perro));
insert into Dueno values(25643877, 'Raul', 'Vazquez', 154789654, 'Cataluña 8521');
insert into Perro(Nombre,Fecha_nac,Sexo,DNI_dueno) values ('Nompa','2011-01-02','Macho',25643877);

-- 4.Actualice la fecha de nacimiento de algún animal (perro) que usted considere.

update Perro set Nombre='Always' where DNI_dueno=25643877