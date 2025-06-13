from src.auth.autenticacion import Autenticacion
from src.ui.menu import Menu

def main():
    sistema = Autenticacion()
    menu = Menu()

    while True:
        print("\n--- USUARIOS ---")
        print("1. Registrarse")
        print("2. Iniciar sesión")
        print("0. Salir")
        opcion = input("Elegí una opción: ")

        if opcion == "1":
            sistema.registrar_usuario()
        elif opcion == "2":
            usuario = sistema.iniciar_sesion()
            if usuario:
                if usuario.rol == "admin":
                    menu.mostrar_menu_admin(usuario, sistema.usuarios)
                else:
                    menu.mostrar_menu_usuario(usuario)
        elif opcion == "0":
            break
        else:
            print("❌ Opción inválida.")

if __name__ == "__main__":
    main()