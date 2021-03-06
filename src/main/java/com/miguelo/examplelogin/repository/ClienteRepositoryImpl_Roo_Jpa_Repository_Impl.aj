// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.miguelo.examplelogin.repository;

import com.miguelo.examplelogin.domain.Cliente;
import com.miguelo.examplelogin.domain.QCliente;
import com.miguelo.examplelogin.repository.ClienteRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ClienteRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare @type: ClienteRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ClienteRepositoryImpl.NOMBRE = "nombre";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ClienteRepositoryImpl.APELLIDO = "apellido";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ClienteRepositoryImpl.TELEFONO_CELULAR = "telefonoCelular";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ClienteRepositoryImpl.TELEFONO_FIJO = "telefonoFijo";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ClienteRepositoryImpl.DIRECCION = "direccion";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Cliente> ClienteRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QCliente cliente = QCliente.cliente;
        
        JPQLQuery<Cliente> query = from(cliente);
        
        Path<?>[] paths = new Path<?>[] {cliente.nombre,cliente.apellido,cliente.telefonoCelular,cliente.telefonoFijo,cliente.direccion};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NOMBRE, cliente.nombre)
			.map(APELLIDO, cliente.apellido)
			.map(TELEFONO_CELULAR, cliente.telefonoCelular)
			.map(TELEFONO_FIJO, cliente.telefonoFijo)
			.map(DIRECCION, cliente.direccion);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, cliente);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Cliente> ClienteRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QCliente cliente = QCliente.cliente;
        
        JPQLQuery<Cliente> query = from(cliente);
        
        Path<?>[] paths = new Path<?>[] {cliente.nombre,cliente.apellido,cliente.telefonoCelular,cliente.telefonoFijo,cliente.direccion};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(cliente.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NOMBRE, cliente.nombre)
			.map(APELLIDO, cliente.apellido)
			.map(TELEFONO_CELULAR, cliente.telefonoCelular)
			.map(TELEFONO_FIJO, cliente.telefonoFijo)
			.map(DIRECCION, cliente.direccion);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, cliente);
    }
    
}
