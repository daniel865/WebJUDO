/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.webjudo.dao;

/**
 *
 * @author Daniel
 */

import com.webjudo.entidades.Deportista;



public class DeportistaDAO extends BaseDAO{

    public DeportistaDAO(Conexion connectionManger) {
        super(connectionManger);
    }
    
    public void crearDeportista(Deportista deportista)throws Exception{
        
    }
    
    public Deportista buscarDeportista(int documento)throws Exception{
        return null;   
    }
    
    public void modificarDeportista(Deportista deportista)throws Exception{
        
    }
    
    public void eliminarDeportista(int documento)throws Exception{
        
    }
    
}
