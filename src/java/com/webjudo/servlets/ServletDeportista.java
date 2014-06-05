/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.webjudo.servlets;

import com.webjudo.dao.Conexion;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.webjudo.dao.DeportistaDAO;
import com.webjudo.entidades.Deportista;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.text.SimpleDateFormat;
import java.sql.Date;

/**
 *
 * @author Daniel
 */
@WebServlet(name = "ServletDeportista", urlPatterns = {"/ServletDeportista"})
public class ServletDeportista extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String accion = request.getParameter("accion");
        accion = accion==null ? "Inicio" : accion;
        
        
        if ( "Inicio".equals(accion) ){
            request.getRequestDispatcher("GestionarDeportista.jsp").forward(request, response);
        }else if ( "Guardar".equals(accion) ){
            DeportistaDAO deportistaDAO = new DeportistaDAO(new Conexion("dbapolijudo", "polijic", "jdbc:oracle:thin:@localhost:1521:XE"));
            SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
            String nro_identificacion = request.getParameter("nro_identificacion");
            String nombres = request.getParameter("nombres");
            String apellido1 = request.getParameter("apellido1");
            String apellido2 = request.getParameter("apellido2");
            String programa_academico = request.getParameter("programa_academico");
            String semestre = request.getParameter("semestre");
            String grupo = request.getParameter("grupo");
            String medallas = request.getParameter("medallas");
            String direccion = request.getParameter("direccion");
            String telefono = request.getParameter("telefono");
            String celular = request.getParameter("celular");
            String cinturon_actual = request.getParameter("cinturon_actual");
            String cinturon_proximo = request.getParameter("cinturon_proximo");  
            String fecha_nac = request.getParameter("fecha_nac");
            Date fecha_nacimiento = null;
            try {
                java.util.Date fecha_naci = formatter.parse(fecha_nac);
                fecha_nacimiento = new Date(fecha_naci.getTime());
            } catch (ParseException ex) {
                Logger.getLogger(ServletDeportista.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                deportistaDAO.crearDeportista(new Deportista(Integer.parseInt(nro_identificacion), nombres, apellido2, apellido2, fecha_nacimiento, programa_academico, Integer.parseInt(semestre), 
                        Integer.parseInt(grupo), medallas, Integer.parseInt(cinturon_actual), Integer.parseInt(cinturon_proximo), direccion, Integer.parseInt(telefono), Integer.parseInt(celular) ));
            } catch (Exception e) {
                Logger.getLogger(ServletDeportista.class.getName()).log(Level.SEVERE, null, e);
                request.setAttribute("mensaje", e.getMessage());
                request.setAttribute("nro_identificacion", nro_identificacion);
                request.setAttribute("nombres", nombres);
                request.setAttribute("apellido1", apellido1);
                request.setAttribute("apellido2", apellido2);
                request.setAttribute("programa_academico", programa_academico);
                request.setAttribute("semestre", semestre);
                request.setAttribute("grupo", grupo);
                request.setAttribute("medallas", medallas);
                request.setAttribute("direccion", direccion);
                request.setAttribute("telefono", telefono);
                request.setAttribute("celular", celular);
                request.setAttribute("cinturon_actual", cinturon_actual);
                request.setAttribute("cinturon_proximo", cinturon_proximo);
                request.setAttribute("fecha_nac", fecha_nac);  
            }
            request.getRequestDispatcher("GestionarDeportista.jsp").forward(request, response);
        }else if ( "Consultar".equals(accion) ){
            DeportistaDAO deportistaDAO = new DeportistaDAO(new Conexion("dbapolijudo", "polijic", "jdbc:oracle:thin:@localhost:1521:XE"));
            
        }else if ( "Modificar".equals(accion) ){
            
        }else if ( "Eliminar".equals(accion) ){
            
        }
        
        
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
