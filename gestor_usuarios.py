class GestorUsuarios:
    def __init__(self, usuarios):
        self.usuarios = usuarios

    def listar_usuarios(self):
        print("\n👥 Usuarios registrados:")
        for u in self.usuarios:
            print(f"ID: {u.id_usuario} | Nombre: {u.nombre} | Rol: {u.rol}")

    def eliminar_usuario(self, id_usuario):
        for u in self.usuarios:
            if u.id_usuario == id_usuario:
                self.usuarios.remove(u)
                print("✅ Usuario eliminado.")
                return
        print("❌ Usuario no encontrado.")

    def cambiar_rol(self, id_usuario, nuevo_rol):
        for u in self.usuarios:
            if u.id_usuario == id_usuario:
                u.rol = nuevo_rol
                print("✅ Rol actualizado.")
                return
        print("❌ Usuario no encontrado.")
