-- Modulo        : DROP OBJECTS CIERRE CLARO
-- Motivo        : Elimina objetos de BD  CLARO 
-- Nombre Script : 71DropObjectsCIEMigracion.sql
-- Comentarios   : Se puede ejecutar desde un usuario con privilegios de DBA
--                 Solo puede ser ejecutado desde el mismo usuario
-- &1 --> esquema 

spool 71DropObjectsOCIEMigracion.log
SET LINESIZE 300
SET SERVEROUTPUT ON 
declare
    v_str1 varchar2(200) := null;
    cursor get_sql is
    select
    'drop '||object_type||' '|| object_name|| DECODE(OBJECT_TYPE,'TABLE',' CASCADE CONSTRAINTS PURGE') v_str1
    from user_objects
    where object_type in ('TABLE','VIEW','PACKAGE','TYPE','PROCEDURE','FUNCTION','TRIGGER','SEQUENCE','SYNONYM')
    order by object_type,object_name;
begin
  open get_sql;
  loop
    fetch get_sql into v_str1;
    if get_sql%notfound then exit;
    end if;
    begin
      execute immediate v_str1;
      dbms_output.put_line(v_str1);
    exception
    when others then
      null;
    end;
  end loop;
close get_sql;
end;

