-- Crear base de datos si no existe
CREATE DATABASE IF NOT EXISTS programacion_bbdd;
USE programacion_bbdd;

-- Crear tabla roles
CREATE TABLE IF NOT EXISTS roles (
  id_rol INT PRIMARY KEY AUTO_INCREMENT,
  nombre_rol VARCHAR(20) NOT NULL UNIQUE,
  descripcion VARCHAR(255)
);

-- Insertar roles iniciales
INSERT INTO roles (nombre_rol, descripcion) VALUES
('admin', 'Administrador con todos los permisos'),
('usuario', 'Usuario estándar con permisos limitados');

-- Crear tabla usuarios con FK a roles
CREATE TABLE IF NOT EXISTS usuarios (
  id_usuario INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(30) NOT NULL,
  email VARCHAR(30) NOT NULL UNIQUE,
  contrasena VARCHAR(100) NOT NULL,
  id_rol INT NOT NULL,
  FOREIGN KEY (id_rol) REFERENCES roles(id_rol)
);