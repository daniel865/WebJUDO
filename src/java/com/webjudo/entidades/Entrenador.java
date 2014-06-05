package com.webjudo.entidades;

import java.sql.Date;

/**
 *
 * @author Daniel
 */
public class Entrenador {
    
    private int nro_identificacion;
    private String nombre;
    private String primer_apellido;
    private String segundo_apellido;
    private Date fecha_nacimiento;
    private String titulo_ent;
    private int anios_experiencia;
    private int cinturon;
    private String direccion;
    private int telefono;
    private int celular;

    public Entrenador(int nro_identificacion, String nombre, String primer_apellido, String segundo_apellido, Date fecha_nacimiento, String titulo_ent, int anios_experiencia, int cinturon, String direccion, int telefono, int celular) {
        this.nro_identificacion = nro_identificacion;
        this.nombre = nombre;
        this.primer_apellido = primer_apellido;
        this.segundo_apellido = segundo_apellido;
        this.fecha_nacimiento = fecha_nacimiento;
        this.titulo_ent = titulo_ent;
        this.anios_experiencia = anios_experiencia;
        this.cinturon = cinturon;
        this.direccion = direccion;
        this.telefono = telefono;
        this.celular = celular;
    }

    public int getNro_identificacion() {
        return nro_identificacion;
    }

    public void setNro_identificacion(int nro_identificacion) {
        this.nro_identificacion = nro_identificacion;
    }

    public String getTitulo_ent() {
        return titulo_ent;
    }

    public void setTitulo_ent(String titulo_ent) {
        this.titulo_ent = titulo_ent;
    }

    public int getAnios_experiencia() {
        return anios_experiencia;
    }

    public void setAnios_experiencia(int anios_experiencia) {
        this.anios_experiencia = anios_experiencia;
    }

    public int getCinturon() {
        return cinturon;
    }

    public void setCinturon(int cinturon) {
        this.cinturon = cinturon;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPrimer_apellido() {
        return primer_apellido;
    }

    public void setPrimer_apellido(String primer_apellido) {
        this.primer_apellido = primer_apellido;
    }

    public String getSegundo_apellido() {
        return segundo_apellido;
    }

    public void setSegundo_apellido(String segundo_apellido) {
        this.segundo_apellido = segundo_apellido;
    }

    public Date getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(Date fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public int getCelular() {
        return celular;
    }

    public void setCelular(int celular) {
        this.celular = celular;
    }
    
    
    
}
