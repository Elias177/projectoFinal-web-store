package projectofinal.web.store

class Cliente {

    int id
    String foto
    String nombre
    String correo
    String telefono
    String direccion
    String fechaNacimiento
    String contrasena

    static constraints = {
        id nullable: true
        telefono nullable: true
        direccion nullable: true
        fechaNacimiento nullable: true
        foto nullable: true
    }
}
