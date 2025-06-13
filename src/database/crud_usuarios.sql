
USE programacion_bbdd;

-- Mostrar todos los usuarios con su rol
SELECT u.id_usuario, u.nombre, u.email, r.nombre_rol
FROM usuarios u
JOIN roles r ON u.id_rol = r.id_rol;

-- Mostrar usuario con id_usuario = 1
SELECT u.id_usuario, u.nombre, u.email, r.nombre_rol
FROM usuarios u
JOIN roles r ON u.id_rol = r.id_rol
WHERE u.id_usuario = 1;

-- Insertar usuarios
INSERT INTO usuarios (nombre, email, contrasena, id_rol)
VALUES ('Admin', 'admin@admin.com', 'asd123', 
  (SELECT id_rol FROM roles WHERE nombre_rol = 'admin'));

INSERT INTO usuarios (nombre, email, contrasena, id_rol)
VALUES ('Usuario', 'usuario@usuario.com', 'asd123', 
  (SELECT id_rol FROM roles WHERE nombre_rol = 'usuario'));

INSERT INTO usuarios (nombre, email, contrasena, id_rol)
VALUES ('Usuario2', 'usuario2@usuario.com', 'asd123', 
  (SELECT id_rol FROM roles WHERE nombre_rol = 'usuario'));

-- Actualizar contraseña del usuario con id_usuario = 2
UPDATE usuarios SET contrasena = 'qwe123' WHERE id_usuario = 2;

-- Actualizar rol del usuario con id_usuario = 2 a admin
UPDATE usuarios SET id_rol = (SELECT id_rol FROM roles WHERE nombre_rol = 'admin')
WHERE id_usuario = 2;

-- Eliminar usuario con id_usuario = 3
DELETE FROM usuarios WHERE id_usuario = 3;

-- Confirmar cambios mostrando todos los usuarios
SELECT u.id_usuario, u.nombre, u.email, r.nombre_rol
FROM usuarios u
JOIN roles r ON u.id_rol = r.id_rol;
