package com.web.microclientes.Services;

import com.web.microclientes.Entity.Cliente;
import com.web.microclientes.Repository.ClientePagRepository;
import com.web.microclientes.Repository.ClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ClienteService {

    @Autowired
    ClienteRepository clienteRepository;

    @Autowired
    ClientePagRepository clientePagRepository;

    public void crearCliente(Cliente cliente){
        clienteRepository.save(cliente);
    }

    public Cliente devolverNuevoCliente(Cliente cliente){
        return clienteRepository.save(cliente);
    }

    public List<Cliente> paginacionDeClientes(Pageable pageable) {
        return clientePagRepository.findAll(pageable).getContent();
    }

    public long contarClientes(){
        return clienteRepository.count();
    }


    public List<Cliente> buscarTodos(){
        return clienteRepository.findAll();
    }

    public void borrarCliente(Cliente cliente){
        clienteRepository.delete(cliente);
    }

    public Cliente buscarPorId(int id){
        Optional<Cliente> cliente = clienteRepository.findById(id);

        return cliente.orElse(null);
    }

    public List<Cliente> buscarClientePorNombre(String nombre){
        return clienteRepository.findAllByNombre(nombre);
    }



}