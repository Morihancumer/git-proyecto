CREATE DATABASE SOLTECH;
USE SOLTECH;

CREATE TABLE Empleado(
IdEmpleado int not null identity PRIMARY KEY,
NomEmpleado varchar (30) not null,
Puesto varchar(30) not null,
TelEmpleado int not null,
Direccion varchar (50));

INSERT INTO Empleado VALUES('Giovanni Sosa Garcia', 'Empacador',34653335,'Teodomiro Manzano 3692');
INSERT INTO Empleado VALUES('Hector de Leon', 'Barrendero',34081910,'5 de Mayo 10');
INSERT INTO Empleado VALUES('Mory Muñoz ', 'Empacador',33457689,'Carlos A. Carrillo 36');
INSERT INTO Empleado VALUES('Israel Espinoza', 'Empacador',65789835,'Longinos Cadena 92');
INSERT INTO Empleado VALUES('Israel Espinoza', 'Empacador',33547799,'5 de mayo 369');

Select*from empleado;

Create table Tarjeta(
IdTarjeta int not null identity PRIMARY KEY,
PropietarioT varchar(50) not null,
T_Acceso char not null);

insert into tarjeta values('Giovanni Sosa','A');
select*from tarjeta;

Create table Area(
Id_Area int not null identity PRIMARY KEY,
Nom_Area int not null,
IdEmpleado int not null);

alter table area
add foreign key (IdEmpleado) references Empleado(IdEmpleado);

Create table Accesos(
IdEmpleadoA int not null identity PRIMARY KEY,
Fecha date not null,
Area varchar (50) not null,
TipoAcceso varchar(29) not null,
Hora time not null,
IdEmpleado int not null,
IdTarjeta int not null);

alter table Accesos
add foreign key (IdEmpleado) references Empleado(IdEmpleado);

alter table Accesos
add foreign key (IdTarjeta) references Tarjeta(IdTarjeta);


Create table PuestoT(
IdPuesto int not null identity PRIMARY KEY,
Nom_Puesto varchar(30) not null,
Id_Area int not null);

alter table PuestoT
add foreign key (Id_Area) references Area(Id_Area);


Create table Empleado_Puesto(
Id_Empleado int not null,
IdPuesto int not null,
primary key (Id_Empleado,IdPuesto));


-----------------------------------------Ejemplo de como agregar las tablas de muchos a muchos
create table aeropuerto-tipo.avion (
nombre.tipo        varchar(20)  not null ,
codigo.aeropuerto  int          not null ,
primary key (nombre.tipo,codigo.aeropuerto)
);

-----------------------------------------------esta tabla no esta creada----

select*from empleado;

insert into Empleado values('Giovanni Sosa Garcia', 'Empacador',3334653335,'Teodomiro Manzano 3692')