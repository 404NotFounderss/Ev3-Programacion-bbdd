CREATE DATABASE programacion_bbdd;  --Creacion de la base de datos

USE programacion_bbdd;

--Seleccion de tablas
SELECT * FROM usuarios;
SELECT * FROM usuarios WHERE id_usuario = 1;

--Creacion de tabla usuarios
CREATE TABLE usuarios (
  id_usuario INT PRIMARY KEY AUTO_INCREMENT,
  nombre varchar(30) NOT NULL,
  email varchar(30) NOT NULL UNIQUE,
  contrasena varchar(100) NOT NULL,
  rol varchar(7) NOT NULL CHECK (rol IN ('admin', 'usuario'))
);

--CRUD
SELECT * FROM usuarios;
SELECT * FROM usuarios WHERE id_usuario = 1;

INSERT INTO usuarios (nombre, email, contrasena, rol)
VALUES ('Admin', 'admin@admin.com', 'asd123', 'admin');

INSERT INTO usuarios (nombre, email, contrasena, rol)
VALUES ('Usuario', 'usuario@usuario.com', 'asd123', 'usuario');

INSERT INTO usuarios (nombre, email, contrasena, rol)
VALUES ('Usuario2', 'usuario2@usuario.com', 'asd123', 'usuario');

UPDATE usuarios SET contrasena = 'qwe123'
WHERE id_usuario = 2;

UPDATE usuarios SET rol = 'admin'
WHERE id_usuario = 2;

DELETE FROM usuarios WHERE id_usuario = 3;
