package com.webjudo.entidades;


import java.sql.Date;

/**
 *
 * @author Daniel
 */
public class Deportista {
    
    private int nro_identificacion;
    private String nombre;
    private String primer_apellido;
    private String segundo_apellido;
    private Date fecha_nacimiento;
    private String programa_academico;
    private int semestre;
    private int grupo;
    private String medallas;
    private int cinturon_actual;
    private int cinturon_proximo;
    private String direccion;
    private int telefono;
    private int celular;

    public Deportista(int nro_identificacion, String nombre, String primer_apellido, String segundo_apellido, Date fecha_nacimiento, String programa_academico, int semestre, int grupo, String medallas, int cinturon_actual, int cinturon_proximo, String direccion, int telefono, int celular) {
        this.nro_identificacion = nro_identificacion;
        this.nombre = nombre;
        this.primer_apellido = primer_apellido;
        this.segundo_apellido = segundo_apellido;
        this.fecha_nacimiento = fecha_nacimiento;
        this.programa_academico = programa_academico;
        this.semestre = semestre;
        this.grupo = grupo;
        this.medallas = medallas;
        this.cinturon_actual = cinturon_actual;
        this.cinturon_proximo = cinturon_proximo;
        this.direccion = direccion;
        this.telefono = telefono;
        this.celular = celular;
    }

    public int getCelular() {
        return celular;
    }

    public void setCelular(int celular) {
        this.celular = celular;
    }

    public int getNro_identificacion() {
        return nro_identificacion;
    }

    public void setNro_identificacion(int nro_identificacion) {
        this.nro_identificacion = nro_identificacion;
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

    public String getPrograma_academico() {
        return programa_academico;
    }

    public void setPrograma_academico(String programa_academico) {
        this.programa_academico = programa_academico;
    }

    public int getSemestre() {
        return semestre;
    }

    public void setSemestre(int semestre) {
        this.semestre = semestre;
    }

    public int getGrupo() {
        return grupo;
    }

    public void setGrupo(int grupo) {
        this.grupo = grupo;
    }

    public String getMedallas() {
        return medallas;
    }

    public void setMedallas(String medallas) {
        this.medallas = medallas;
    }

    public int getCinturon_actual() {
        return cinturon_actual;
    }

    public void setCinturon_actual(int cinturon_actual) {
        this.cinturon_actual = cinturon_actual;
    }

    public int getCinturon_proximo() {
        return cinturon_proximo;
    }

    public void setCinturon_proximo(int cinturon_proximo) {
        this.cinturon_proximo = cinturon_proximo;
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
    
    
    
}
