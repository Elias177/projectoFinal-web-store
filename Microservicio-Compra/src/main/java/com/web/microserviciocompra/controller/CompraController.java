package com.web.microserviciocompra.controller;


import com.web.microserviciocompra.entity.Cliente;
import com.web.microserviciocompra.entity.Compra;
import com.web.microserviciocompra.services.CompraService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class CompraController {

    @Autowired
    private CompraService comprasServices;

    @GetMapping(value = "/compras")
    public ResponseEntity<List<Compra>> listarCompras(){

        return new ResponseEntity<>(comprasServices.compraList(), HttpStatus.OK);
    }

    @PostMapping("/compras")
    public ResponseEntity<Compra> crearCompra(@RequestBody Compra compra){

        comprasServices.crearCompra(compra);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @GetMapping("/compras/cliente")
    public ResponseEntity<Compra> comprasPorCliente(@RequestBody Cliente cliente){

        return new ResponseEntity<>(comprasServices.buscarPorCliente(cliente), HttpStatus.OK);
    }

    @RequestMapping(value = "/compras/pag", method = RequestMethod.GET, params = {"limit", "offset"})
    public ResponseEntity<List<Compra>> comprasPorPaginacion(@RequestParam("limit") int limit, @RequestParam("offset") int offset){

        Pageable pageable = PageRequest.of(offset, limit);
        return new ResponseEntity<>(comprasServices.comprasPorPaginacion(pageable), HttpStatus.OK);
    }


    @RequestMapping(value = "/compras/pag/cliente", method = RequestMethod.GET, params = {"limit", "offset"})
    public ResponseEntity<List<Compra>> comprasPorPagCliente(@RequestParam("limit") int limit,
                                                             @RequestParam("offset") int offset,
                                                             @RequestBody Cliente cliente){
        Pageable pageable = PageRequest.of(offset, limit);

        return new ResponseEntity<>(comprasServices.comprasPorPagCliente(pageable, cliente), HttpStatus.OK);
    }


    @GetMapping("/compras/{id}")
    public ResponseEntity<Compra> compraPorId(@PathVariable int id){
        return new ResponseEntity<>(comprasServices.compraPorId(id), HttpStatus.OK);
    }
}
