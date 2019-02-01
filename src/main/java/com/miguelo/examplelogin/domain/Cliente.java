package com.miguelo.examplelogin.domain;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

/**
 * = Cliente
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity
@RooEquals(isJpaEntity = true)
public class Cliente {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Version
    private Integer version;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String nombre;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String apellido;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String telefonoCelular;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String telefonoFijo;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String direccion;
}
