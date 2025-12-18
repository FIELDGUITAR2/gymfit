-- drop database gimfit;
CREATE DATABASE gimfit;
USE gimfit;

CREATE TABLE admin(
    id_admin INT AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    clave VARCHAR(100) NOT NULL,
    telefono VARCHAR(100) NOT NULL,
    foto VARCHAR(100) NOT NULL,
    PRIMARY KEY(id_admin)
) ENGINE=InnoDB;

CREATE TABLE estado_colaborador(
    id_estado INT AUTO_INCREMENT,
    nombre_estado VARCHAR(100) NOT NULL,
    PRIMARY KEY(id_estado)
) ENGINE=InnoDB;

CREATE TABLE estado_cliente(
    id_estado INT AUTO_INCREMENT,
    nombre_estado VARCHAR(100) NOT NULL,
    PRIMARY KEY(id_estado)
) ENGINE=InnoDB;

CREATE TABLE cliente(
    id_cliente INT AUTO_INCREMENT,
    id_estado INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    clave VARCHAR(100) NOT NULL,
    telefono VARCHAR(100) NOT NULL,
    foto VARCHAR(100) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    estatura_metros DOUBLE,
    peso_kilos DOUBLE,
    PRIMARY KEY(id_cliente),
    FOREIGN KEY(id_estado)
        REFERENCES estado_cliente(id_estado) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE colaborador(
    id_colaborador INT AUTO_INCREMENT,
    id_estado INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    clave VARCHAR(100) NOT NULL,
    telefono VARCHAR(100) NOT NULL,
    foto VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(id_colaborador),
    FOREIGN KEY(id_estado)
        REFERENCES estado_colaborador(id_estado) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE plan(
    id_plan INT AUTO_INCREMENT,
    precio_mensual DECIMAL(10,2) NOT NULL,
    vestidores BOOLEAN NOT NULL,
    clases_grupales BOOLEAN NOT NULL,
    id_entrenador INT,
    evaluacion_fisica BOOLEAN NOT NULL,
    PRIMARY KEY(id_plan),
    FOREIGN KEY(id_entrenador)
        REFERENCES colaborador(id_colaborador) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE estado_pago(
    id_estado INT AUTO_INCREMENT,
    nombre_estado VARCHAR(100) NOT NULL,
    PRIMARY KEY(id_estado)
) ENGINE=InnoDB;

CREATE TABLE maquina(
    id_maquina INT AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    PRIMARY KEY(id_maquina)
) ENGINE=InnoDB;

CREATE TABLE maquina_plan(
    id_maquina INT NOT NULL,
    id_plan INT NOT NULL,
    FOREIGN KEY(id_maquina)
        REFERENCES maquina(id_maquina) ON DELETE CASCADE,
    FOREIGN KEY(id_plan)
        REFERENCES plan(id_plan) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE plan_cliente(
    id_plan_cliente INT AUTO_INCREMENT,
    id_plan INT NOT NULL,
    id_cliente INT NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    fecha DATE NOT NULL,
    meses INT NOT NULL,
    id_estado INT NOT NULL,
    PRIMARY KEY(id_plan_cliente),
    FOREIGN KEY(id_plan)
        REFERENCES plan(id_plan) ON DELETE CASCADE,
    FOREIGN KEY(id_cliente)
        REFERENCES cliente(id_cliente),
    FOREIGN KEY(id_estado)
        REFERENCES estado_pago(id_estado)
) ENGINE=InnoDB;
