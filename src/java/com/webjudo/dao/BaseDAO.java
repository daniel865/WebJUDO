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
public class BaseDAO {
    
    public Conexion connectionManger;

    public BaseDAO(Conexion connectionManger) {
        this.connectionManger = connectionManger;
    }
    
    
    
}
