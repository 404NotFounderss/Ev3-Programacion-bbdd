## 404NOTFOUNDERS INTEGRANTES 

- Joaquin Romero
- Luis Ramello
- Diego Farias
- Gabriel Natale

## NOMBRE DEL PROYECTO

Desarrollo de un sistema de autenticación y administración de usuarios basado en roles: implementación en entorno de consola con base de datos local

## TEMATICA 

Gestión y administración de usuarios con control de acceso por roles mediante una interfaz de consola.

## FUNDAMENTACION 

Elegimos abordar la problemática de la gestión de usuarios con control de acceso porque representa una necesidad común en numerosos sistemas informáticos, especialmente en instituciones educativas, organizaciones y pequeñas empresas que requieren diferenciar permisos y roles de forma segura y eficiente. Esta temática tiene un gran potencial, ya que sienta las bases para sistemas más complejos y seguros, permitiendo escalar funcionalidades en futuros desarrollos. Es altamente relevante para nuestro perfil profesional en programación y bases de datos, ya que integra conocimientos de lógica, diseño de bases de datos, programación orientada a objetos y buenas prácticas de desarrollo. Además, impacta positivamente en la sociedad al fomentar el desarrollo de soluciones tecnológicas accesibles y adaptables a distintos contextos.

## OBJETIVO

Desarrollar un programa de consola con un menú interactivo que facilite la
administración de usuarios según sus roles, diferenciando entre administradores y
usuarios estándar. Este sistema permitirá la gestión integral de registro de usuarios
e inicio de sesión, asegurando un control de acceso adecuado y una experiencia
intuitiva para los usuarios.
Además, se deberá diseñar una base de datos que permita la creación,
almacenamiento y manipulación eficiente de los datos de los usuarios, garantizando
su correcta gestión.

## TAREAS

El desarrollo del proyecto fue llevado a cabo de manera colaborativa entre todos los integrantes del grupo: Joaquín, Gabriel, Diego y Luis. Desde el inicio, trabajamos en conjunto en la planificación y distribución de tareas.

Si bien cada uno fue tomando pequeñas responsabilidades específicas en distintos momentos, el enfoque principal fue el trabajo en equipo. Nos ayudamos mutuamente con la lógica del código, la resolución de errores y la implementación de las funcionalidades. 

## DIAGRAMA DE CLASES

![Diagrama de Clases](diagrama_clases.png)

## FUNCIONAMIENTO EN GENERAL 

1. Registro e inicio de sesión
El programa inicia mostrando un menú principal con opciones para registrarse o iniciar sesión:

--- USUARIOS ---
1. Registrarse
2. Iniciar sesión
0. Salir

- Si el usuario elige registrarse, se le solicitan sus datos.

- Si elige iniciar sesión, se validan email y contraseña.

2. Funcionalidades como usuario común
Una vez autenticado, si el usuario tiene el rol usuario, accede al siguiente menú:

--- MENÚ USUARIO ---
1. Ver mis datos
2. Cambiar contraseña
0. Salir

Puede ver sus datos personales o actualizar la contraaseña.

3. Funcionalidades como administrador
Si el usuario autenticado tiene el rol admin, accede a un menú de administración:

--- MENÚ ADMIN ---
1. Listar usuarios
2. Eliminar usuario
3. Cambiar rol
0. Salir

Desde aquí puede:

- Ver todos los usuarios registrados.

- Eliminar usuarios por ID.

- Modificar el rol de cualquier usuario (usuario ↔ admin).

## ESTRUCTURA DEL PROYECTO

.
├── main.py                # Punto de entrada principal
├── usuario.py             # Clase Usuario
├── autenticacion.py       # Registro e inicio de sesión
├── menu.py                # Menús según rol
├── gestor_usuarios.py     # Funciones para admins
├── scripts_sql.sql        # Script de creación y prueba de la base de datos
├── diagrama_clases.png    # Diagrama de clases UML
└── README.md              # Documentación


## BASE DE DATOS 

La aplicación trabaja con una base de datos MySQL llamada programacion_bbdd, que contiene una tabla usuarios.
La tabla almacena:

- ID de usuario

- Nombre

- Email (único)

- Contraseña

- Rol (admin o usuario)

Script de creación:

CREATE DATABASE programacion_bbdd;

USE programacion_bbdd;

CREATE TABLE usuarios (
  id_usuario INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(30) NOT NULL,
  email VARCHAR(30) NOT NULL UNIQUE,
  contrasena VARCHAR(15) NOT NULL,
  rol VARCHAR(7) NOT NULL CHECK (rol IN ('admin', 'usuario'))
);

Incluye sentencias para crear, modificar y eliminar usuarios.
