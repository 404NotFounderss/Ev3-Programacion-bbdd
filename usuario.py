class Usuario:
    def __init__(self, id_usuario,nombre,email,contrasena,rol):
        self.id_usuario = id_usuario
        self.nombre = nombre
        self.email = email
        self.contrasena = contrasena
        self.rol = rol
        
    def ver_datos(self):
        print(f"\n🧾 Datos del usuario:\nNombre: {self.nombre}\nEmail: {self.email}\nRol: {self.rol}")

    def cambiar_contrasena(self, nueva_contrasena):
        self.contrasena = nueva_contrasena
        print("\n✅ Contraseña actualizada correctamente.")


# usuario_nuevo = Usuario(1,"Joaco","joaco@gmail.com","111111","admin")
# usuario_nuevo.ver_datos()
# usuario_nuevo.cambiar_contrasena("1234567")
# usuario_nuevo.ver_datos()
