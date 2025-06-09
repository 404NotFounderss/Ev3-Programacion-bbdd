from gestor_usuarios import GestorUsuarios

class Menu:
    def mostrar_menu_usuario(self, usuario):
        while True:
            print("\n--- MENÚ USUARIO ---")
            print("1. Ver mis datos")
            print("2. Cambiar contraseña")
            print("0. Salir")

            opcion = input("Elegí una opción: ")

            if opcion == "1":
                usuario.ver_datos()
            elif opcion == "2":
                nueva = input("Nueva contraseña: ")
                usuario.cambiar_contrasena(nueva)
            elif opcion == "0":
                break
            else:
                print("❌ Opción inválida.")

    def mostrar_menu_admin(self, usuario, usuarios):
        gestor = GestorUsuarios(usuarios)

        while True:
            print(f"\n--- MENÚ ADMIN: {usuario.nombre} ---")
            print("1. Listar usuarios")
            print("2. Eliminar usuario")
            print("3. Cambiar rol")
            print("0. Salir")

            opcion = input("Elegí una opción: ")

            if opcion == "1":
                gestor.listar_usuarios()
            elif opcion == "2":
                id_usuario = int(input("ID del usuario a eliminar: "))
                gestor.eliminar_usuario(id_usuario)
            elif opcion == "3":
                id_usuario = int(input("ID del usuario: "))
                nuevo_rol = input("Nuevo rol (admin/usuario): ")
                gestor.cambiar_rol(id_usuario, nuevo_rol)
            elif opcion == "0":
                break
            else:
                print("❌ Opción inválida.")