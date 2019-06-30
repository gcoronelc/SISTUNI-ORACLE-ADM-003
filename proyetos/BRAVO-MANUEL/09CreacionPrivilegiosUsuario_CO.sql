--PASO 1
-- Desde el usuario con privilegios DBA ---
-- Solo se da privilegios al usuario de aplicaciones CORE los Packages correspondiente --- 
-- grant execute ---
GRANT EXECUTE ON sixdes40.FUN_OBTENER_TABLA_DESC TO app_tcladmco;
GRANT EXECUTE ON sixdes40.FUN_OBTENER_USER_GROUP_DESC TO app_tcladmco;
GRANT EXECUTE ON sixdes40.PKG_DM_JSON TO app_tcladmco;
GRANT EXECUTE ON sixdes40.PKG_SIX_CFGTCL TO app_tcladmco;
GRANT EXECUTE ON sixdes40.PKG_SIX_DOWNCF TO app_tcladmco;
GRANT EXECUTE ON sixdes40.PKG_SIX_DRVTCL TO app_tcladmco;
GRANT EXECUTE ON sixdes40.PKG_SIX_GRPDET TO app_tcladmco;
GRANT EXECUTE ON sixdes40.PKG_SIX_GRUPO TO app_tcladmco;
GRANT EXECUTE ON sixdes40.PKG_SIX_MSGQCF TO app_tcladmco;
GRANT EXECUTE ON sixdes40.PKG_SIX_PROCESS TO app_tcladmco;
GRANT EXECUTE ON sixdes40.PKG_SIX_USRTCL TO app_tcladmco;


--- crear sinonimo Packages, Function, Procedures ---
CREATE OR REPLACE SYNONYM APP_TCLADMCO.FUN_OBTENER_TABLA_DESC FOR sixdes40.FUN_OBTENER_TABLA_DESC;
CREATE OR REPLACE SYNONYM APP_TCLADMCO.FUN_OBTENER_USER_GROUP_DESC FOR sixdes40.FUN_OBTENER_USER_GROUP_DESC;
CREATE OR REPLACE SYNONYM APP_TCLADMCO.PKG_DM_JSON FOR sixdes40.PKG_DM_JSON;
CREATE OR REPLACE SYNONYM APP_TCLADMCO.PKG_SIX_CFGTCL FOR sixdes40.PKG_SIX_CFGTCL;
CREATE OR REPLACE SYNONYM APP_TCLADMCO.PKG_SIX_DOWNCF FOR sixdes40.PKG_SIX_DOWNCF;
CREATE OR REPLACE SYNONYM APP_TCLADMCO.PKG_SIX_DRVTCL FOR sixdes40.PKG_SIX_DRVTCL;
CREATE OR REPLACE SYNONYM APP_TCLADMCO.PKG_SIX_GRPDET FOR sixdes40.PKG_SIX_GRPDET;
CREATE OR REPLACE SYNONYM APP_TCLADMCO.PKG_SIX_GRUPO FOR sixdes40.PKG_SIX_GRUPO;
CREATE OR REPLACE SYNONYM APP_TCLADMCO.PKG_SIX_MSGQCF FOR sixdes40.PKG_SIX_MSGQCF;
CREATE OR REPLACE SYNONYM APP_TCLADMCO.PKG_SIX_PROCESS FOR sixdes40.PKG_SIX_PROCESS;
CREATE OR REPLACE SYNONYM APP_TCLADMCO.PKG_SIX_USRTCL FOR sixdes40.PKG_SIX_USRTCL;

