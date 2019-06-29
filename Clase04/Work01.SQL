

show user;

grant select_catalog_role to scott;

revoke select_catalog_role from scott;

ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

create user eureka identified by admin;

grant create session to eureka;

grant select on scott.emp to eureka;

GRANT ALL ON SCOTT.EMP TO EUREKA;

REVOKE ALL ON SCOTT.EMP FROM EUREKA;


CREATE ROLE rol_scott;

grant connect to rol_scott;

grant rol_scott to eureka;

revoke rol_scott from eureka;

create role my_session;

grant create session to my_session;

grant my_session to eureka;



grant create session 
to jose identified by pepe;


grant create session 
to useradmin identified by admin
with admin option;


grant sysdba to system;


select * from dba_tab_privs
where grantee = 'EUREKA';


show parameter aud;


audit select on scott.dept 
by access;



select * from aud$;


select * from scott.dept;



select * from aud$;


NOAUDIT all by scott;

delete from aud$;


noaudit all on scott.dept;

grant all on scott.dept to jose;


noaudit all by jose;

noaudit all by scott;

delete from aud$;

select * from aud$;

grant resource to jose;


audit table by jose by access;

select * from SYS.dba_audit_object;

noaudit all by jose;

audit session by jose;

select * from aud$;

select * from dba_audit_session;




