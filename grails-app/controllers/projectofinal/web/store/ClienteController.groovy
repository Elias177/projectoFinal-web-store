package projectofinal.web.store

import grails.converters.JSON
import org.springframework.http.HttpEntity
import org.springframework.http.HttpMethod
import org.springframework.http.ResponseEntity
import org.springframework.web.client.RestTemplate

class ClienteController {

    def index() {

    }

    def addArticulo(int id, int cantidad) {

        def rest = new RestTemplate()

        ResponseEntity<Articulo> exchange = rest.exchange("http://localhost:8084/api/articulos/" + id,
                HttpMethod.GET, null, Articulo.class)

        String anterior = session.getAttribute("carrito")
        String[] cantArt
        def res = []


        if (anterior != null) {

            cantArt = anterior.split('\\(')

            def precioNuevo = (int) Float.parseFloat(cantArt[0]) + (int) exchange.getBody().getPrecio()
            def cantidadNueva = Integer.parseInt(cantArt[1]) + cantidad

            session["carrito"] = "$precioNuevo($cantidadNueva"

            res = [precioNuevo: precioNuevo, cantidad: cantidadNueva, error: false]

            render res as JSON

            return false

        } else {

            session["carrito"] = exchange.getBody().precio + "($cantidad"

            println "articulo: " + exchange.body.precio
            res = [error: true]

            render res as JSON
        }


    }

    def registrar() {}

    def save(Cliente cliente) {

        def rest = new RestTemplate()

        HttpEntity<Cliente> request = new HttpEntity<>(cliente)

        ResponseEntity<Cliente> response = rest.postForEntity("http://localhost:8084/api/clientes/back", request, Cliente.class)
        def r2 = new RestTemplate()

        r2.exchange("http://localhost:8084/api/correos/nuevo",
                HttpMethod.POST, request, Cliente.class)

        println "ID Cliente Nuevo: " + response.getBody().getId()

        session["cliente"] = response.getBody().getId()

        redirect(uri: '/articulo/index?offset=0 ')
    }


}