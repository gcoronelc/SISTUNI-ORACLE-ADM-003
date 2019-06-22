-- Creación de un esquema

create tablespace ts_venta01
datafile 'I:\app\OracleHomeUser1\oradata\orcl\ts_venta01.dbf'
size 5M;

create tablespace ts_venta02
datafile 'I:\app\OracleHomeUser1\oradata\orcl\ts_venta02.dbf'
size 5M;


create user esq_ventas
identified by secreto
default tablespace ts_venta01
quota unlimited on ts_venta01
quota unlimited on ts_venta02;

-- grant connect to esq_ventas;

create table esq_ventas.tabla1( id number, dato varchar2(100) );

INSERT INTO esq_ventas.tabla1 VALUES( 1, 'DATO 1' );

select segment_name, segment_type, tablespace_name, bytes, blocks, extents 
from dba_segments
where owner = 'ESQ_VENTAS';



create table esq_ventas.tabla2( id number, dato varchar2(100) ) tablespace ts_venta02;

INSERT INTO esq_ventas.tabla2 VALUES( 1, 'DATO 2' );

select segment_name, segment_type, tablespace_name, bytes, blocks, extents 
from dba_segments
where owner = 'ESQ_VENTAS';


-- Prueba de Usuarios

create user usuario01
identified by secreto
password expire;

create user usuario02
identified by secreto
account lock;


alter user usuario02
account unlock;


show parameter resource;

select * from dba_users;


create profile pf_demo limit
sessions_per_user 1;


grant create session to usuario01;

alter user usuario01
identified by admin
account unlock 
profile pf_demo;


alter system 
set resource_limit = false;


alter system 
set resource_limit = true;


create profile pf_pass limit
failed_login_attempts 3
password_lock_time 3/1440;


alter user usuario01
profile pf_pass;




create profile pf_function limit
password_verify_function ora12c_verify_function;


alter user usuario01
profile pf_function;


