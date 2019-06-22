SQL> show parameter control_file

NAME                                 TYPE        VALUE
------------------------------------ ----------- ------------------------------
control_file_record_keep_time        integer     7
control_files                        string      I:\APP\ORACLEHOMEUSER1\ORADATA
                                                 \ORCL\CONTROL01.CTL, I:\APP\OR
                                                 ACLEHOMEUSER1\ORADATA\ORCL\CON
                                                 TROL02.CTL
												 
												 
												 
-- EJERCICIO 01
/*
Simular la falla de un archivo de control.

*/


-- EJERCICIO 02
/*
Crear un tercer archivo de control.

'I:\APP\ORACLEHOMEUSER1\ORADATA\ORCL\CONTROL01.CTL','I:\APP\ORACLEHOMEUSER1\ORADATA\ORCL\CONTROL02.CTL','I:\APP\ORACLEHOMEUSER1\ORADATA\ORCL\CONTROL03.CTL

*/


SQL> shutdown immediate
Base de datos cerrada.
Base de datos desmontada.
Instancia ORACLE cerrada.

SQL> startup nomount
Instancia ORACLE iniciada.

Total System Global Area 2566914048 bytes
Fixed Size                  3835352 bytes
Variable Size             738200104 bytes
Database Buffers         1811939328 bytes
Redo Buffers               12939264 bytes


SQL> alter system set 
  2  control_files='I:\APP\ORACLEHOMEUSER1\ORADATA\ORCL\CONTROL01.CTL','I:\APP\ORACLEHOMEUSER1\ORADATA\ORCL\CONTROL02.CTL','I:\APP\ORACLEHOMEUSER1\ORADATA\ORCL\CONTROL03.CTL' 
  3  scope=spfile;


SQL> alter database mount;

Base de datos modificada.

SQL> alter database open;

Base de datos modificada.

SQL> alter database mount;

Base de datos modificada.

SQL> alter database open;

Base de datos modificada.

SQL> show parameter control_files

NAME                                 TYPE        VALUE
------------------------------------ ----------- ------------------------------
control_files                        string      I:\APP\ORACLEHOMEUSER1\ORADATA
                                                 \ORCL\CONTROL01.CTL, I:\APP\OR
                                                 ACLEHOMEUSER1\ORADATA\ORCL\CON
                                                 TROL02.CTL, I:\APP\ORACLEHOMEU
                                                 SER1\ORADATA\ORCL\CONTROL03.CT
                                                 L





