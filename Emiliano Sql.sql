create database peluqueria_canina
use peluqueria_canina;
-- Tabla Dueño
create table Dueno(
DNI bigint,
Nombre varchar(25) not null,
Apellido varchar(25) not null,
Telefono bigint not null,
Dirección varchar(255)not null,
constraint pk_dni primary key(DNI))
-- Tabla Perro
create table Perro(
ID_Perro int auto_increment,
Nombre varchar(25) not null,
Fecha_nac date not null,
Sexo varchar(9) not null,
DNI_dueno bigint,
constraint pk_idp primary key(ID_Perro),
constraint fk_dnd foreign key(DNI_dueno) references Dueno(DNI))
create table Historial(
ID_Historial int auto_increment,
Fecha date not null,
Perro int,
Descripción varchar(150) not null,
Monto float not null,
constraint pk_idh primary key(ID_Historial),
constraint fk_prr foreign key(Perro) references Perro(ID_Perro))

insert into Dueno values (45856951, 'Roberto','Gomez',3754629584,'San Jose 289. Catamarca')
insert into Perro(Nombre,Fecha_nac,Sexo,DNI_dueno) values ('Pancho','2018-01-02','Masculino',45856951)
insert into Historial(Fecha, Perro,Descripción,Monto) values ('2022-07-23',1,'Vacunacion',250.50);

-- Punto 8
insert into Historial(Fecha, Perro,Descripción,Monto) values ('2022-08-12',10,'Baño y corte de uñas',600.50);