CREATE TABLESPACE POLIJUDO LOGGING
DATAFILE 'D:\BD\bdpolijudo.dbf' size 20M
extent management local segment space management auto; 

create user dbapolijudo profile default 
identified by polijic 
default tablespace POLIJUDO 
temporary tablespace temp 
account unlock; 

--permisos 

grant connect, resource,dba to dbapolijudo; 