drop database gymfit;
create database gymfit;

use gymfit;

create table admin(
	id_admin int auto_increment,
	nombre varchar(100) not null,
	apellido varchar(100) not null,
	correo varchar(100) not null,
	telefono varchar(100) not null,
	clave varchar(100) not null,
	qr varchar(100) not null,
	primary key(id_admin)
);

create table tipo_id(
	id_tipo int auto_increment,
	nombre varchar(100) not null,
	primary key(id_tipo)
);

create table estado_colaborador(
	id_estado_colaborador int auto_increment,
	nombre varchar(100) not null,
	primary key(id_estado_colaborador)
);

create table nivel(
	id_nivel int auto_increment,
	nombre varchar(100) not null,
	primary key(id_nivel)
);

create table estado_usuario(
	id_estado_usuario int auto_increment,
	nombre varchar(100) not null,
	primary key(id_estado_usuario)
);

create table estado_factura(
	id_estado_factura int auto_increment,
	nombre varchar(100) not null,
	primary key(id_estado_factura)
);

create table tipo_plan(
	id_tipo int auto_increment,
	nombre varchar(100) not null,
	primary key(id_tipo)
);

create table maquina(
	id_maquina int auto_increment,
	nombre varchar(100) not NULL,
	primary key(id_maquina)
);

create table ejercicio(
	id_ejercicio int auto_increment,
	nombre varchar(100) not null,
	id_maquina int,
	primary key(id_ejercicio),
	foreign key(id_maquina)
	references maquina(id_maquina) 
	on delete CASCADE 
	on update cascade
);

create table colaborador(
	id_colaborador int auto_increment,
	nombre varchar(100) not null,
	apellido varchar(100) not null,
	n_identificacion int not null unique,
	id_tipo_id int not null,
	correo varchar(100) not NULL UNIQUE ,
	clave varchar(100) not null,
	telefono varchar(100) not null unique,
	direccion varchar(100) not null,
	id_estado_colaborador int not null,
	primary key(id_colaborador),
	foreign key(id_tipo_id)
	references tipo_id(id_tipo) 
	on delete CASCADE 
	on update cascade,
	foreign key(id_estado_colaborador)
	references estado_colaborador(id_estado_colaborador)
);

create table rutina(
	id_rutina int auto_increment,
	objetivo varchar(150) not null,
	duracion_semanas int not null,
	id_nivel int not null,
	primary key(id_rutina),
	foreign key(id_nivel)
	references nivel(id_nivel)
	on delete cascade
	on update cascade
);

create table plan(
	id_plan int auto_increment,
	id_tipo int not null,
	nombre varchar(100) not null,
	descripcion varchar(150) not null,
	duracion varchar(100),
	id_nivel int not null,
	frecuencia_semanal varchar(150),
	calorias_objetivo int,
	fecha_creacion date not null,
	primary key(id_plan),
	foreign key(id_tipo)
	references tipo_plan(id_tipo)
	on delete cascade
	on update cascade,
	foreign key(id_nivel)
	references nivel(id_nivel)
	on delete CASCADE 
	on update cascade
);

create table usuario(
	id_usuario int auto_increment,
	nombre varchar(100) not null,
	apellido varchar(100) not null,
	correo varchar(100) not null UNIQUE,
	clave varchar(100) not null,
	telefono varchar(100) not null,
	foto varchar(100),
	qr varchar(100),
	id_estado_usuario int not null,
	meses_mora INT not null,
	deuda decimal(10,2) not null,
	n_id varchar(100) not null,
	id_tipo_id int not null,
	primary key(id_usuario),
	foreign key(id_estado_usuario)
	references estado_usuario(id_estado_usuario)
	on delete CASCADE
	on update cascade,
	foreign key(id_tipo_id)
	references tipo_id(id_tipo)
);

create table factura(
	id_factura int auto_increment,
	id_usuario int not null,
	total decimal(10,2) not null,
	id_plan int not null,
	fecha date not null,
	id_estado_factura int not null,
	primary key(id_factura),
	foreign key(id_usuario)
	references usuario(id_usuario)
	on delete cascade
	on update cascade,
	foreign key(id_plan)
	references plan(id_plan)
	on delete cascade
	on update cascade,
	foreign key(id_estado_factura)
	references estado_factura(id_estado_factura)
);

create table asistencia(
	id_usuario int not null,
	fecha date not null,
	asistio bool not null,
	primary key(id_usuario,fecha),
	foreign key(id_usuario)
	references usuario(id_usuario)
	on delete CASCADE 
	on update cascade
);

create table rutina_ejercicio(
	id_rutina int not null,
	id_ejercicio int not null,
	repeticiones int not null,
	veces int not null,
	primary key(id_rutina,id_ejercicio,repeticiones,veces),
	foreign key(id_rutina)
	references rutina(id_rutina)
	on delete CASCADE 
	on update cascade,
	foreign key(id_ejercicio)
	references ejercicio(id_ejercicio)
	on delete CASCADE 
	on update cascade
);
