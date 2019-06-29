--- Asignacion de privilegios al usuario BackOffice 
-- grant execute ---
GRANT EXECUTE ON sixdes40.FUN_OBTENER_TABLA_DESC TO app_tcladmbo;
GRANT EXECUTE ON sixdes40.FUN_OBTENER_USER_GROUP_DESC TO app_tcladmbo;
GRANT EXECUTE ON sixdes40.PKG_DM_JSON TO app_tcladmbo;
GRANT EXECUTE ON sixdes40.PKG_SIX_CFGTCL TO app_tcladmbo;
GRANT EXECUTE ON sixdes40.PKG_SIX_DOWNCF TO app_tcladmbo;
GRANT EXECUTE ON sixdes40.PKG_SIX_DRVTCL TO app_tcladmbo;
GRANT EXECUTE ON sixdes40.PKG_SIX_GRPDET TO app_tcladmbo;
GRANT EXECUTE ON sixdes40.PKG_SIX_GRUPO TO app_tcladmbo;
GRANT EXECUTE ON sixdes40.PKG_SIX_MSGQCF TO app_tcladmbo;
GRANT EXECUTE ON sixdes40.PKG_SIX_PROCESS TO app_tcladmbo;
GRANT EXECUTE ON sixdes40.PKG_SIX_USRTCL TO app_tcladmbo;
  
-- tablas
GRANT SELECT, INSERT, UPDATE, DELETE ON sixdes40.TA_REPORTE TO app_tcladmbo_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON sixdes40.TP_GRUPO_TABLE_VALUE TO app_tcladmbo_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON sixdes40.TP_GRUPO_TABLE_VALUE_DET TO app_tcladmbo_role;
GRANT SELECT, INSERT                 ON sixdes40.TP_LOG_AUDIT TO app_tcladmbo_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON sixdes40.TP_SIX_CFGTCL TO app_tcladmbo_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON sixdes40.TP_SIX_DOWNCF TO app_tcladmbo_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON sixdes40.TP_SIX_DRVTCL TO app_tcladmbo_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON sixdes40.TP_SIX_MSGQCF TO app_tcladmbo_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON sixdes40.TP_SIX_PROCESS TO app_tcladmbo_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON sixdes40.TP_SIX_TABLE_OF_TABLES TO app_tcladmbo_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON sixdes40.TP_SIX_USRTCL TO app_tcladmbo_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON sixdes40.TS_FTP TO app_tcladmbo_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON sixdes40.TS_LICENCIA TO app_tcladmbo_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON sixdes40.TS_SIX_GRUPO TO app_tcladmbo_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON sixdes40.TS_SIX_GRUPO_DETALLE TO app_tcladmbo_role;

GRANT SELECT, INSERT, UPDATE, DELETE ON sixdes40.TA_PARAMETROS_APARIENCIA TO app_tcladmbo_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON sixdes40.TS_DATASOURCE TO app_tcladmbo_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON sixdes40.TS_USUARIO TO app_tcladmbo_role;

-- sequences 
GRANT SELECT ON sixdes40.SEQ_DOWNCF TO app_tcladmbo_role;
GRANT SELECT ON sixdes40.SEQ_GRUPO_TABLE_VALUE TO app_tcladmbo_role;
GRANT SELECT ON sixdes40.SEQ_GRUPO_TABLE_VALUE_DET TO app_tcladmbo_role;
GRANT SELECT ON sixdes40.SEQ_LOG_AUDIT TO app_tcladmbo_role;
GRANT SELECT ON sixdes40.SEQ_DATASOURCE TO app_tcladmbo_role;

-- asignar rol
GRANT app_tcladmbo_role TO app_tcladmbo

-- Creacion sinonimos
-- Tablas
CREATE OR REPLACE SYNONYM APP_TCLADMBO.TA_REPORTE FOR sixdes40.TA_REPORTE;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.TP_GRUPO_TABLE_VALUE FOR sixdes40.TP_GRUPO_TABLE_VALUE;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.TP_GRUPO_TABLE_VALUE_DET FOR sixdes40.TP_GRUPO_TABLE_VALUE_DET;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.TP_LOG_AUDIT FOR sixdes40.TP_LOG_AUDIT;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.TP_SIX_CFGTCL FOR sixdes40.TP_SIX_CFGTCL;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.TP_SIX_DOWNCF FOR sixdes40.TP_SIX_DOWNCF;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.TP_SIX_DRVTCL FOR sixdes40.TP_SIX_DRVTCL;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.TP_SIX_MSGQCF FOR sixdes40.TP_SIX_MSGQCF;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.TP_SIX_PROCESS FOR sixdes40.TP_SIX_PROCESS;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.TP_SIX_TABLE_OF_TABLES FOR sixdes40.TP_SIX_TABLE_OF_TABLES;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.TP_SIX_USRTCL FOR sixdes40.TP_SIX_USRTCL;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.TS_FTP FOR sixdes40.TS_FTP;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.TS_LICENCIA FOR sixdes40.TS_LICENCIA;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.TS_SIX_GRUPO FOR sixdes40.TS_SIX_GRUPO;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.TS_SIX_GRUPO_DETALLE FOR sixdes40.TS_SIX_GRUPO_DETALLE;

CREATE OR REPLACE SYNONYM APP_TCLADMBO.TA_PARAMETROS_APARIENCIA FOR sixdes40.TA_PARAMETROS_APARIENCIA;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.TS_DATASOURCE FOR sixdes40.TS_DATASOURCE;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.TS_USUARIO FOR sixdes40.TS_USUARIO;



-- secuencias
CREATE OR REPLACE SYNONYM APP_TCLADMBO.SEQ_DOWNCF FOR sixdes40.SEQ_DOWNCF;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.SEQ_GRUPO_TABLE_VALUE FOR sixdes40.SEQ_GRUPO_TABLE_VALUE;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.SEQ_GRUPO_TABLE_VALUE_DET FOR sixdes40.SEQ_GRUPO_TABLE_VALUE_DET;
CREATE OR REPLACE SYNONYM APP_TCLADMBO.SEQ_LOG_AUDIT FOR sixdes40.SEQ_LOG_AUDIT;

CREATE OR REPLACE SYNONYM APP_TCLADMBO.SEQ_DATASOURCE FOR sixdes40.SEQ_DATASOURCE;

-- No tiene packages usa JPA ---
