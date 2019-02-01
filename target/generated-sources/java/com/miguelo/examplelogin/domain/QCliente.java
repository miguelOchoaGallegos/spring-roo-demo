package com.miguelo.examplelogin.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QCliente is a Querydsl query type for Cliente
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QCliente extends EntityPathBase<Cliente> {

    private static final long serialVersionUID = 1396109634L;

    public static final QCliente cliente = new QCliente("cliente");

    public final StringPath apellido = createString("apellido");

    public final StringPath direccion = createString("direccion");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath nombre = createString("nombre");

    public final StringPath telefonoCelular = createString("telefonoCelular");

    public final StringPath telefonoFijo = createString("telefonoFijo");

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QCliente(String variable) {
        super(Cliente.class, forVariable(variable));
    }

    public QCliente(Path<? extends Cliente> path) {
        super(path.getType(), path.getMetadata());
    }

    public QCliente(PathMetadata metadata) {
        super(Cliente.class, metadata);
    }

}

