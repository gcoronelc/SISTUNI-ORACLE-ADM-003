---  Para el usuario de aplicaciones BackOffice ---
-- Se crea un rol ----
drop role app_tcladmbo_role; 

create role app_tcladmbo_role;

--- Para el usuario de aplicaciones CORE --
--- Se le da el privilegio de crear ROL a Owner de los objetos de BD (SISDES40) --
--- aqui se usa la seguridad basada en codigo (a partir Oracle 12c) donde solo se da privilegios a los packages que hace uso al aplicativo--
GRANT CREATE ROLE TO sixdes40;
