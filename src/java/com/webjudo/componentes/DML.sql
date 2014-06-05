--DML CINTURONES;
INSERT INTO CINTURONES VALUES(1,'Blanco');
INSERT INTO CINTURONES VALUES(2,'Azul');
INSERT INTO CINTURONES VALUES(3,'Marron');
INSERT INTO CINTURONES VALUES(4,'Amarillo');
INSERT INTO CINTURONES VALUES(5,'Naranja');

UPDATE CINTURONES SET descripcion_cin='Amarillo 2' WHERE codigo_cin=4;
DELETE FROM CINTURONES WHERE codigo_cin=5;

--DML ENTRENADORES;
INSERT INTO ENTRENADORES VALUES(1010, OBJETO_DATOS('Juan','Garcia','López', TO_DATE('1980/07/09', 'yyyy/mm/dd'), 'Calle 10', 2548744, 3015548721), 3, 'Profesional en Deporte', 5);
INSERT INTO ENTRENADORES VALUES(1020, OBJETO_DATOS('Felipe','Castrillon','Murcia', TO_DATE('1990/02/05', 'yyyy/mm/dd'), 'Carrera 20', 2214477, 3002147788), 2, 'Licenciado en Educacion Fisica', 3 );
INSERT INTO ENTRENADORES VALUES(1030, OBJETO_DATOS('Stiven','Castañeda','Rodriguez', TO_DATE('1988/01/22', 'yyyy/mm/dd'), 'Calle 23c', 2244488, 3002117877), 4, 'Profesional en Deporte', 7);
INSERT INTO ENTRENADORES VALUES(1040, OBJETO_DATOS('Manuel','Arboleda','Rios', TO_DATE('1986/09/27', 'yyyy/mm/dd'), 'Carrera 55e', 2225877, 311122584), 3, 'Profesional en Deporte', 10);
INSERT INTO ENTRENADORES VALUES(1050, OBJETO_DATOS('Alejandro','Echavarria','Mesas', TO_DATE('1991/03/21', 'yyyy/mm/dd'), 'Carrera 14', 2554484, 3002214788), 1, 'Licenciado en Educacion Fisica', 2);

UPDATE ENTRENADORES SET titulo_ent='Preparador Fisico' WHERE nro_identificacion_ent=1010;
DELETE FROM ENTRENADORES WHERE nro_identificacion_ent=1050;

--DML GRUPOS;
INSERT INTO GRUPOS VALUES(1,'Principiantes',1010);
INSERT INTO GRUPOS VALUES(2,'Basico',1010);
INSERT INTO GRUPOS VALUES(3,'Intermedio',1020);
INSERT INTO GRUPOS VALUES(4,'Avanzado',1040);
INSERT INTO GRUPOS VALUES(5,'Experimentados',1040);

UPDATE GRUPOS SET descripcion_gru='Grupo Nuevo', id_entrenador_gru=1010 WHERE codigo_gru=1;
DELETE FROM GRUPOS WHERE codigo_gru=5;

--DML DEPORTISTAS;
INSERT INTO DEPORTISTAS VALUES(3010, OBJETO_DATOS('Jorge','Murillo','Aristizabal', TO_DATE('1992/03/21', 'yyyy/mm/dd'), 'Carrera 50c', 2214478, 3001445877),'Ingenieria Informatica', 3, 4, 'Si', 2, 3);
INSERT INTO DEPORTISTAS VALUES(3020, OBJETO_DATOS('Cristian','Palacios','Quirama', TO_DATE('1993/07/11', 'yyyy/mm/dd'), 'Calle 29b', 2114477, 3041258877),'Ingenieria Civil', 2, 2, 'No', 1, 2);
INSERT INTO DEPORTISTAS VALUES(3030, OBJETO_DATOS('Andres','Ochoa','Montoya', TO_DATE('1989/09/01', 'yyyy/mm/dd'), 'Carrera 10B', 2214587, 3001225877), 'Contaduria Publica', 4, 2, 'Si', 3, 4);
INSERT INTO DEPORTISTAS VALUES(3040, OBJETO_DATOS('Cristina','Saldarriaga','Munera', TO_DATE('1994/09/01', 'yyyy/mm/dd'), 'Calle 25C', 2114788, 3014485722), 'Profesional en Deporte', 5, 4, 'Si', 3, 4);
INSERT INTO DEPORTISTAS VALUES(3050, OBJETO_DATOS('Luis','Botero','Muñoz', TO_DATE('1992/04/14', 'yyyy/mm/dd'), 'Calle 54', 2547788, 3002114588), 'Ingenieria en Productividad y Calidad', 8, 2, 'Si', 2, 3);

UPDATE DEPORTISTAS d SET d.datos_dep.direccion='Avenida 25', semestre_dep=4 WHERE nro_identificacion_dep=3030;
DELETE FROM DEPORTISTAS WHERE nro_identificacion_dep=3050;


--DML HISTORIA_DEPORTISTAS;
INSERT INTO HISTORIA_DEPORTISTAS VALUES(4010, 3010, 1, TO_DATE('2009/04/14', 'yyyy/mm/dd'));
INSERT INTO HISTORIA_DEPORTISTAS VALUES(4020, 3010, 2, TO_DATE('2009/09/22', 'yyyy/mm/dd'));
INSERT INTO HISTORIA_DEPORTISTAS VALUES(4030, 3010, 3, TO_DATE('2011/01/14', 'yyyy/mm/dd'));
INSERT INTO HISTORIA_DEPORTISTAS VALUES(4040, 3020, 1, TO_DATE('2013/02/22', 'yyyy/mm/dd'));
INSERT INTO HISTORIA_DEPORTISTAS VALUES(4050, 3030, 1, TO_DATE('2012/03/27', 'yyyy/mm/dd'));

UPDATE HISTORIA_DEPORTISTAS SET cod_cinturon_his=4 WHERE nro_historia_his=4040;
DELETE FROM HISTORIA_DEPORTISTAS WHERE nro_historia_his=4050;

--CONSULTAS;
SELECT d.datos_dep.nombres, programa_academico_dep, descripcion_cin
FROM DEPORTISTAS d, CINTURONES c
WHERE codigo_cin=cinturon_actual_dep 
ORDER BY d.datos_dep.nombres;

SELECT count(nro_identificacion_dep), descripcion_gru 
FROM DEPORTISTAS dep, GRUPOS gru, CINTURONES cin
WHERE codigo_cin=cinturon_actual_dep and cinturon_actual_dep>=2 
GROUP BY descripcion_gru
HAVING count(codigo_cin)>2
ORDER BY descripcion_gru;

SELECT count(nro_identificacion_dep), descripcion_cin 
FROM DEPORTISTAS dep, GRUPOS gru, CINTURONES cin
WHERE codigo_cin=cinturon_actual_dep and cinturon_actual_dep>=2 
GROUP BY descripcion_cin
HAVING count(codigo_cin)>1
ORDER BY descripcion_cin; 

SELECT count(nro_identificacion_dep), descripcion_gru
FROM DEPORTISTAS d, GRUPOS g
WHERE grupo_dep=codigo_gru
GROUP BY descripcion_gru
ORDER BY g.descripcion_gru;

SELECT e.datos_ent.nombres, descripcion_cin
FROM ENTRENADORES e, CINTURONES c 
WHERE cinturon_ent>2 and codigo_cin>2
ORDER by e.datos_ent.nombres;

SELECT count(*) FROM ENTRENADORES;
