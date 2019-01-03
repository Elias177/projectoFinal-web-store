package projectofinal.web.store

import projectoFinal.web.store.User

class Cliente {

    String nombre
    String apellido
    String telefono
    String direccion
    String fechaNacimiento
    String contrasena
    User usuario
    static hasMany = [carrito: Articulo]

    static constraints = {
        id nullable: true
        telefono nullable: true
        direccion nullable: true
        fechaNacimiento nullable: true
        foto nullable: true
        carrito nullable: true
    }
}
