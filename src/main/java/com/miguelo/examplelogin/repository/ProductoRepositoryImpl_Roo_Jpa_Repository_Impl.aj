// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.miguelo.examplelogin.repository;

import com.miguelo.examplelogin.domain.Producto;
import com.miguelo.examplelogin.domain.QProducto;
import com.miguelo.examplelogin.repository.ProductoRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ProductoRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare @type: ProductoRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ProductoRepositoryImpl.DESCRIPCION = "descripcion";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ProductoRepositoryImpl.FECHA_VENCIMIENTO = "fechaVencimiento";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ProductoRepositoryImpl.CANTIDAD = "cantidad";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Producto> ProductoRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QProducto producto = QProducto.producto;
        
        JPQLQuery<Producto> query = from(producto);
        
        Path<?>[] paths = new Path<?>[] {producto.descripcion,producto.fechaVencimiento,producto.cantidad};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(DESCRIPCION, producto.descripcion)
			.map(FECHA_VENCIMIENTO, producto.fechaVencimiento)
			.map(CANTIDAD, producto.cantidad);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, producto);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Producto> ProductoRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QProducto producto = QProducto.producto;
        
        JPQLQuery<Producto> query = from(producto);
        
        Path<?>[] paths = new Path<?>[] {producto.descripcion,producto.fechaVencimiento,producto.cantidad};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(producto.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(DESCRIPCION, producto.descripcion)
			.map(FECHA_VENCIMIENTO, producto.fechaVencimiento)
			.map(CANTIDAD, producto.cantidad);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, producto);
    }
    
}
