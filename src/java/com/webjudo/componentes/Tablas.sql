DROP TABLE HISTORIA_DEPORTISTAS;
DROP TABLE DEPORTISTAS;
DROP TABLE GRUPOS;
DROP TABLE ENTRENADORES;
DROP TABLE CINTURONES;
drop type OBJETO_DATOS;

CREATE TYPE OBJETO_DATOS as object
(
	nombres          VARCHAR2 (40) ,
    primer_apellido  VARCHAR2 (20) ,
    segundo_apellido VARCHAR2 (20) ,
    fecha_nacimiento DATE ,
    direccion        VARCHAR2 (50) ,
    telefono         NUMBER (7) ,
    celular          NUMBER (12)
);
/

CREATE TABLE CINTURONES
  (
    codigo_cin      NUMBER (2) ,
    descripcion_cin VARCHAR2 (20)   
  ) ;

CREATE TABLE DEPORTISTAS
  (
    nro_identificacion_dep NUMBER (12) ,
    datos_dep OBJETO_DATOS ,
    programa_academico_dep VARCHAR2 (70) ,
    semestre_dep           NUMBER (2) ,
    grupo_dep              NUMBER (3) ,
    medallas_dep           VARCHAR2 (5) ,
    cinturon_actual_dep    NUMBER (2) ,
    cinturon_proximo_dep   NUMBER (2)   
  ) ;

CREATE TABLE ENTRENADORES
  (
    nro_identificacion_ent NUMBER (12) ,
    datos_ent  OBJETO_DATOS ,
    cinturon_ent          NUMBER (2) ,
    titulo_ent            VARCHAR2 (70) ,
    anios_experiencia_ent NUMBER (2)
  ) ;

  CREATE TABLE GRUPOS
  (
    codigo_gru        NUMBER (3) ,
    descripcion_gru   VARCHAR2 (25) ,
    id_entrenador_gru NUMBER (12)   
  ) ;


CREATE TABLE HISTORIA_DEPORTISTAS
  (
    nro_historia_his  NUMBER (5) ,
    id_deportista_his NUMBER (12) ,
    cod_cinturon_his  NUMBER (2) ,
    fecha_his         DATE   
  ) ;

