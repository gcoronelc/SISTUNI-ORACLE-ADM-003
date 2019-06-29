-- **********************************************************************
-- Project to Admin DataBase
-- Jose Walter Mamani Condori
-- **********************************************************************
-- Create tablespace
CREATE TABLESPACE tbs_portal
  DATAFILE 'tbs_portal.dat' 
    SIZE 10M
    REUSE
    AUTOEXTEND ON NEXT 10M MAXSIZE 200M;
-- Create temp tablespace
CREATE TEMPORARY TABLESPACE tbs_temp_portal
  TEMPFILE 'tbs_temp_portal.dbf'
    SIZE 5M
    AUTOEXTEND ON;
-- Create user owner
CREATE USER owner_portal
  IDENTIFIED BY oracle01
  DEFAULT TABLESPACE tbs_portal
  TEMPORARY TABLESPACE tbs_temp_portal
  QUOTA 5M ON tbs_portal;
-- Grant to user owner
GRANT connect TO owner_portal;
GRANT create session TO owner_portal;
GRANT create table TO owner_portal;
GRANT create view TO owner_portal;
GRANT create any trigger TO owner_portal;
GRANT create any procedure TO owner_portal;
GRANT create sequence TO owner_portal;
GRANT create synonym TO owner_portal;
GRANT create public synonym TO owner_portal;

-- Create profile to P_APL_USER_PORTAL
CREATE PROFILE P_APL_USER_PORTAL LIMIT
 SESSIONS_PER_USER 10
 CPU_PER_SESSION DEFAULT
 CPU_PER_CALL DEFAULT
 CONNECT_TIME DEFAULT
 IDLE_TIME DEFAULT
 LOGICAL_READS_PER_SESSION DEFAULT
 LOGICAL_READS_PER_CALL DEFAULT
 COMPOSITE_LIMIT DEFAULT
 PRIVATE_SGA DEFAULT
 FAILED_LOGIN_ATTEMPTS DEFAULT
 PASSWORD_LIFE_TIME UNLIMITED
 PASSWORD_REUSE_TIME DEFAULT
 PASSWORD_REUSE_MAX DEFAULT
 PASSWORD_LOCK_TIME DEFAULT
 PASSWORD_GRACE_TIME DEFAULT
 PASSWORD_VERIFY_FUNCTION VERIFY_FUNCTION;
-- Create user to user_portal
 CREATE USER user_portal
 IDENTIFIED BY oracle01
 DEFAULT TABLESPACE tbs_portal
 TEMPORARY TABLESPACE tbs_temp_portal
 PROFILE P_APL_USER_PORTAL
 ACCOUNT UNLOCK;
-- Create session to user_portal
GRANT CREATE SESSION TO user_portal;
-- Create rol to R_APL_USER_PORTAL
CREATE ROLE R_APL_USER_PORTAL;
-- Grant's Aqui
GRANT SELECT ON OWNER_PORTAL.PVQR_CIUDADANOS TO R_APL_USER_PORTAL;
GRANT SELECT ON OWNER_PORTAL.PVQR_IMAGENES_CIUDADANO TO R_APL_USER_PORTAL;
GRANT SELECT ON OWNER_PORTAL.PVQR_DOCUMENTOS TO R_APL_USER_PORTAL;
GRANT SELECT ON OWNER_PORTAL.PVQR_DETALLES_DOCUMENTO TO R_APL_USER_PORTAL;
GRANT EXECUTE ON OWNER_PORTAL.CC_PK_PORTAL_VERIFICAQR TO R_APL_USER_PORTAL;

GRANT R_APL_USER_PORTAL TO user_portal;
ALTER USER user_portal DEFAULT ROLE ALL;

-- Auditoria
-- show parameter audi
audit select on OWNER_PORTAL.PVQR_CIUDADANOS by access;
audit select on OWNER_PORTAL.PVQR_IMAGENES_CIUDADANO by access;
audit select on OWNER_PORTAL.PVQR_DOCUMENTOS by access;
audit select on OWNER_PORTAL.PVQR_DETALLES_DOCUMENTO by access;