package com.web.microserviciocompra.repository;


import com.web.microserviciocompra.entity.ArtCompra;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ArtCompraRepository extends JpaRepository<ArtCompra, Integer> {
}