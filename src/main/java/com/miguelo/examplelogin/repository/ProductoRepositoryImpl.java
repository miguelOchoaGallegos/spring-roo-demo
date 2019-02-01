package com.miguelo.examplelogin.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.miguelo.examplelogin.domain.Producto;

/**
 * = ProductoRepositoryImpl
 *
 * Implementation of ProductoRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = ProductoRepositoryCustom.class)
public class ProductoRepositoryImpl extends QueryDslRepositorySupportExt<Producto> implements ProductoRepositoryCustom{

    /**
     * Default constructor
     */
    ProductoRepositoryImpl() {
        super(Producto.class);
    }
}