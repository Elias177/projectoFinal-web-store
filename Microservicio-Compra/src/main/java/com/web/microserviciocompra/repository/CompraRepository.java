package com.web.microserviciocompra.repository;


import com.web.microserviciocompra.entity.Cliente;
import com.web.microserviciocompra.entity.Compra;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CompraRepository extends JpaRepository<Compra, Integer> {

    Compra findByCliente(Cliente cliente);

}