package com.webjudo.entidades;

/**
 *
 * @author Daniel
 */
public class Grupo {
    
    private int codigo;
    private String descripcion;
    private int id_entrenador;

    public Grupo(int codigo, String descripcion, int id_entrenador) {
        this.codigo = codigo;
        this.descripcion = descripcion;
        this.id_entrenador = id_entrenador;
    }

    public int getId_entrenador() {
        return id_entrenador;
    }

    public void setId_entrenador(int id_entrenador) {
        this.id_entrenador = id_entrenador;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    
    
}
