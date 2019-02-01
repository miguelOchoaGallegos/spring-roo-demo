package com.miguelo.examplelogin.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QProducto is a Querydsl query type for Producto
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QProducto extends EntityPathBase<Producto> {

    private static final long serialVersionUID = -1582444776L;

    public static final QProducto producto = new QProducto("producto");

    public final NumberPath<Integer> cantidad = createNumber("cantidad", Integer.class);

    public final StringPath descripcion = createString("descripcion");

    public final DateTimePath<java.util.Date> fechaVencimiento = createDateTime("fechaVencimiento", java.util.Date.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QProducto(String variable) {
        super(Producto.class, forVariable(variable));
    }

    public QProducto(Path<? extends Producto> path) {
        super(path.getType(), path.getMetadata());
    }

    public QProducto(PathMetadata metadata) {
        super(Producto.class, metadata);
    }

}

