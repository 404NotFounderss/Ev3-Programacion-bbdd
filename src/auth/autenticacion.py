from src.users.usuario import Usuario

class Autenticacion:
    def __init__(self):
        self.usuarios = []
        self.next_id = 1

        admin_prueba = Usuario(
            id_usuario=self.next_id,
            nombre="Admin",
            email="admin@admin.com",
            contrasena="asd123",
            rol="admin"
        )
        usuario_prueba = Usuario(
            id_usuario=self.next_id + 1,
            nombre="usuario_prueba",
            email="usuario@usuario.com",
            contrasena="asd123",
            rol="usuario"
        )

        self.usuarios.append(admin_prueba)
        self.next_id += 1
        self.usuarios.append(usuario_prueba)
        self.next_id += 1

    def registrar_usuario(self):
        nombre = input("Nombre: ")
        email = input("Email: ")
        contrasena = input("Contraseña (mínimo 6 caracteres, letras y números): ")
        rol = "usuario"

        if len(contrasena) < 6 or contrasena.isalpha() or contrasena.isdigit():
            print("La contraseña debe tener al menos 6 caracteres y contener letras y números.")
            return
        
        if "@" not in email:
            print("El email debe contener un @.")
            return

        for u in self.usuarios:
            if u.email == email:
                print("❌ Ya existe un usuario con ese email.")
                return

        usuario = Usuario(self.next_id, nombre, email, contrasena,rol)
        self.usuarios.append(usuario)
        self.next_id += 1
        print("✅ Usuario registrado con éxito.")

    def iniciar_sesion(self):
        email = input("Email: ")
        contrasena = input("Contraseña: ")

        for usuario in self.usuarios:
            if usuario.email == email and usuario.contrasena == contrasena:
                print(f"🔓 Bienvenido, {usuario.nombre}!")
                return usuario

        print("❌ Credenciales incorrectas.")
        return None