-- secuencias
CREATE OR REPLACE SYNONYM APP_TCLADMCO.SEQ_DOWNCF FOR sixdes40.SEQ_DOWNCF;
CREATE OR REPLACE SYNONYM APP_TCLADMCO.SEQ_GRUPO_TABLE_VALUE FOR sixdes40.SEQ_GRUPO_TABLE_VALUE;
CREATE OR REPLACE SYNONYM APP_TCLADMCO.SEQ_GRUPO_TABLE_VALUE_DET FOR sixdes40.SEQ_GRUPO_TABLE_VALUE_DET;
CREATE OR REPLACE SYNONYM APP_TCLADMCO.SEQ_LOG_AUDIT FOR sixdes40.SEQ_LOG_AUDIT;
CREATE OR REPLACE SYNONYM APP_TCLADMCO.SEQ_DATASOURCE FOR sixdes40.SEQ_DATASOURCE;

-- PASO2 : SE DA ACCESO A LOS PACKAGES DEL APLICATIVO --
--         EL USUARIO DEl CORE NO PUEDE ACCEDER A NINGUNA TABLA DEL OWNER, SOLO SE REALIZA MEDIANTE EL USO DE LOS PACKAGES
--         Code Based Access Control 
--- IMPORTANTE ---- INGRESAR AL USUARIO OWNER (sixdes40) y EJECUTAR ---

create role app_tcladmco_role

GRANT SELECT, UPDATE ON sixdes40.TP_SIX_CFGTCL TO app_tcladmco_role
GRANT SELECT, UPDATE ON sixdes40.TP_SIX_DOWNCF TO app_tcladmco_role;
GRANT SELECT, UPDATE ON sixdes40.TP_SIX_DRVTCL TO app_tcladmco_role;
GRANT SELECT, UPDATE ON sixdes40.TP_SIX_MSGQCF TO app_tcladmco_role;
GRANT SELECT, UPDATE ON sixdes40.TP_SIX_PROCESS TO app_tcladmco_role;
GRANT SELECT, UPDATE ON sixdes40.TP_SIX_USRTCL TO app_tcladmco_role;
GRANT SELECT, UPDATE ON sixdes40.TS_SIX_GRUPO TO app_tcladmco_role;
GRANT SELECT, UPDATE ON sixdes40.TS_SIX_GRUPO_DETALLE TO app_tcladmco_role;
GRANT SELECT ON sixdes40.TP_GRUPO_TABLE_VALUE_DET TO app_tcladmco_role;
GRANT SELECT ON sixdes40.TP_LOG_AUDIT TO app_tcladmco_role;

-- sequences --
GRANT SELECT ON sixdes40.SEQ_DOWNCF TO app_tcladmbo_role;
GRANT SELECT ON sixdes40.SEQ_GRUPO_TABLE_VALUE TO app_tcladmbo_role;
GRANT SELECT ON sixdes40.SEQ_GRUPO_TABLE_VALUE_DET TO app_tcladmbo_role;
GRANT SELECT ON sixdes40.SEQ_LOG_AUDIT TO app_tcladmbo_role;
GRANT SELECT ON sixdes40.SEQ_DATASOURCE TO app_tcladmbo_role;

-- asignar ROL a los packages y funciones (security code base) ---
GRANT app_tcladmco_role TO PACKAGE sixdes40.PKG_SIX_CFGTCL;
GRANT app_tcladmco_role TO PACKAGE sixdes40.PKG_SIX_DOWNCF;
GRANT app_tcladmco_role TO PACKAGE sixdes40.PKG_SIX_DRVTCL;
GRANT app_tcladmco_role TO PACKAGE sixdes40.PKG_SIX_GRPDET;
GRANT app_tcladmco_role TO PACKAGE sixdes40.PKG_SIX_GRUPO;
GRANT app_tcladmco_role TO PACKAGE sixdes40.PKG_SIX_MSGQCF;
GRANT app_tcladmco_role TO PACKAGE sixdes40.PKG_SIX_PROCESS;
GRANT app_tcladmco_role TO PACKAGE sixdes40.PKG_SIX_USRTCL;
GRANT app_tcladmco_role TO FUNCTION sixdes40.FUN_OBTENER_TABLA_DESC;
GRANT app_tcladmco_role TO FUNCTION sixdes40.FUN_OBTENER_USER_GROUP_DESC;
