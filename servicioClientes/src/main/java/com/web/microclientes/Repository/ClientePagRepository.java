package com.web.microclientes.Repository;

import com.web.microclientes.Entity.Cliente;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface ClientePagRepository extends PagingAndSortingRepository<Cliente, Integer> {
//
    Page<Cliente> findAll(Pageable pageable);
}