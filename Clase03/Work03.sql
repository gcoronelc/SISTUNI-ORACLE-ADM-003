
select segment_name, segment_type, tablespace_name, bytes, blocks, extents 
from dba_segments
where owner = 'SCOTT';


create sequence scott.sq_emp;

begin
  for n in 1 .. 1000 loop
    insert into scott.emp( empno, ename, sal )
    values( scott.sq_emp.nextval, 'Gustavo', 5000 );
  end loop;
end;


select tablespace_name, extent_management, block_size, allocation_type
from dba_tablespaces;

-- I:\app\OracleHomeUser1\oradata\orcl


-- TABLESPACE CON OPCIONES POR DEFECTO

create tablespace ts_demo
datafile 'I:\app\OracleHomeUser1\oradata\orcl\ts_demo.dbf'
size 5M;


select *
from dba_tablespaces
where tablespace_name = 'TS_DEMO';

CREATE TABLE SCOTT.TB_DEMO(
  ID NUMBER,
  DATO VARCHAR2(200)
) TABLESPACE TS_DEMO;

select segment_name, segment_type, tablespace_name, bytes, blocks, extents 
from dba_segments
where owner = 'SCOTT';

select tablespace_name, extent_management, block_size, allocation_type
from dba_tablespaces;


begin
  for n in 1 .. 10000 loop
    insert into scott.TB_DEMO( id, dato )
    values( scott.sq_emp.nextval, 'HOY GANAMOS' );
  end loop;
end;





-- TABLESPACE CON EXTENTS ADMINISTRADO POR ORACLE

create tablespace ts_demo2
datafile 'I:\app\OracleHomeUser1\oradata\orcl\ts_demo2.dbf'
size 5M
EXTENT MANAGEMENT LOCAL AUTOALLOCATE;


select *
from dba_tablespaces
where tablespace_name LIKE 'TS_DEMO%';

CREATE TABLE SCOTT.TB_DEMO2(
  ID NUMBER,
  DATO VARCHAR2(200)
) TABLESPACE TS_DEMO2;

select segment_name, segment_type, tablespace_name, bytes, blocks, extents 
from dba_segments
where owner = 'SCOTT';

SELECT * 
FROM dba_extents
WHERE tablespace_name = 'TS_DEMO';

select tablespace_name, extent_management, block_size, allocation_type
from dba_tablespaces;


begin
  for n in 1 .. 100000 loop
    insert into scott.TB_DEMO2( id, dato )
    values( scott.sq_emp.nextval, 'PERU CAMPEON' );
    COMMIT;
  end loop;
end;



-- TABLESPACE CON EXTENTS DE 127 KB

create tablespace ts_demo3
datafile 'I:\app\OracleHomeUser1\oradata\orcl\ts_demo3.dbf'
size 5M
EXTENT MANAGEMENT LOCAL UNIFORM SIZE 127K;


select *
from dba_tablespaces
where tablespace_name LIKE 'TS_DEMO%';

CREATE TABLE SCOTT.TB_DEMO3(
  ID NUMBER,
  DATO VARCHAR2(200)
) TABLESPACE TS_DEMO3;

select segment_name, segment_type, tablespace_name, bytes, blocks, extents 
from dba_segments
where owner = 'SCOTT';

SELECT * 
FROM dba_extents
WHERE tablespace_name = 'TS_DEMO3';

select tablespace_name, extent_management, block_size, allocation_type
from dba_tablespaces;


begin
  for n in 1 .. 100000 loop
    insert into scott.TB_DEMO3( id, dato )
    values( scott.sq_emp.nextval, 'PERU 3 - BRASIL 1' );
    COMMIT;
  end loop;
end;







-- TABLESPACE CON CRECIMIENTO AUTOMATICOB

create tablespace ts_demo4
datafile 'I:\app\OracleHomeUser1\oradata\orcl\ts_demo4.dbf'
size 500K
autoextend on next 500K maxsize 3M 
EXTENT MANAGEMENT LOCAL UNIFORM SIZE 256K;


select *
from dba_tablespaces
where tablespace_name LIKE 'TS_DEMO%';

CREATE TABLE SCOTT.TB_DEMO4(
  ID NUMBER,
  DATO VARCHAR2(200)
) TABLESPACE TS_DEMO4;

select segment_name, segment_type, tablespace_name, bytes, blocks, extents 
from dba_segments
where owner = 'SCOTT';

SELECT * 
FROM dba_extents
WHERE tablespace_name = 'TS_DEMO3';

select tablespace_name, extent_management, block_size, allocation_type
from dba_tablespaces;


begin
  for n in 1 .. 100000 loop
    insert into scott.TB_DEMO4( id, dato )
    values( scott.sq_emp.nextval, 'VAMOS VAMOS PERU' );
    COMMIT;
  end loop;
end;


-- TABLEsPACE TEMPORAL

select TABLESPACE_NAME from v$sort_segment;


-- Buffers diferentes

create tablespace ts_demo5
datafile 'I:\app\OracleHomeUser1\oradata\orcl\ts_demo5.dbf'
size 500K
autoextend on next 500K maxsize 3M
blocksize 4k
EXTENT MANAGEMENT LOCAL UNIFORM SIZE 256K;


alter system set db_4k_cache_size = 8m scope=spfile;

show parameter cache_size

select tablespace_name, extent_management, block_size, allocation_type
from dba_tablespaces;


-- Ejercicio 02
/*
Se necesita almacenar los datos de un sistema de3 facturación.
Se estima que se generan comprobantes a razón de 300 por hora,
pero en epoca de fiesta esta cantidad se multiplica po 5.
Se tiene proyecto abrir por lo menos 4 locales en los 
siguientes 6 meses.
Diseñe los tablespaces para este requerimiento.
*/






