CREATE DATABASE IF NOT EXISTS planificador;
USE planificador;

CREATE TABLE IF NOT EXISTS roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL UNIQUE,
    contrasena VARCHAR(255) NOT NULL,
    role_id INT NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (role_id) REFERENCES roles(id)
);

INSERT IGNORE INTO roles (nombre) VALUES
    ('administrador'),
    ('usuario_estandar');

INSERT INTO usuarios (nombre_usuario, contrasena, role_id)
VALUES ('usuario_prueba', 'prueba123', (SELECT id FROM roles WHERE nombre = 'usuario_estandar'));

SELECT u.id, u.nombre_usuario, r.nombre AS rol, u.fecha_creacion
FROM usuarios u
JOIN roles r ON u.role_id = r.id;

UPDATE usuarios
SET role_id = (SELECT id FROM roles WHERE nombre = 'administrador')
WHERE nombre_usuario = 'usuario_prueba';

DELETE FROM usuarios
WHERE nombre_usuario = 'usuario_prueba';
