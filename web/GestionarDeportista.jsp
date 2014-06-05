<%-- 
    Document   : GestionarDeportista
    Created on : 4/06/2014, 02:14:29 PM
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String mensaje = request.getAttribute("mensaje") != null ? (String) request.getAttribute("mensaje") : null;
    String nro_identificacion = request.getAttribute("nro_identificacion") != null ? (String) request.getAttribute("nro_identificacion") : "";
    String nombres = request.getAttribute("nombres") != null ? (String) request.getAttribute("nombres") : "";
    String apellido1 = request.getAttribute("apellido1") != null ? (String) request.getAttribute("apellido1") : "";
    String apellido2 = request.getAttribute("apellido2") != null ? (String) request.getAttribute("apellido2") : "";
    String fecha_nac = request.getAttribute("fecha_nac") != null ? (String) request.getAttribute("fecha_nac") : "";
    String programa_academico = request.getAttribute("programa_academico") != null ? (String) request.getAttribute("programa_academico") : "";
    String semestre = request.getAttribute("semestre") != null ? (String) request.getAttribute("semestre") : "";
    String grupo = request.getAttribute("grupo") != null ? (String) request.getAttribute("grupo") : "";
    String medallas = request.getAttribute("medallas") != null ? (String) request.getAttribute("medallas") : "";
    String direccion = request.getAttribute("direccion") != null ? (String) request.getAttribute("direccion") : "";
    String telefono = request.getAttribute("telefono") != null ? (String) request.getAttribute("telefono") : "";
    String celular = request.getAttribute("celular") != null ? (String) request.getAttribute("celular") : "";
    String cinturon_actual = request.getAttribute("cinturon_actual") != null ? (String) request.getAttribute("cinturon_actual") : "";
    String cinturon_proximo = request.getAttribute("cinturon_proximo") !=null ? (String) request.getAttribute("cinturon_proximo") : "";
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar Deportista</title>
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <link rel="stylesheet" href="css/dashboard.css"/>
        <script src="js/jquery-1.10.2.js"></script>
        <script src="js/bootstrap.js"></script>
    </head>
    <body>
        <div id="wrapper">

            <!-- Menu Horizontal -->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <!-- Agrupación de Elementos en navbar para dispositivos mobiles-->
                <div class="navbar-header"> 
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"> <!-- Organizar data-target -->
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Web JUDO</a>
                </div>

                <!-- Colección de Link del Nav para el dashboard  parte izquierda-->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
                        <li><a>Gestionar Deportista</a></li>
                        
                    </ul>

                </div> <!-- Fin Barra Colapsada -->
            </nav>

            <form class="form-horizontal" action="ServletDeportista" method="POST" >
                <fieldset>

                    <!-- Form Name -->
                    <legend>Gestionar Deportista</legend>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="nro_identificacion">Número de Identificación</label>  
                        <div class="col-md-5">
                            <input id="nro_identificacion" name="nro_identificacion" type="text" placeholder="" class="form-control input-sm" required="" value="">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="nombres">Nombres</label>  
                        <div class="col-md-5">
                            <input id="nombres" name="nombres" type="text" placeholder="" class="form-control input-sm" required="" value="">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="apellido1">Primer Apellido</label>  
                        <div class="col-md-5">
                            <input id="apellido1" name="apellido1" type="text" placeholder="" class="form-control input-sm" required="" value="">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="apellido2">Segundo Apellido</label>  
                        <div class="col-md-5">
                            <input id="apellido2" name="apellido2" type="text" placeholder="" class="form-control input-sm" required="" value="">

                        </div>
                    </div>
                    
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="fecha_nac">Fecha de Nacimiento</label>  
                        <div class="col-md-5">
                            <input id="fecha_nac" name="fecha_nac" type="date" placeholder="" class="form-control input-sm" required="" value="">
                        </div>
                    </div>
                    
                    <!-- Select Basic -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="programa_academico">Programa Académico</label>
                        <div class="col-md-5">
                            <select id="programa_academico" name="programa_academico" class="form-control input-sm">
                                <option value="">Seleccione un Programa Académico</option>
                                <option value="Ingenieria Informatica">Ingenieria Informática</option>
                                <option value="Tecnologia Sistematizacion de Datos">Tecnología de Sistematización de Datos</option>
                            </select>
                        </div>
                    </div>
                    
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="semestre">Semestre</label>  
                        <div class="col-md-5">
                            <input id="semestre" name="semestre" type="text" placeholder="" class="form-control input-sm" required="" value="">
                        </div>
                    </div>
                    
                    <!-- Select Basic -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="grupo">Grupo</label>
                        <div class="col-md-5">
                            <select id="grupo" name="grupo" class="form-control input-sm">
                                <option value="">Seleccione un Grupo</option>
                            </select>
                        </div>
                    </div>
                    
                    <!-- Select Basic -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="medallas">Medallas</label>
                        <div class="col-md-5">
                            <select id="medallas" name="medallas" class="form-control input-sm">
                                <option value="No">No</option>
                                <option value="Si">Sí</option>
                            </select>
                        </div>
                    </div>
                    
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="direccion">Dirección</label>  
                        <div class="col-md-5">
                            <input id="direccion" name="direccion" type="text" placeholder="" class="form-control input-sm" required="" value="">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="telefono">Teléfono</label>  
                        <div class="col-md-5">
                            <input id="telefono" name="telefono" type="text" placeholder="" class="form-control input-sm" value="">
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="celular">Celular</label>  
                        <div class="col-md-5">
                            <input id="celular" name="celular" type="text" placeholder="" class="form-control input-sm" value="">
                        </div>
                    </div>
                    
                    <!-- Select Basic -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="cinturon_actual">Cinturón Actual</label>
                        <div class="col-md-5">
                            <select id="cinturon_actual" name="cinturon_actual" class="form-control input-sm">
                                <option value="">Seleccione un Cinturón</option>
                                
                            </select>
                        </div>
                    </div>
                    
                    <!-- Select Basic -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="cinturon_proximo">Cinturon Próximo</label>
                        <div class="col-md-5">
                            <select id="cinturon_proximo" name="cinturon_proximo" class="form-control input-sm">
                                <option value="">Seleccione un Cinturón</option>
                                
                            </select>
                        </div>
                    </div>

                    <div class="btn-group col-lg-offset-4 col-lg-4">
                        <!--<button type="button" class="btn btn-default" name="btnnuevo" id="btnnuevo">Nuevo</button>-->
                        <input type="submit" class="btn btn-default" name="accion" value="Guardar" id="btnguardar" />
                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#ModalBuscar" name="btnbuscar" id="btnbuscar">Consultar</button>
                        <input type="submit" class="btn btn-default" name="accion" value="Modificar" id="btnmodificar" /> 
                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#ModalEliminar" name="btneliminar" id="btneliminar" >Eliminar</button> 

                    </div>

                </fieldset>
                <input id="cargoCargos" type="hidden" name="cargoCargos" value="">
            </form>


            <!-- Modal Buscar-->
            <form class="form-horizontal" action="ServletDeportista" method="POST" >
                <div class="modal fade" id="ModalBuscar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">Buscar Deportista</h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="buscar">Número de Identificación</label>  
                                    <div class="col-md-4">
                                        <input id="buscar_emp" name="buscar_dep" placeholder="" class="form-control input-md"  type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                <input type="submit" value="Consultar" class="btn btn-primary" name="accion" id="btnbuscarb">
                            </div>
                        </div>
                    </div>
                </div>

            </form>


            <!-- Modal Eliminar-->
            <form class="form-horizontal" action="ServletDeportista" method="POST" >
                <div class="modal fade" id="ModalEliminar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">Eliminar Deprtista</h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="buscar">Número de Identificación</label>  
                                    <div class="col-md-4">
                                        <input id="eliminar_emp" name="eliminar_dep" placeholder="" class="form-control input-md"  type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                <input type="submit" value="Eliminar" class="btn btn-primary" name="accion" id="btnbuscare">
                            </div>
                        </div>
                    </div>
                </div>
            </form>


        </div>
    </body>
</html>
