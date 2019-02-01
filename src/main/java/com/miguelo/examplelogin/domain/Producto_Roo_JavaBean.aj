// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.miguelo.examplelogin.domain;

import com.miguelo.examplelogin.domain.Producto;
import java.util.Date;
import java.util.Objects;

privileged aspect Producto_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long Producto.getId() {
        return this.id;
    }
    
    /**
     * Sets id value
     * 
     * @param id
     * @return Producto
     */
    public Producto Producto.setId(Long id) {
        this.id = id;
        return this;
    }
    
    /**
     * Gets version value
     * 
     * @return Integer
     */
    public Integer Producto.getVersion() {
        return this.version;
    }
    
    /**
     * Sets version value
     * 
     * @param version
     * @return Producto
     */
    public Producto Producto.setVersion(Integer version) {
        this.version = version;
        return this;
    }
    
    /**
     * Gets descripcion value
     * 
     * @return String
     */
    public String Producto.getDescripcion() {
        return this.descripcion;
    }
    
    /**
     * Sets descripcion value
     * 
     * @param descripcion
     * @return Producto
     */
    public Producto Producto.setDescripcion(String descripcion) {
        this.descripcion = descripcion;
        return this;
    }
    
    /**
     * Gets fechaVencimiento value
     * 
     * @return Date
     */
    public Date Producto.getFechaVencimiento() {
        return this.fechaVencimiento;
    }
    
    /**
     * Sets fechaVencimiento value
     * 
     * @param fechaVencimiento
     * @return Producto
     */
    public Producto Producto.setFechaVencimiento(Date fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
        return this;
    }
    
    /**
     * Gets cantidad value
     * 
     * @return Integer
     */
    public int Producto.getCantidad() {
        return this.cantidad;
    }
    
    /**
     * Sets cantidad value
     * 
     * @param cantidad
     * @return Producto
     */
    public Producto Producto.setCantidad(int cantidad) {
        this.cantidad = cantidad;
        return this;
    }
    
    /**
     * This `equals` implementation is specific for JPA entities and uses 
     * the entity identifier for it, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @param obj
     * @return Boolean
     */
    public boolean Producto.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof Producto)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((Producto) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int Producto.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Producto.toString() {
        return "Producto {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", descripcion='" + descripcion + '\'' + 
                ", fechaVencimiento='" + fechaVencimiento == null ? null : java.text.DateFormat.getDateTimeInstance().format(fechaVencimiento) + '\'' + 
                ", cantidad='" + cantidad + '\'' + "}" + super.toString();
    }
    
}
