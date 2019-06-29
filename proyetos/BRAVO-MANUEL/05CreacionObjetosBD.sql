-- Generado por Oracle SQL Developer Data Modeler 18.3.0.268.1156
--   en:        2019-06-27 04:10:05 COT
--   sitio:      Oracle Database 12cR2
--   tipo:      Oracle Database 12cR2



DROP TABLE sixdes40.ta_parametros_apariencia CASCADE CONSTRAINTS;

DROP TABLE sixdes40.ta_reporte CASCADE CONSTRAINTS;

DROP TABLE sixdes40.tp_grupo_table_value CASCADE CONSTRAINTS;

DROP TABLE sixdes40.tp_grupo_table_value_det CASCADE CONSTRAINTS;

DROP TABLE sixdes40.tp_log_audit CASCADE CONSTRAINTS;

DROP TABLE sixdes40.tp_log_audit_exclude CASCADE CONSTRAINTS;

DROP TABLE sixdes40.tp_six_cfgtcl CASCADE CONSTRAINTS;

DROP TABLE sixdes40.tp_six_downcf CASCADE CONSTRAINTS;

DROP TABLE sixdes40.tp_six_drvtcl CASCADE CONSTRAINTS;

DROP TABLE sixdes40.tp_six_msgqcf CASCADE CONSTRAINTS;

DROP TABLE sixdes40.tp_six_process CASCADE CONSTRAINTS;

DROP TABLE sixdes40.tp_six_table_of_tables CASCADE CONSTRAINTS;

DROP TABLE sixdes40.tp_six_usrtcl CASCADE CONSTRAINTS;

DROP TABLE sixdes40.ts_datasource CASCADE CONSTRAINTS;

DROP TABLE sixdes40.ts_ftp CASCADE CONSTRAINTS;

DROP TABLE sixdes40.ts_licencia CASCADE CONSTRAINTS;

DROP TABLE sixdes40.ts_six_grupo CASCADE CONSTRAINTS;

DROP TABLE sixdes40.ts_six_grupo_detalle CASCADE CONSTRAINTS;

DROP TABLE sixdes40.ts_usuario CASCADE CONSTRAINTS;

DROP SEQUENCE sixdes40.seq_datasource;

DROP SEQUENCE sixdes40.seq_downcf;

DROP SEQUENCE sixdes40.seq_grupo_table_value;

DROP SEQUENCE sixdes40.seq_grupo_table_value_det;

DROP SEQUENCE sixdes40.seq_log_audit;

CREATE OR REPLACE PACKAGE          SIXDES40.PKG_DM_JSON
IS
   FUNCTION FUN_KEYVALUE(jtag IN VARCHAR2,jvalue IN NUMBER) RETURN VARCHAR2;
   FUNCTION FUN_KEYVALUE(jtag IN VARCHAR2,jvalue IN VARCHAR2) RETURN VARCHAR2;  
   FUNCTION FUN_TRIM (pf_cade IN VARCHAR2 ) RETURN VARCHAR2;
   FUNCTION FUN_GETVALUE (cad IN VARCHAR2, llave IN VARCHAR2)  RETURN VARCHAR2; 
END PKG_DM_JSON;
/

CREATE OR REPLACE PACKAGE          SIXDES40.PKG_SIX_CFGTCL
AS 
    TYPE gen_cur IS REF CURSOR; 

  PROCEDURE SPS_SIX_CFGTCL_CURSOR (wbufferin IN VARCHAR2, wcursor OUT gen_cur, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPD_SIX_CFGTCL (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPU_SIX_CFGTCL (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPI_SIX_CFGTCL (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPS_SIX_CFGTCL (wbufferin IN VARCHAR2, wbufferout OUT VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPS_SIX_CFGTCL_DATAMAC (wbufferin IN VARCHAR2, wbufferout OUT VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPU_SIX_CFGTCL_MAC (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);

END PKG_SIX_CFGTCL;
/

CREATE OR REPLACE PACKAGE          SIXDES40.PKG_SIX_DOWNCF
AS 
    TYPE gen_cur IS REF CURSOR; 

  PROCEDURE SPS_SIX_DOWNCF_CURSOR (wbufferin IN VARCHAR2, wcursor OUT gen_cur, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPD_SIX_DOWNCF (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPU_SIX_DOWNCF (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPI_SIX_DOWNCF (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPS_SIX_DOWNCF (wbufferin IN VARCHAR2, wbufferout OUT VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);

END PKG_SIX_DOWNCF;
/

CREATE OR REPLACE PACKAGE          SIXDES40.PKG_SIX_DRVTCL
AS 
    TYPE gen_cur IS REF CURSOR; 

  PROCEDURE SPS_SIX_DRVTCL_CURSOR (wbufferin IN VARCHAR2, wcursor OUT gen_cur, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPD_SIX_DRVTCL (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPU_SIX_DRVTCL (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPI_SIX_DRVTCL (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPS_SIX_DRVTCL (wbufferin IN VARCHAR2, wbufferout OUT VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPS_SIX_DRVTCL_DATAMAC (wbufferin IN VARCHAR2, wbufferout OUT VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPU_SIX_DRVTCL_MAC (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);

END PKG_SIX_DRVTCL;
/

CREATE OR REPLACE PACKAGE          SIXDES40.PKG_SIX_GRPDET
AS 
    TYPE gen_cur IS REF CURSOR; 

  PROCEDURE SPS_SIX_GRPDET_CURSOR (wbufferin IN VARCHAR2, wcursor OUT gen_cur, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPD_SIX_GRPDET (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPU_SIX_GRPDET (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPI_SIX_GRPDET (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPS_SIX_GRPDET (wbufferin IN VARCHAR2, wbufferout OUT VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);

END PKG_SIX_GRPDET;
/

CREATE OR REPLACE PACKAGE          SIXDES40.PKG_SIX_GRUPO
AS 
    TYPE gen_cur IS REF CURSOR; 

	PROCEDURE SPS_SIX_GRUPO_CURSOR (wbufferin IN VARCHAR2, wcursor OUT gen_cur, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPD_SIX_GRUPO (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPU_SIX_GRUPO (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPI_SIX_GRUPO (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPS_SIX_GRUPO (wbufferin IN VARCHAR2, wbufferout OUT VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);

END PKG_SIX_GRUPO;
/

CREATE OR REPLACE PACKAGE          SIXDES40.PKG_SIX_MSGQCF
AS 
    TYPE gen_cur IS REF CURSOR; 

  PROCEDURE SPS_SIX_MSGQCF_CURSOR (wbufferin IN VARCHAR2, wcursor OUT gen_cur, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPD_SIX_MSGQCF (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPU_SIX_MSGQCF (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPI_SIX_MSGQCF (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPS_SIX_MSGQCF (wbufferin IN VARCHAR2, wbufferout OUT VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPS_SIX_MSGQCF_DATAMAC (wbufferin IN VARCHAR2, wbufferout OUT VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPU_SIX_MSGQCF_MAC (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);

END PKG_SIX_MSGQCF;
/

CREATE OR REPLACE PACKAGE          SIXDES40.PKG_SIX_PROCESS
AS 
    TYPE gen_cur IS REF CURSOR; 

	PROCEDURE SPS_SIX_PROCESS_CURSOR (wbufferin IN VARCHAR2, wcursor OUT gen_cur, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPD_SIX_PROCESS (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPU_SIX_PROCESS (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPI_SIX_PROCESS (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPS_SIX_PROCESS (wbufferin IN VARCHAR2, wbufferout OUT VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPS_SIX_PROCESS_DATAMAC (wbufferin IN VARCHAR2, wbufferout OUT VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPU_SIX_PROCESS_MAC (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);

END PKG_SIX_PROCESS;
/

CREATE OR REPLACE PACKAGE          SIXDES40.PKG_SIX_USRTCL
AS 
    TYPE gen_cur IS REF CURSOR; 

  PROCEDURE SPS_SIX_USRTCL_CURSOR (wbufferin IN VARCHAR2, wcursor OUT gen_cur, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPD_SIX_USRTCL (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPU_SIX_USRTCL (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPI_SIX_USRTCL (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPS_SIX_USRTCL (wbufferin IN VARCHAR2, wbufferout OUT VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPS_SIX_USRTCL_DATAMAC (wbufferin IN VARCHAR2, wbufferout OUT VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);
	PROCEDURE SPU_SIX_USRTCL_MAC (wbufferin IN VARCHAR2, werror_num OUT NUMBER, werror_desc OUT VARCHAR2);

END PKG_SIX_USRTCL;
/

CREATE SEQUENCE sixdes40.seq_datasource INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;

CREATE SEQUENCE sixdes40.seq_downcf INCREMENT BY 1 MAXVALUE 999999999999999999999999999 MINVALUE 1 CACHE 20;

CREATE SEQUENCE sixdes40.seq_grupo_table_value INCREMENT BY 1 MAXVALUE 9999999999 MINVALUE 1 CACHE 20;

CREATE SEQUENCE sixdes40.seq_grupo_table_value_det INCREMENT BY 1 MAXVALUE 9999999999 MINVALUE 1 CACHE 20;

CREATE SEQUENCE sixdes40.seq_log_audit INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;

CREATE TABLE sixdes40.tp_grupo_table_value_det (
    sec_grp_table   NUMBER NOT NULL,
    ind_sec         NUMBER(3) NOT NULL,
    val_field       VARCHAR2(50 BYTE),
    des_field       VARCHAR2(50 BYTE) NOT NULL,
    ind_estado      VARCHAR2(1 BYTE) NOT NULL,
    fec_crea        DATE DEFAULT SYSDATE NOT NULL,
    fec_actu        DATE DEFAULT SYSDATE,
    usu_crea        VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL') NOT NULL,
    usu_actu        VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL')
)
TABLESPACE datos LOGGING NO INMEMORY;

ALTER TABLE sixdes40.tp_grupo_table_value_det
    ADD CHECK ( ind_estado IN (
        'A',
        'I'
    ) );

COMMENT ON COLUMN sixdes40.tp_grupo_table_value_det.ind_sec IS
    'Indicador de secuencia, se renumera cada vez que cambia de grupo';

COMMENT ON COLUMN sixdes40.tp_grupo_table_value_det.val_field IS
    'Descripcion del valor de la lista de valores, este dato debe ser grabado en la BD';

COMMENT ON COLUMN sixdes40.tp_grupo_table_value_det.des_field IS
    'Descripciona se mostrada en la lista de valores';

ALTER TABLE sixdes40.tp_grupo_table_value_det
    ADD CONSTRAINT pk_tp_grupo_table_value_det PRIMARY KEY ( ind_sec,
                                                             sec_grp_table )
        USING INDEX TABLESPACE indices LOGGING;

CREATE OR REPLACE FUNCTION sixdes40.fun_obtener_tabla_desc (
    in_tabla IN   VARCHAR2
) RETURN VARCHAR2 IS
    out_des_tabla   VARCHAR2(50);
BEGIN
    SELECT
        tgd.des_field
    INTO out_des_tabla
    FROM
        tp_grupo_table_value_det tgd
    WHERE
        tgd.val_field = in_tabla
        AND tgd.sec_grp_table = 14;

    RETURN out_des_tabla;
EXCEPTION
    WHEN OTHERS THEN
        raise_application_error(-20001, 'OCURRIO UN ERROR'
                                        || sqlcode
                                        || ' -ERROR- '
                                        || sqlerrm);
END fun_obtener_tabla_desc;
/

CREATE TABLE sixdes40.ts_six_grupo (
    user_group   VARCHAR2(10 BYTE) NOT NULL,
    des_grupo    VARCHAR2(50 BYTE),
    ind_estado   VARCHAR2(1 BYTE) DEFAULT 'A' NOT NULL,
    fec_crea     DATE DEFAULT SYSDATE NOT NULL,
    fec_actu     DATE DEFAULT SYSDATE,
    usu_crea     VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL') NOT NULL,
    usu_actu     VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL')
)
TABLESPACE datos LOGGING NO INMEMORY;

ALTER TABLE sixdes40.ts_six_grupo
    ADD CHECK ( ind_estado IN (
        'A',
        'I'
    ) );

COMMENT ON TABLE sixdes40.ts_six_grupo IS
    'Descripcion : Se defoine los grupos asigndos a un Host y Usuario';

COMMENT ON COLUMN sixdes40.ts_six_grupo.user_group IS
    'Codigo del Grupo';

COMMENT ON COLUMN sixdes40.ts_six_grupo.des_grupo IS
    'Descripcion del Grupo';

COMMENT ON COLUMN sixdes40.ts_six_grupo.ind_estado IS
    'Estado ''A'' Activo, ''I'' Inactivo';

COMMENT ON COLUMN sixdes40.ts_six_grupo.fec_crea IS
    'Fecha Creacion';

COMMENT ON COLUMN sixdes40.ts_six_grupo.fec_actu IS
    'Fecha Actualizacion';

COMMENT ON COLUMN sixdes40.ts_six_grupo.usu_crea IS
    'Usuario Creacion';

COMMENT ON COLUMN sixdes40.ts_six_grupo.usu_actu IS
    'Usuario de actualizacion';

ALTER TABLE sixdes40.ts_six_grupo
    ADD CONSTRAINT pk_ts_six_grupo PRIMARY KEY ( user_group )
        USING INDEX TABLESPACE indices LOGGING;

CREATE OR REPLACE FUNCTION sixdes40.fun_obtener_user_group_desc (
    is_user_group IN   VARCHAR2
) RETURN VARCHAR2 IS
    os_des_user_group   VARCHAR2(150);
BEGIN
    SELECT
        g.des_grupo
    INTO os_des_user_group
    FROM
        ts_six_grupo g
    WHERE
        g.user_group = is_user_group;

    RETURN os_des_user_group;
EXCEPTION
    WHEN OTHERS THEN
        RETURN '';
END fun_obtener_user_group_desc;
/

CREATE TABLE sixdes40.ta_parametros_apariencia (
    cod_entidad        VARCHAR2(30 BYTE) NOT NULL,
    configuracion      VARCHAR2(500 BYTE) NOT NULL,
    usu_creacion       VARCHAR2(20 BYTE),
    fec_creacion       DATE,
    usu_modificacion   VARCHAR2(20 BYTE),
    fec_modificacion   DATE,
    img_logo           VARCHAR2(250 BYTE)
)
TABLESPACE datos LOGGING NO INMEMORY;

ALTER TABLE sixdes40.ta_parametros_apariencia
    ADD CONSTRAINT ta_parametros_apariencia_pk PRIMARY KEY ( cod_entidad )
        USING INDEX TABLESPACE indices LOGGING;

CREATE TABLE sixdes40.ta_reporte (
    id_reporte            NUMBER NOT NULL,
    nom_reporte           VARCHAR2(100 BYTE) NOT NULL,
    nom_archivo           VARCHAR2(100 BYTE) NOT NULL,
    parametros            VARCHAR2(250 BYTE),
    ruta                  VARCHAR2(250 BYTE) NOT NULL,
    restriccion           NUMBER(3),
    restriccion_mensaje   VARCHAR2(50 BYTE),
    nom_archivo_gra       VARCHAR2(100 BYTE),
    fec_creacion          DATE,
    usu_creacion          VARCHAR2(20 BYTE),
    fec_modificacion      DATE,
    usu_modificacion      VARCHAR2(20 BYTE)
)
TABLESPACE datos LOGGING NO INMEMORY;

ALTER TABLE sixdes40.ta_reporte
    ADD CONSTRAINT tp_reporte_pk PRIMARY KEY ( id_reporte )
        USING INDEX TABLESPACE indices LOGGING;

CREATE TABLE sixdes40.tp_grupo_table_value (
    sec_grp_table   NUMBER NOT NULL,
    des_grp_table   VARCHAR2(100 BYTE) NOT NULL,
    ind_estado      VARCHAR2(1 BYTE) NOT NULL,
    fec_crea        DATE DEFAULT SYSDATE NOT NULL,
    fec_actu        DATE DEFAULT SYSDATE,
    usu_crea        VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL') NOT NULL,
    usu_actu        VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL')
)
TABLESPACE datos LOGGING NO INMEMORY;

ALTER TABLE sixdes40.tp_grupo_table_value
    ADD CHECK ( ind_estado IN (
        'A',
        'I'
    ) );

COMMENT ON TABLE sixdes40.tp_grupo_table_value IS
    'Descripcion: Se registra los grupos de la lista de valores que se van a agrupar. La integridad de esta informacion sera controlado por un trigger
'
    ;

COMMENT ON COLUMN sixdes40.tp_grupo_table_value.sec_grp_table IS
    'Secuencia del grupo a crear';

COMMENT ON COLUMN sixdes40.tp_grupo_table_value.des_grp_table IS
    'Descripcion';

COMMENT ON COLUMN sixdes40.tp_grupo_table_value.fec_actu IS
    'Fecha Actualizacion';

COMMENT ON COLUMN sixdes40.tp_grupo_table_value.usu_crea IS
    'Usuario creador';

ALTER TABLE sixdes40.tp_grupo_table_value
    ADD CONSTRAINT pk_tp_grupo_table_value PRIMARY KEY ( sec_grp_table )
        USING INDEX TABLESPACE indices LOGGING;

CREATE TABLE sixdes40.tp_log_audit (
    id_sec_log     NUMBER NOT NULL,
    tip_accion     VARCHAR2(1 BYTE) NOT NULL,
    nom_tabla      VARCHAR2(50 BYTE) NOT NULL,
    nom_campo      VARCHAR2(50 BYTE) NOT NULL,
    val_original   VARCHAR2(50 BYTE),
    val_nuevo      VARCHAR2(50 BYTE),
    fec_crea       DATE DEFAULT SYSDATE NOT NULL,
    usu_crea       VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL')
)
TABLESPACE datos LOGGING NO INMEMORY;

COMMENT ON TABLE sixdes40.tp_log_audit IS
    'Descripcion: Tabla Log de auditoria para las tabllas del SIX';

COMMENT ON COLUMN sixdes40.tp_log_audit.id_sec_log IS
    'Secuencia que identifica al LOG de la tabla correspondiente';

COMMENT ON COLUMN sixdes40.tp_log_audit.tip_accion IS
    'Tipo de accion de LOG, (I)nsert, (U)pdate,(D)elete';

COMMENT ON COLUMN sixdes40.tp_log_audit.nom_tabla IS
    'Nombre de la Tabla';

COMMENT ON COLUMN sixdes40.tp_log_audit.nom_campo IS
    'Nombre del campo';

COMMENT ON COLUMN sixdes40.tp_log_audit.val_original IS
    'Valor Original';

COMMENT ON COLUMN sixdes40.tp_log_audit.val_nuevo IS
    'Valor nuevo';

COMMENT ON COLUMN sixdes40.tp_log_audit.fec_crea IS
    'Fecha de Creacion';

COMMENT ON COLUMN sixdes40.tp_log_audit.usu_crea IS
    'Usuario creacion';

ALTER TABLE sixdes40.tp_log_audit
    ADD CONSTRAINT pk_tp_log_audit PRIMARY KEY ( id_sec_log )
        USING INDEX TABLESPACE indices LOGGING;

CREATE TABLE sixdes40.tp_log_audit_exclude (
    nom_tabla    VARCHAR2(50 BYTE) NOT NULL,
    ind_estado   VARCHAR2(1 BYTE) NOT NULL,
    fec_crea     DATE DEFAULT SYSDATE NOT NULL,
    fec_actu     DATE DEFAULT SYSDATE,
    usu_crea     VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL') NOT NULL,
    usu_actu     VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL')
)
TABLESPACE datos LOGGING NO INMEMORY;

ALTER TABLE sixdes40.tp_log_audit_exclude
    ADD CHECK ( ind_estado IN (
        'A',
        'I'
    ) );

COMMENT ON TABLE sixdes40.tp_log_audit_exclude IS
    'Descripcion: Tabla que se van a excluir del LOG de auditoria';

COMMENT ON COLUMN sixdes40.tp_log_audit_exclude.nom_tabla IS
    'Nombre de la tabla';

ALTER TABLE sixdes40.tp_log_audit_exclude
    ADD CONSTRAINT pk_tp_log_audit_exclude PRIMARY KEY ( nom_tabla )
        USING INDEX TABLESPACE indices LOGGING;

CREATE TABLE sixdes40.tp_six_cfgtcl (
    modulo             VARCHAR2(12 BYTE) NOT NULL,
    nombre_parametro   VARCHAR2(60 BYTE) NOT NULL,
    descripcion        VARCHAR2(256 BYTE),
    tipo_dato          VARCHAR2(1 BYTE) NOT NULL,
    valor_real         NUMBER(16, 2),
    valor_entero       NUMBER(*, 0),
    valor_fecha        DATE,
    valor_cadena       VARCHAR2(512 BYTE),
    ind_estado         VARCHAR2(1 BYTE) DEFAULT 'A' NOT NULL,
    fec_crea           DATE DEFAULT SYSDATE NOT NULL,
    usu_crea           VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL') NOT NULL,
    fec_actu           DATE DEFAULT SYSDATE,
    usu_actu           VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL'),
    mac                VARCHAR2(400 BYTE) NOT NULL
)
TABLESPACE datos LOGGING NO INMEMORY;

ALTER TABLE sixdes40.tp_six_cfgtcl
    ADD CHECK ( ind_estado IN (
        'A',
        'I'
    ) );

COMMENT ON TABLE sixdes40.tp_six_cfgtcl IS
    'Tabla de parametros de ejecucion del sistema para la empresa';

COMMENT ON COLUMN sixdes40.tp_six_cfgtcl.modulo IS
    'Nombre del modulo que utiliza el parametro';

COMMENT ON COLUMN sixdes40.tp_six_cfgtcl.nombre_parametro IS
    'Nombre del parametro';

COMMENT ON COLUMN sixdes40.tp_six_cfgtcl.descripcion IS
    'Descripcion del parametro';

COMMENT ON COLUMN sixdes40.tp_six_cfgtcl.valor_real IS
    'Valor del parametro del tipo real';

COMMENT ON COLUMN sixdes40.tp_six_cfgtcl.valor_entero IS
    'Valor del parametro del tipo entero';

COMMENT ON COLUMN sixdes40.tp_six_cfgtcl.valor_fecha IS
    'Valor del parametro del tipo fecha';

COMMENT ON COLUMN sixdes40.tp_six_cfgtcl.valor_cadena IS
    'Valor del parametro del tipo cadena';

COMMENT ON COLUMN sixdes40.tp_six_cfgtcl.ind_estado IS
    'Estado ''A'' Activo, ''I'' Inactivo';

COMMENT ON COLUMN sixdes40.tp_six_cfgtcl.fec_crea IS
    'Fecha de grabacion del registro';

COMMENT ON COLUMN sixdes40.tp_six_cfgtcl.usu_crea IS
    'Usuario que realiza la grabacion del registro';

COMMENT ON COLUMN sixdes40.tp_six_cfgtcl.fec_actu IS
    'Fecha de modificacion del registro';

COMMENT ON COLUMN sixdes40.tp_six_cfgtcl.usu_actu IS
    'Usuario que realiza la modificacion del registro';

COMMENT ON COLUMN sixdes40.tp_six_cfgtcl.mac IS
    'Message autentication code';

ALTER TABLE sixdes40.tp_six_cfgtcl
    ADD CONSTRAINT pk_tp_six_cfgtcl PRIMARY KEY ( modulo,
                                                  nombre_parametro )
        USING INDEX TABLESPACE indices LOGGING;

CREATE TABLE sixdes40.tp_six_downcf (
    cod_timer    NUMBER(3) NOT NULL,
    nro_timer    NUMBER(3) NOT NULL,
    tipo_timer   VARCHAR2(3 BYTE) NOT NULL,
    fec_crea     DATE DEFAULT SYSDATE NOT NULL,
    fec_actu     DATE DEFAULT SYSDATE,
    usu_crea     VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL') NOT NULL,
    usu_actu     VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL'),
    ind_estado   VARCHAR2(1 BYTE) DEFAULT 'A' NOT NULL
)
TABLESPACE datos LOGGING NO INMEMORY;

ALTER TABLE sixdes40.tp_six_downcf
    ADD CONSTRAINT chk_tipo_timer CHECK ( tipo_timer IN (
        'FF',
        'HH',
        'MI',
        'SS'
    ) );

ALTER TABLE sixdes40.tp_six_downcf
    ADD CHECK ( ind_estado IN (
        'A',
        'I'
    ) );

COMMENT ON TABLE sixdes40.tp_six_downcf IS
    'Descripcion : Almacena la configuracion de los timers de notificacion';

COMMENT ON COLUMN sixdes40.tp_six_downcf.cod_timer IS
    'Secuendia de timer a consideraren el six';

COMMENT ON COLUMN sixdes40.tp_six_downcf.nro_timer IS
    'Tiempo asigmado';

COMMENT ON COLUMN sixdes40.tp_six_downcf.tipo_timer IS
    'Tipo de Timer : HH -> Hora, MI-> Minutos, SS-> Segundos, FF -> Milisegundos';

COMMENT ON COLUMN sixdes40.tp_six_downcf.fec_crea IS
    'Fecha creacion';

COMMENT ON COLUMN sixdes40.tp_six_downcf.fec_actu IS
    'Fecha Actualizacion';

COMMENT ON COLUMN sixdes40.tp_six_downcf.usu_crea IS
    'Usuario Creacion';

COMMENT ON COLUMN sixdes40.tp_six_downcf.usu_actu IS
    'Usuario modificacion';

COMMENT ON COLUMN sixdes40.tp_six_downcf.ind_estado IS
    'Estado ''A'' Activo, ''I'' Inactivo';

ALTER TABLE sixdes40.tp_six_downcf
    ADD CONSTRAINT pk_tp_six_downcf PRIMARY KEY ( cod_timer )
        USING INDEX TABLESPACE indices LOGGING;

CREATE TABLE sixdes40.tp_six_drvtcl (
    driver_name               VARCHAR2(20 BYTE) NOT NULL,
    service_port              VARCHAR2(10 BYTE) NOT NULL,
    auth_header_size          VARCHAR2(5 BYTE),
    connection_type           VARCHAR2(5 BYTE) NOT NULL,
    basename                  VARCHAR2(10 BYTE),
    use_token                 VARCHAR2(1 BYTE),
    use_bin                   VARCHAR2(1 BYTE),
    web_op_mode               VARCHAR2(1 BYTE),
    eft_library               VARCHAR2(20 BYTE),
    type_driver               VARCHAR2(1 BYTE),
    cod_bin                   VARCHAR2(12 BYTE),
    nom_serv                  VARCHAR2(10 BYTE),
    load_start                VARCHAR2(1 BYTE),
    max_retri                 VARCHAR2(4 BYTE) DEFAULT '0',
    ind_interval_ini_espera   VARCHAR2(4 BYTE) DEFAULT '0',
    params                    VARCHAR2(50 BYTE),
    ind_estado                VARCHAR2(1 BYTE) DEFAULT 'A' NOT NULL,
    fec_crea                  DATE DEFAULT SYSDATE NOT NULL,
    fec_actu                  DATE DEFAULT SYSDATE,
    usu_crea                  VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL') NOT NULL,
    usu_actu                  VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL'),
    mac                       VARCHAR2(400 BYTE) NOT NULL
)
TABLESPACE datos LOGGING NO INMEMORY;

ALTER TABLE sixdes40.tp_six_drvtcl
    ADD CHECK ( load_start IN (
        'N',
        'Y'
    ) );

ALTER TABLE sixdes40.tp_six_drvtcl
    ADD CHECK ( ind_estado IN (
        'A',
        'I'
    ) );

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.driver_name IS
    'Nombre del driver de comunicacion';

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.service_port IS
    'Puerto de servicio a utilizar';

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.auth_header_size IS
    'Tamaño de header para el preautorizador';

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.connection_type IS
    'Tipos de conexion soportados (S, T)';

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.basename IS
    'Interface basename';

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.use_token IS
    'Y = La interfaz de cliente SIX genera un token de 8 bytes que se coloca al inicio de cada mensaje,
N = No se genera token al inicio de cada mensaje'
    ;

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.web_op_mode IS
    'Aplica solo a los drivers web. Los valores posibles son:
0 = Las direcciones IP de los clientes se almacenaran a demanda hasta completar el valor definido en la licencia
1 = Carga las direcciones IP de un archivo externo el cual esta especificado en el campo (web_address_list)'
    ;

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.eft_library IS
    'Nombre de la libreria EFT que valida el bin a partir de la IP del cliente';

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.type_driver IS
    'Tipo de Driver';

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.nom_serv IS
    'Nombre del servidor';

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.load_start IS
    'Y = Yes; N = No  (Indica si el servidor se iniciara cuando se inicia el SIX/TCL)';

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.max_retri IS
    'Maximo numero de activaciones automaticas del modulo';

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.params IS
    'pARAMETROS';

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.ind_estado IS
    'Estado ''A'' Activo, ''I'' Inactivo';

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.fec_crea IS
    'Fecha Creacion';

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.fec_actu IS
    'Fecha ACtualizacion';

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.usu_crea IS
    'Usuario de Creacion';

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.usu_actu IS
    'Usuario Actualizacion';

COMMENT ON COLUMN sixdes40.tp_six_drvtcl.mac IS
    'Message autentication code';

CREATE INDEX sixdes40.idx_tp_six_drvtcl ON
    sixdes40.tp_six_drvtcl (
        service_port
    ASC )
        LOGGING;

CREATE UNIQUE INDEX sixdes40.pk_driver_name ON
    sixdes40.tp_six_drvtcl (
        driver_name
    ASC )
        LOGGING;

ALTER TABLE sixdes40.tp_six_drvtcl
    ADD CONSTRAINT pk_tp_six_drvtcl PRIMARY KEY ( driver_name,
                                                  service_port )
        USING INDEX TABLESPACE indices LOGGING;

ALTER TABLE sixdes40.tp_six_drvtcl
    ADD CONSTRAINT pk_driver_name UNIQUE ( driver_name )
        USING INDEX sixdes40.pk_driver_name;

CREATE TABLE sixdes40.tp_six_msgqcf (
    symb_name      VARCHAR2(8 BYTE) NOT NULL,
    process_type   VARCHAR2(1 BYTE) NOT NULL,
    queue_send     VARCHAR2(8 BYTE) NOT NULL,
    queue_recv     VARCHAR2(8 BYTE) NOT NULL,
    queue_type     VARCHAR2(5 BYTE) NOT NULL,
    mult_uniq      VARCHAR2(1 BYTE) NOT NULL,
    ind_estado     VARCHAR2(1 BYTE) DEFAULT 'A' NOT NULL,
    mac            VARCHAR2(400 BYTE) NOT NULL,
    fec_crea       DATE DEFAULT SYSDATE NOT NULL,
    fec_actu       DATE DEFAULT SYSDATE,
    usu_crea       VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL') NOT NULL,
    usu_actu       VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL')
)
TABLESPACE datos LOGGING NO INMEMORY;

ALTER TABLE sixdes40.tp_six_msgqcf
    ADD CONSTRAINT chk_process_type CHECK ( process_type IN (
        'A',
        'S'
    ) );

ALTER TABLE sixdes40.tp_six_msgqcf
    ADD CHECK ( ind_estado IN (
        'A',
        'I'
    ) );

COMMENT ON TABLE sixdes40.tp_six_msgqcf IS
    'Descripcion : Almacena la configuracion de las colas de mensajes de los servidores sincronos y procesos asincronos';

COMMENT ON COLUMN sixdes40.tp_six_msgqcf.symb_name IS
    'Nombre simbolico de la aplicacion';

COMMENT ON COLUMN sixdes40.tp_six_msgqcf.process_type IS
    'A = Asincrono;  S = Sincrono';

COMMENT ON COLUMN sixdes40.tp_six_msgqcf.queue_send IS
    'Key de cola de envio (Valores de CERO a 9)';

COMMENT ON COLUMN sixdes40.tp_six_msgqcf.queue_recv IS
    'Key de cola de recepcion (Valores de CERO a 9)';

COMMENT ON COLUMN sixdes40.tp_six_msgqcf.queue_type IS
    'Tipo de cola';

COMMENT ON COLUMN sixdes40.tp_six_msgqcf.mult_uniq IS
    'U = Unico;  M = Multiple';

COMMENT ON COLUMN sixdes40.tp_six_msgqcf.ind_estado IS
    'Estado ''A'' Activo, ''I'' Inactivo';

COMMENT ON COLUMN sixdes40.tp_six_msgqcf.mac IS
    'Message autentication code';

COMMENT ON COLUMN sixdes40.tp_six_msgqcf.fec_crea IS
    'Fecha creacion';

COMMENT ON COLUMN sixdes40.tp_six_msgqcf.fec_actu IS
    'Fecha Actualizacion';

COMMENT ON COLUMN sixdes40.tp_six_msgqcf.usu_crea IS
    'Usuario Creacion';

COMMENT ON COLUMN sixdes40.tp_six_msgqcf.usu_actu IS
    'Usuario Actualizacion';

ALTER TABLE sixdes40.tp_six_msgqcf
    ADD CONSTRAINT pk_six_msgqcf PRIMARY KEY ( symb_name,
                                               process_type )
        USING INDEX TABLESPACE indices LOGGING;

CREATE TABLE sixdes40.tp_six_process (
    symb_name              VARCHAR2(8 BYTE) NOT NULL,
    prog_disk              VARCHAR2(14 BYTE) NOT NULL,
    process_type           VARCHAR2(1 BYTE) NOT NULL,
    server_type            VARCHAR2(1 BYTE),
    remote_host            VARCHAR2(8 BYTE),
    service_port           VARCHAR2(14 BYTE),
    gate_prot              VARCHAR2(1 BYTE),
    time_timeout           VARCHAR2(3 BYTE),
    tip_profile            VARCHAR2(1 BYTE),
    dyna_stat              VARCHAR2(1 BYTE),
    mult_uniq              VARCHAR2(1 BYTE) NOT NULL,
    load_start             VARCHAR2(1 BYTE) NOT NULL,
    auto_load_after_down   VARCHAR2(1 BYTE) NOT NULL,
    clean_queue_down       VARCHAR2(1 BYTE) NOT NULL,
    emisor_receptor        VARCHAR2(1 BYTE),
    depen_indepent         VARCHAR2(1 BYTE),
    notif_timer            NUMBER(*, 0) NOT NULL,
    max_retri              VARCHAR2(3 BYTE) NOT NULL,
    signal_send            VARCHAR2(2 BYTE) NOT NULL,
    ind_interval           VARCHAR2(2 BYTE),
    params                 VARCHAR2(50 BYTE),
    ind_estado             VARCHAR2(1 BYTE) DEFAULT 'A',
    fec_crea               DATE DEFAULT SYSDATE NOT NULL,
    fec_actu               DATE DEFAULT SYSDATE,
    usu_crea               VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL') NOT NULL,
    usu_actu               VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL'),
    mac                    VARCHAR2(400 BYTE) NOT NULL,
    description            VARCHAR2(40 BYTE)
)
TABLESPACE datos LOGGING NO INMEMORY;

ALTER TABLE sixdes40.tp_six_process
    ADD CONSTRAINT chk_process_type_a_s CHECK ( process_type IN (
        'A',
        'S'
    ) );

ALTER TABLE sixdes40.tp_six_process
    ADD CONSTRAINT chk_load_start CHECK ( load_start IN (
        'N',
        'Y'
    ) );

ALTER TABLE sixdes40.tp_six_process
    ADD CONSTRAINT chk_auto_load_after_down CHECK ( auto_load_after_down IN (
        'N',
        'Y'
    ) );

ALTER TABLE sixdes40.tp_six_process
    ADD CONSTRAINT chk_clean_queue_down CHECK ( clean_queue_down IN (
        'N',
        'Y'
    ) );

ALTER TABLE sixdes40.tp_six_process
    ADD CHECK ( ind_estado IN (
        'A',
        'I'
    ) );

COMMENT ON COLUMN sixdes40.tp_six_process.symb_name IS
    'Nombre simbolico de la aplicacion';

COMMENT ON COLUMN sixdes40.tp_six_process.process_type IS
    'Tipo de Proceso A-> Sincrono, S-> Sincrono';

COMMENT ON COLUMN sixdes40.tp_six_process.server_type IS
    'Tipo Serrvidor : L = Servidor local; C = Servidor cliente;G = Gateway sid. 2= Gateway SIX2SIX, A=Asincrono ';

COMMENT ON COLUMN sixdes40.tp_six_process.remote_host IS
    'Nombre simbolico del host donde reside el servidor remoto';

COMMENT ON COLUMN sixdes40.tp_six_process.service_port IS
    'Nombre simbolico del puerto de servicio por donde escucha el servidor remoto';

COMMENT ON COLUMN sixdes40.tp_six_process.gate_prot IS
    'Protocolo a utilizar: T=TCP; X=X25; S=SNA/3270;  a=SNA/LU2; N=None';

COMMENT ON COLUMN sixdes40.tp_six_process.time_timeout IS
    'Tiempo en segundos que esperara el SIX/TCL por una respuesta de una  txn';

COMMENT ON COLUMN sixdes40.tp_six_process.mult_uniq IS
    'U = Unico;  M = Multiple';

COMMENT ON COLUMN sixdes40.tp_six_process.load_start IS
    'Y = Yes; N = No  (Indica si el servidor se iniciara cuando se inicia el SIX/TCL)';

COMMENT ON COLUMN sixdes40.tp_six_process.auto_load_after_down IS
    'Y = Yes; N = No  (Indica si el servidor se reiniciara ante una caida)';

COMMENT ON COLUMN sixdes40.tp_six_process.clean_queue_down IS
    'Y = Yes; N = No';

COMMENT ON COLUMN sixdes40.tp_six_process.emisor_receptor IS
    'E = Emisor;  R = Receptor; B = Both';

COMMENT ON COLUMN sixdes40.tp_six_process.depen_indepent IS
    'D = Dependiente; I = Independiente';

COMMENT ON COLUMN sixdes40.tp_six_process.notif_timer IS
    'Codigo de Timer a ser usado';

COMMENT ON COLUMN sixdes40.tp_six_process.max_retri IS
    'Maximo numero de activaciones automaticas del modulo';

COMMENT ON COLUMN sixdes40.tp_six_process.signal_send IS
    'Señal a enviar al modulo servidor al terminar un proceso. (0 = No envia señal)';

COMMENT ON COLUMN sixdes40.tp_six_process.ind_interval IS
    'Indicado de interval ';

COMMENT ON COLUMN sixdes40.tp_six_process.params IS
    'Parametros a enviar al modulo servidor al ejecutar';

COMMENT ON COLUMN sixdes40.tp_six_process.ind_estado IS
    'Estado ''A'' Activo, ''I'' Inactivo';

COMMENT ON COLUMN sixdes40.tp_six_process.fec_crea IS
    'Fecha creacion';

COMMENT ON COLUMN sixdes40.tp_six_process.fec_actu IS
    'Fecha Actualizacion';

COMMENT ON COLUMN sixdes40.tp_six_process.usu_crea IS
    'Usuario Creacion';

COMMENT ON COLUMN sixdes40.tp_six_process.usu_actu IS
    'Usuario Actualizacion';

COMMENT ON COLUMN sixdes40.tp_six_process.mac IS
    'Message autentication code';

COMMENT ON COLUMN sixdes40.tp_six_process.description IS
    'Descripcion del proceso';

ALTER TABLE sixdes40.tp_six_process
    ADD CONSTRAINT pk_tp_six_process PRIMARY KEY ( symb_name )
        USING INDEX TABLESPACE indices LOGGING;

CREATE TABLE sixdes40.tp_six_table_of_tables (
    nom_table       VARCHAR2(50 BYTE) NOT NULL,
    nom_campo       VARCHAR2(100 BYTE) NOT NULL,
    sec_grp_table   NUMBER,
    ind_estado      VARCHAR2(1 BYTE) DEFAULT 'A' NOT NULL,
    fec_ini_vig     DATE NOT NULL,
    fec_fin_vig     DATE NOT NULL,
    fec_crea        DATE DEFAULT SYSDATE NOT NULL,
    fec_actu        DATE DEFAULT SYSDATE,
    usu_crea        VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL') NOT NULL,
    usu_actu        VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL')
)
TABLESPACE datos LOGGING NO INMEMORY;

ALTER TABLE sixdes40.tp_six_table_of_tables
    ADD CHECK ( ind_estado IN (
        'A',
        'E'
    ) );

COMMENT ON COLUMN sixdes40.tp_six_table_of_tables.nom_table IS
    'Nombre de la tabla perteneciente al SIX';

COMMENT ON COLUMN sixdes40.tp_six_table_of_tables.nom_campo IS
    'Nombre del Campo perteneciente a la tabla';

COMMENT ON COLUMN sixdes40.tp_six_table_of_tables.fec_ini_vig IS
    'Fecha Inicial de Vigencia';

COMMENT ON COLUMN sixdes40.tp_six_table_of_tables.fec_fin_vig IS
    'Fecha Final Vigencia';

ALTER TABLE sixdes40.tp_six_table_of_tables
    ADD CONSTRAINT pk_tp_six_table_of_tables PRIMARY KEY ( nom_table,
                                                           nom_campo )
        USING INDEX TABLESPACE indices LOGGING;

CREATE TABLE sixdes40.tp_six_usrtcl (
    host_name           VARCHAR2(8 BYTE) NOT NULL,
    user_name           VARCHAR2(8 BYTE) NOT NULL,
    user_pwd            VARCHAR2(50 BYTE) NOT NULL,
    user_type           VARCHAR2(1 BYTE) DEFAULT 'N' NOT NULL,
    user_group          VARCHAR2(10 BYTE),
    pkzip_support       VARCHAR2(1 BYTE) NOT NULL,
    company_name        VARCHAR2(40 BYTE) NOT NULL,
    responsable_name    VARCHAR2(20 BYTE) NOT NULL,
    long_name           VARCHAR2(40 BYTE) NOT NULL,
    doc_type            VARCHAR2(1 BYTE) NOT NULL,
    doc_number          VARCHAR2(11 BYTE) NOT NULL,
    telephone           VARCHAR2(11 BYTE) NOT NULL,
    faximile            VARCHAR2(11 BYTE) NOT NULL,
    user_blocked        VARCHAR2(1 BYTE) NOT NULL,
    tip_format          VARCHAR2(1 BYTE) DEFAULT 'A' NOT NULL,
    max_logon_per_day   VARCHAR2(2 BYTE) NOT NULL,
    max_iddle_time      VARCHAR2(4 BYTE) NOT NULL,
    last_date_connect   VARCHAR2(8 BYTE) NOT NULL,
    last_time_connect   VARCHAR2(6 BYTE) NOT NULL,
    last_dura_connect   VARCHAR2(6 BYTE) NOT NULL,
    last_port_connect   VARCHAR2(10 BYTE) NOT NULL,
    chg_pwd_date        VARCHAR2(8 BYTE) NOT NULL,
    chg_pwd_time        VARCHAR2(6 BYTE) NOT NULL,
    bad_pwd_in_day      VARCHAR2(2 BYTE) NOT NULL,
    bad_pwd_daily       VARCHAR2(2 BYTE) NOT NULL,
    ftp_server_name     VARCHAR2(8 BYTE) NOT NULL,
    software_upd        VARCHAR2(8 BYTE) NOT NULL,
    distribu_upd        VARCHAR2(8 BYTE) NOT NULL,
    conn_type           VARCHAR2(1 BYTE) NOT NULL,
    auth_method         VARCHAR2(2 BYTE) DEFAULT '00' NOT NULL,
    security_level      VARCHAR2(2 BYTE) NOT NULL,
    crypt_flag          VARCHAR2(1 BYTE) NOT NULL,
    client_id           VARCHAR2(8 BYTE) NOT NULL,
    ind_estado          VARCHAR2(1 BYTE),
    fec_crea            DATE DEFAULT SYSDATE NOT NULL,
    fec_actu            DATE DEFAULT SYSDATE,
    usu_crea            VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL') NOT NULL,
    usu_actu            VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL'),
    mac                 VARCHAR2(400 BYTE) NOT NULL,
    comments            VARCHAR2(300 BYTE)
)
TABLESPACE datos LOGGING NO INMEMORY;

ALTER TABLE sixdes40.tp_six_usrtcl
    ADD CONSTRAINT chk_pkzip_support CHECK ( pkzip_support IN (
        'N',
        'Y'
    ) );

ALTER TABLE sixdes40.tp_six_usrtcl
    ADD CONSTRAINT chk_user_blocked CHECK ( user_blocked IN (
        'N',
        'Y'
    ) );

ALTER TABLE sixdes40.tp_six_usrtcl
    ADD CONSTRAINT chk_format CHECK ( tip_format IN (
        'A',
        'E'
    ) );

ALTER TABLE sixdes40.tp_six_usrtcl
    ADD CONSTRAINT chk_crypt_flag CHECK ( crypt_flag IN (
        'N',
        'Y'
    ) );

ALTER TABLE sixdes40.tp_six_usrtcl
    ADD CHECK ( ind_estado IN (
        'A',
        'I'
    ) );

COMMENT ON TABLE sixdes40.tp_six_usrtcl IS
    'Descripcion : Almacena los usuarios que utilizaran las APIs clientes para conectarse al SIX/TCL Server ';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.host_name IS
    'Host Name';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.user_name IS
    'User name';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.user_pwd IS
    'Password de usuario';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.user_type IS
    'Tipo de usuario:  N=Normal;  Eliminar P=Principal y  A=Alternate';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.user_group IS
    'Grupo Usuarios';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.pkzip_support IS
    'Indicador de compresion de archivos (Y o N)';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.company_name IS
    'Nombre de la empresa';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.responsable_name IS
    'Alias del responsable';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.long_name IS
    'Nombre largo del responsable';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.doc_type IS
    'Tipo de documento';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.doc_number IS
    'Numero de documento';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.telephone IS
    'Telefono';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.faximile IS
    'Numero de fax. ';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.user_blocked IS
    'Usuario bloqueado : Y = Yes;  N = No';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.tip_format IS
    'A = ASCII; E = EBCDIC';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.max_logon_per_day IS
    'Numero maximo de conexiones al dia por dicho usuario';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.max_iddle_time IS
    'Tiempo maximo (min) que esperara la interfaz por un mensaje del cliente antes de cerrar la sesion. Cambiar por max_iddle_time '
    ;

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.last_date_connect IS
    'Ultima fecha de conexion en formato YYYYMMDD';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.last_time_connect IS
    'Ultima hora de conexion en formato YYYYMMDD';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.last_dura_connect IS
    'Duracion de la ultima conexion en segundos';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.last_port_connect IS
    'Eliminar para la siguiente etapa';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.chg_pwd_date IS
    'Fecha del ultimo cambio de pwd en formato YYYYMMDD';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.chg_pwd_time IS
    'Hora del ultimo cambio de pwd en formato YYYYMMDD';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.bad_pwd_in_day IS
    'Numero de errores de conexion el dia de hoy';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.bad_pwd_daily IS
    'Maximo numero de errores de conexion x dia';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.ftp_server_name IS
    'Nombre simbolico del servidor de archivos. Normalmente FTPSERV';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.software_upd IS
    'Fecha de ultima actualizacion de software en formato YYYYMMDD';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.distribu_upd IS
    'Fecha de ultima actualizacion de distribucion en formato YYYYMMDD';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.conn_type IS
    'Tipo de conexion: S = Standard; T = Trusted; A = Trusted con auth.';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.auth_method IS
    'Tipo de autenticacion: 00=Pwd;  01=Pwd/Hld;  02=Pwd/Hld/Btn;  03=FPrint.';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.security_level IS
    'Nivel minimo de algoritmo cifrado con que el usuario establece la sesion';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.crypt_flag IS
    'Indica si la sesion debe ser cifrada o no: Y = Yes;  N = No';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.client_id IS
    'Identificador para la validacion de usuario';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.ind_estado IS
    'Estado ''A'' Activo, ''I'' Inactivo';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.fec_crea IS
    'Fecha Creacion';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.fec_actu IS
    'Fecha Actualizacion';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.usu_crea IS
    'Usuario creacion';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.usu_actu IS
    'Usuario actualizacion';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.mac IS
    'Message autentication code';

COMMENT ON COLUMN sixdes40.tp_six_usrtcl.comments IS
    'Campo para comentarios';

ALTER TABLE sixdes40.tp_six_usrtcl
    ADD CONSTRAINT pk_six_usrtcl PRIMARY KEY ( host_name,
                                               user_name )
        USING INDEX TABLESPACE indices LOGGING;

CREATE TABLE sixdes40.ts_datasource (
    id_datasource       NUMBER NOT NULL,
    ds_ambient          VARCHAR2(200 BYTE),
    bd_server           VARCHAR2(20 BYTE),
    bd_port             NUMBER,
    bd_url_connection   VARCHAR2(200 BYTE),
    bd_user             VARCHAR2(20 BYTE),
    bd_password         VARCHAR2(300 BYTE),
    bd_driver           VARCHAR2(200 BYTE),
    bd_dbproduct_name   VARCHAR2(50 BYTE),
    ds_description      VARCHAR2(300 BYTE),
    usu_crea            VARCHAR2(20 BYTE),
    fec_crea            DATE,
    usu_actu            VARCHAR2(20 BYTE),
    fec_actu            DATE,
    bd_database         VARCHAR2(30 BYTE),
    ind_estado          VARCHAR2(1 BYTE),
    bd_dialect          VARCHAR2(200 BYTE),
    bd_show_sql         NUMBER,
    pool_size           NUMBER
)
TABLESPACE datos LOGGING NO INMEMORY;

COMMENT ON COLUMN sixdes40.ts_datasource.id_datasource IS
    'Identificador de la dataSource
';

COMMENT ON COLUMN sixdes40.ts_datasource.bd_server IS
    'Identificador de servidor de base de datos
';

COMMENT ON COLUMN sixdes40.ts_datasource.bd_port IS
    'Identificador del puerto de base de datos';

COMMENT ON COLUMN sixdes40.ts_datasource.bd_url_connection IS
    'Identificador de url de base de datos';

COMMENT ON COLUMN sixdes40.ts_datasource.bd_user IS
    'Identificador del usuario de conexion';

COMMENT ON COLUMN sixdes40.ts_datasource.bd_password IS
    'Identificador del password de conexion';

COMMENT ON COLUMN sixdes40.ts_datasource.bd_driver IS
    'Identificador del nombre de la clase del driver';

COMMENT ON COLUMN sixdes40.ts_datasource.bd_dbproduct_name IS
    'Identificado del nombre del producto';

COMMENT ON COLUMN sixdes40.ts_datasource.usu_crea IS
    'Usuario de creacion
';

COMMENT ON COLUMN sixdes40.ts_datasource.fec_crea IS
    'Fecha de creacion';

COMMENT ON COLUMN sixdes40.ts_datasource.usu_actu IS
    'Usuario de modificacion';

COMMENT ON COLUMN sixdes40.ts_datasource.fec_actu IS
    'Fecha de modificacion';

COMMENT ON COLUMN sixdes40.ts_datasource.bd_database IS
    'Identificador de bd

';

COMMENT ON COLUMN sixdes40.ts_datasource.ind_estado IS
    'Estado A Activo, I Inactivo

';

ALTER TABLE sixdes40.ts_datasource
    ADD CONSTRAINT ts_datasource_pk PRIMARY KEY ( id_datasource )
        USING INDEX TABLESPACE indices LOGGING;

CREATE TABLE sixdes40.ts_ftp (
    id_ftp            NUMBER NOT NULL,
    ftp_port          NUMBER,
    ftp_password      VARCHAR2(300 BYTE),
    ftp_ruta          VARCHAR2(300 BYTE),
    ftp_name_file     VARCHAR2(200 BYTE),
    ftp_description   VARCHAR2(300 BYTE),
    usu_crea          VARCHAR2(20 BYTE),
    fec_crea          DATE,
    usu_actu          VARCHAR2(20 BYTE),
    fec_actu          DATE,
    ind_estado        VARCHAR2(1 BYTE) NOT NULL,
    ftp_user          VARCHAR2(200 BYTE),
    ftp_server        VARCHAR2(200 BYTE)
)
TABLESPACE datos LOGGING NO INMEMORY;

COMMENT ON COLUMN sixdes40.ts_ftp.id_ftp IS
    'Identificador del sftp';

COMMENT ON COLUMN sixdes40.ts_ftp.ftp_port IS
    'Identificador del puerto del servidor';

COMMENT ON COLUMN sixdes40.ts_ftp.ftp_password IS
    'Identificador del password de conexion sftp';

COMMENT ON COLUMN sixdes40.ts_ftp.ftp_ruta IS
    'Identificador de ruta de la licencia';

COMMENT ON COLUMN sixdes40.ts_ftp.ftp_name_file IS
    'Identificador del nombre de la licencia';

COMMENT ON COLUMN sixdes40.ts_ftp.ftp_description IS
    'Identificador de la descripcion del sftp';

COMMENT ON COLUMN sixdes40.ts_ftp.usu_crea IS
    'Usuario de creacion';

COMMENT ON COLUMN sixdes40.ts_ftp.fec_crea IS
    'Fecha de creacion';

COMMENT ON COLUMN sixdes40.ts_ftp.usu_actu IS
    'Usuario de modificacion';

COMMENT ON COLUMN sixdes40.ts_ftp.fec_actu IS
    'Fecha de modificacion';

COMMENT ON COLUMN sixdes40.ts_ftp.ind_estado IS
    'Estado A Activo, I Inactivo';

ALTER TABLE sixdes40.ts_ftp
    ADD CONSTRAINT pk_id_ftp PRIMARY KEY ( id_ftp )
        USING INDEX TABLESPACE indices LOGGING;

CREATE TABLE sixdes40.ts_licencia (
    id_licencia         NUMBER NOT NULL,
    licen_name          VARCHAR2(200 BYTE),
    licen_description   VARCHAR2(200 BYTE),
    user_table          NUMBER,
    servers_gateways    NUMBER,
    generals            NUMBER,
    drivers             NUMBER,
    ind_estado          VARCHAR2(1 BYTE)
)
TABLESPACE datos LOGGING NO INMEMORY;

COMMENT ON COLUMN sixdes40.ts_licencia.id_licencia IS
    'Identificador de licencia';

COMMENT ON COLUMN sixdes40.ts_licencia.licen_name IS
    'nombre';

COMMENT ON COLUMN sixdes40.ts_licencia.licen_description IS
    'descripcion';

COMMENT ON COLUMN sixdes40.ts_licencia.user_table IS
    'cantidad de usuarios';

COMMENT ON COLUMN sixdes40.ts_licencia.servers_gateways IS
    'cantidad de procesos sincronos';

COMMENT ON COLUMN sixdes40.ts_licencia.generals IS
    'cantidad de procesos asincronos';

COMMENT ON COLUMN sixdes40.ts_licencia.drivers IS
    'cantidad de drivers';

COMMENT ON COLUMN sixdes40.ts_licencia.ind_estado IS
    'indica el estado';

ALTER TABLE sixdes40.ts_licencia
    ADD CONSTRAINT ts_licencia_pk PRIMARY KEY ( id_licencia )
        USING INDEX TABLESPACE indices LOGGING;

CREATE TABLE sixdes40.ts_six_grupo_detalle (
    user_group   VARCHAR2(10 BYTE) NOT NULL,
    symb_name    VARCHAR2(8 BYTE) NOT NULL,
    fec_crea     DATE DEFAULT SYSDATE NOT NULL,
    fec_actu     DATE DEFAULT SYSDATE,
    usu_crea     VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL') NOT NULL,
    usu_actu     VARCHAR2(30 BYTE) DEFAULT sys_context('USERENV', 'TERMINAL'),
    ind_estado   VARCHAR2(1 BYTE) DEFAULT 'A' NOT NULL
)
TABLESPACE datos LOGGING NO INMEMORY;

ALTER TABLE sixdes40.ts_six_grupo_detalle
    ADD CHECK ( ind_estado IN (
        'A',
        'I'
    ) );

COMMENT ON COLUMN sixdes40.ts_six_grupo_detalle.user_group IS
    'Grupo Usuario';

COMMENT ON COLUMN sixdes40.ts_six_grupo_detalle.symb_name IS
    'Nombre simbolico de la aplicacion.';

COMMENT ON COLUMN sixdes40.ts_six_grupo_detalle.fec_crea IS
    'Fecha creacion';

COMMENT ON COLUMN sixdes40.ts_six_grupo_detalle.fec_actu IS
    'Fecha Actualizacion';

COMMENT ON COLUMN sixdes40.ts_six_grupo_detalle.usu_crea IS
    'Usuario creacion';

COMMENT ON COLUMN sixdes40.ts_six_grupo_detalle.usu_actu IS
    'Usuario actualizacion';

COMMENT ON COLUMN sixdes40.ts_six_grupo_detalle.ind_estado IS
    'Estado ''A'' Activo, ''I'' Inactivo';

ALTER TABLE sixdes40.ts_six_grupo_detalle
    ADD CONSTRAINT pk_ts_six_grupo_detalle PRIMARY KEY ( user_group,
                                                         symb_name )
        USING INDEX TABLESPACE indices LOGGING;

CREATE TABLE sixdes40.ts_usuario (
    us_usuario      VARCHAR2(200 BYTE) NOT NULL,
    id_datasource   NUMBER NOT NULL
)
TABLESPACE datos LOGGING NO INMEMORY;

COMMENT ON COLUMN sixdes40.ts_usuario.us_usuario IS
    'Usuario';

COMMENT ON COLUMN sixdes40.ts_usuario.id_datasource IS
    'Identificador del datasource';

ALTER TABLE sixdes40.ts_usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY ( us_usuario )
        USING INDEX TABLESPACE indices LOGGING;

ALTER TABLE sixdes40.tp_grupo_table_value_det
    ADD CONSTRAINT fk_grp_tbl_val_det_gro_tbl_val FOREIGN KEY ( sec_grp_table )
        REFERENCES sixdes40.tp_grupo_table_value ( sec_grp_table )
    NOT DEFERRABLE;

ALTER TABLE sixdes40.ts_six_grupo_detalle
    ADD CONSTRAINT fk_six_grupo_det_six_process FOREIGN KEY ( symb_name )
        REFERENCES sixdes40.tp_six_process ( symb_name )
    NOT DEFERRABLE;

ALTER TABLE sixdes40.ts_six_grupo_detalle
    ADD CONSTRAINT fk_six_grupo_detalle_six_grupo FOREIGN KEY ( user_group )
        REFERENCES sixdes40.ts_six_grupo ( user_group )
    NOT DEFERRABLE;

ALTER TABLE sixdes40.tp_six_msgqcf
    ADD CONSTRAINT fk_six_msgqcf_six_process FOREIGN KEY ( symb_name )
        REFERENCES sixdes40.tp_six_process ( symb_name )
    NOT DEFERRABLE;

ALTER TABLE sixdes40.tp_six_process
    ADD CONSTRAINT fk_six_process_six_downcf FOREIGN KEY ( notif_timer )
        REFERENCES sixdes40.tp_six_downcf ( cod_timer )
    NOT DEFERRABLE;

ALTER TABLE sixdes40.tp_six_table_of_tables
    ADD CONSTRAINT fk_six_tbl_of_tbl_grp_tbl_val FOREIGN KEY ( sec_grp_table )
        REFERENCES sixdes40.tp_grupo_table_value ( sec_grp_table )
    NOT DEFERRABLE;

ALTER TABLE sixdes40.tp_six_usrtcl
    ADD CONSTRAINT tp_six_usrtcl_ts_six_grupo_fk FOREIGN KEY ( user_group )
        REFERENCES sixdes40.ts_six_grupo ( user_group )
    NOT DEFERRABLE;

CREATE OR REPLACE TRIGGER SIXDES40.TGA_CFGTCL 
    BEFORE INSERT OR UPDATE OR DELETE ON SIXDES40.TP_SIX_CFGTCL 
    FOR EACH ROW 
DECLARE 
  v_TipoAccion VARCHAR2(1);
  v_Usuario   VARCHAR2(30);

  BEGIN
   IF INSERTING THEN

    v_TipoAccion:='I';
    v_Usuario:=:NEW.USU_CREA;

     INSERT INTO TP_LOG_AUDIT
    (
        ID_SEC_LOG,
        TIP_ACCION,
        NOM_TABLA,
        NOM_CAMPO,
        VAL_ORIGINAL,
        VAL_NUEVO,
        FEC_CREA,
        USU_CREA
      ) VALUES (
        SEQ_LOG_AUDIT.NEXTVAL,
        v_TipoAccion,
        'A',
        'MODULO; NOMBRE_PARAMETRO',
        NULL,
        :new.MODULO|| '; ' || :new.NOMBRE_PARAMETRO,
        SYSDATE,
        UPPER(v_Usuario)
        );

    ELSIF UPDATING THEN
        v_tipoaccion := 'U';
        v_usuario :=:new.usu_crea;

        IF((:old.MODULO <> :new.MODULO ) 
        OR (:old.MODULO IS NULL AND :new.MODULO IS NOT NULL) 
        OR (:old.MODULO IS NOT NULL AND :new.MODULO IS NULL))
        THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'A',
                'MODULO',
                :old.MODULO,
                :new.MODULO,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.NOMBRE_PARAMETRO <> :new.NOMBRE_PARAMETRO)
        OR (:old.NOMBRE_PARAMETRO IS NULL AND :new.NOMBRE_PARAMETRO IS NOT NULL)
        OR (:old.NOMBRE_PARAMETRO IS NOT NULL AND :new.NOMBRE_PARAMETRO IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'A',
                'NOMBRE_PARAMETRO',
                :old.NOMBRE_PARAMETRO,
                :new.NOMBRE_PARAMETRO,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.DESCRIPCION <> :new.DESCRIPCION)
        OR (:old.DESCRIPCION IS NULL AND :new.DESCRIPCION IS NOT NULL)
        OR (:old.DESCRIPCION IS NOT NULL AND :new.DESCRIPCION IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'A',
                'DESCRIPCION',
                :old.DESCRIPCION,
                :new.DESCRIPCION,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.TIPO_DATO <> :new.TIPO_DATO)
        OR (:old.TIPO_DATO IS NULL AND :new.TIPO_DATO IS NOT NULL)
        OR (:old.TIPO_DATO IS NOT NULL AND :new.TIPO_DATO IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'A',
                'TIPO_DATO',
                :old.TIPO_DATO,
                :new.TIPO_DATO,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.VALOR_REAL <> :new.VALOR_REAL)
        OR (:old.VALOR_REAL IS NULL AND :new.VALOR_REAL IS NOT NULL)
        OR (:old.VALOR_REAL IS NOT NULL AND :new.VALOR_REAL IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'A',
                'VALOR_REAL',
                :old.VALOR_REAL,
                :new.VALOR_REAL,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.VALOR_ENTERO <> :new.VALOR_ENTERO)
        OR (:old.VALOR_ENTERO IS NULL AND :new.VALOR_ENTERO IS NOT NULL)
        OR (:old.VALOR_ENTERO IS NOT NULL AND :new.VALOR_ENTERO IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'A',
                'VALOR_ENTERO',
                :old.VALOR_ENTERO,
                :new.VALOR_ENTERO,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.VALOR_FECHA <> :new.VALOR_FECHA)
        OR (:old.VALOR_FECHA IS NULL AND :new.VALOR_FECHA IS NOT NULL)
        OR (:old.VALOR_FECHA IS NOT NULL AND :new.VALOR_FECHA IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'A',
                'VALOR_FECHA',
                :old.VALOR_FECHA,
                :new.VALOR_FECHA,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.VALOR_CADENA <> :new.VALOR_CADENA)
        OR (:old.VALOR_CADENA IS NULL AND :new.VALOR_CADENA IS NOT NULL)
        OR (:old.VALOR_CADENA IS NOT NULL AND :new.VALOR_CADENA IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'A',
                'VALOR_CADENA',
                :old.VALOR_CADENA,
                :new.VALOR_CADENA,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.IND_ESTADO <> :new.IND_ESTADO)
        OR (:old.IND_ESTADO IS NULL AND :new.IND_ESTADO IS NOT NULL)
        OR (:old.IND_ESTADO IS NOT NULL AND :new.IND_ESTADO IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'A',
                'IND_ESTADO',
                :old.IND_ESTADO,
                :new.IND_ESTADO,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;

    ELSIF DELETING THEN
      v_TipoAccion:='D';
      v_Usuario:=:OLD.USU_CREA;

     INSERT INTO TP_LOG_AUDIT
    (
        ID_SEC_LOG,
        TIP_ACCION,
        NOM_TABLA,
        NOM_CAMPO,
        VAL_ORIGINAL,
        VAL_NUEVO,
        FEC_CREA,
        USU_CREA
      ) VALUES (
      SEQ_LOG_AUDIT.NEXTVAL,
        v_TipoAccion,
        'A',
        'MODULO; NOMBRE_PARAMETRO',
        :old.MODULO|| '; ' || :old.NOMBRE_PARAMETRO,
        NULL,
        SYSDATE,
        UPPER(v_Usuario)
        );
        END IF;
  END; 
/

CREATE OR REPLACE TRIGGER SIXDES40.TGA_DOWNCF 
    BEFORE INSERT OR UPDATE OR DELETE ON SIXDES40.TP_SIX_DOWNCF 
    FOR EACH ROW 
DECLARE 
  v_TipoAccion VARCHAR2(1);
  v_Usuario   VARCHAR2(30);

  BEGIN
   IF INSERTING THEN

    v_TipoAccion:='I';
    v_Usuario:=:NEW.USU_CREA;

     INSERT INTO TP_LOG_AUDIT
    (
        ID_SEC_LOG,
        TIP_ACCION,
        NOM_TABLA,
        NOM_CAMPO,
        VAL_ORIGINAL,
        VAL_NUEVO,
        FEC_CREA,
        USU_CREA
      ) VALUES (
        SEQ_LOG_AUDIT.NEXTVAL,
        v_TipoAccion,
        'B',
        'COD_TIMER',
        NULL,
        :new.COD_TIMER,
        SYSDATE,
        UPPER(v_Usuario)
        );

    ELSIF UPDATING THEN
        v_tipoaccion := 'U';
        v_usuario :=:new.usu_crea;

        IF((:old.COD_TIMER <> :new.COD_TIMER ) 
        OR (:old.COD_TIMER IS NULL AND :new.COD_TIMER IS NOT NULL) 
        OR (:old.COD_TIMER IS NOT NULL AND :new.COD_TIMER IS NULL))
        THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'B',
                'COD_TIMER',
                :old.COD_TIMER,
                :new.COD_TIMER,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.NRO_TIMER <> :new.NRO_TIMER)
        OR (:old.NRO_TIMER IS NULL AND :new.NRO_TIMER IS NOT NULL)
        OR (:old.NRO_TIMER IS NOT NULL AND :new.NRO_TIMER IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'B',
                'NRO_TIMER',
                :old.NRO_TIMER,
                :new.NRO_TIMER,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.TIPO_TIMER <> :new.TIPO_TIMER)
        OR (:old.TIPO_TIMER IS NULL AND :new.TIPO_TIMER IS NOT NULL)
        OR (:old.TIPO_TIMER IS NOT NULL AND :new.TIPO_TIMER IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'B',
                'TIPO_TIMER',
                :old.TIPO_TIMER,
                :new.TIPO_TIMER,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.IND_ESTADO <> :new.IND_ESTADO)
        OR (:old.IND_ESTADO IS NULL AND :new.IND_ESTADO IS NOT NULL)
        OR (:old.IND_ESTADO IS NOT NULL AND :new.IND_ESTADO IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'B',
                'IND_ESTADO',
                :old.IND_ESTADO,
                :new.IND_ESTADO,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;

    ELSIF DELETING THEN
      v_TipoAccion:='D';
      v_Usuario:=:OLD.USU_CREA;

     INSERT INTO TP_LOG_AUDIT
    (
        ID_SEC_LOG,
        TIP_ACCION,
        NOM_TABLA,
        NOM_CAMPO,
        VAL_ORIGINAL,
        VAL_NUEVO,
        FEC_CREA,
        USU_CREA
      ) VALUES (
      SEQ_LOG_AUDIT.NEXTVAL,
        v_TipoAccion,
        'B',
        'COD_TIMER',
        :old.COD_TIMER,
        NULL,
        SYSDATE,
        UPPER(v_Usuario)
        );
        END IF;
  END; 
/

CREATE OR REPLACE TRIGGER SIXDES40.TGA_DRVTCL 
    BEFORE INSERT OR UPDATE OR DELETE ON SIXDES40.TP_SIX_DRVTCL 
    FOR EACH ROW 
DECLARE 
  v_TipoAccion VARCHAR2(1);
  v_Usuario   VARCHAR2(30);

  BEGIN
   IF INSERTING THEN

    v_TipoAccion:='I';
    v_Usuario:=:NEW.USU_CREA;

     INSERT INTO TP_LOG_AUDIT
    (
        ID_SEC_LOG,
        TIP_ACCION,
        NOM_TABLA,
        NOM_CAMPO,
        VAL_ORIGINAL,
        VAL_NUEVO,
        FEC_CREA,
        USU_CREA
      ) VALUES (
        SEQ_LOG_AUDIT.NEXTVAL,
        v_TipoAccion,
        'C',
        'DRIVER_NAME; SERVICE_PORT',
        NULL,
        :NEW.DRIVER_NAME|| '; ' || :NEW.SERVICE_PORT,
        SYSDATE,
        UPPER(v_Usuario)
        );

    ELSIF UPDATING THEN
        v_tipoaccion := 'U';
        v_usuario :=:new.usu_crea;
        IF((:old.driver_name <> :new.driver_name ) 
        OR (:old.driver_name IS NULL AND :new.driver_name IS NOT NULL) 
        OR (:old.driver_name IS NOT NULL AND :new.driver_name IS NULL))
        THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'C',
                'DRIVER_NAME',
                :old.driver_name,
                :new.driver_name,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.SERVICE_PORT <> :new.SERVICE_PORT)
        OR (:old.SERVICE_PORT IS NULL AND :new.SERVICE_PORT IS NOT NULL)
        OR (:old.SERVICE_PORT IS NOT NULL AND :new.SERVICE_PORT IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'C',
                'SERVICE_PORT',
                :old.SERVICE_PORT,
                :new.SERVICE_PORT,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.AUTH_HEADER_SIZE <> :new.AUTH_HEADER_SIZE)
        OR (:old.AUTH_HEADER_SIZE IS NULL AND :new.AUTH_HEADER_SIZE IS NOT NULL)
        OR (:old.AUTH_HEADER_SIZE IS NOT NULL AND :new.AUTH_HEADER_SIZE IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'C',
                'AUTH_HEADER_SIZE',
                :old.AUTH_HEADER_SIZE,
                :new.AUTH_HEADER_SIZE,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.CONNECTION_TYPE <> :new.CONNECTION_TYPE)
        OR (:old.CONNECTION_TYPE IS NULL AND :new.CONNECTION_TYPE IS NOT NULL)
        OR (:old.CONNECTION_TYPE IS NOT NULL AND :new.CONNECTION_TYPE IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'C',
                'CONNECTION_TYPE',
                :old.CONNECTION_TYPE,
                :new.CONNECTION_TYPE,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.BASENAME <> :new.BASENAME)
        OR (:old.BASENAME IS NULL AND :new.BASENAME IS NOT NULL)
        OR (:old.BASENAME IS NOT NULL AND :new.BASENAME IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'C',
                'BASENAME',
                :old.BASENAME,
                :new.BASENAME,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.USE_TOKEN <> :new.USE_TOKEN)
        OR (:old.USE_TOKEN IS NULL AND :new.USE_TOKEN IS NOT NULL)
        OR (:old.USE_TOKEN IS NOT NULL AND :new.USE_TOKEN IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'C',
                'USE_TOKEN',
                :old.USE_TOKEN,
                :new.USE_TOKEN,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.USE_BIN <> :new.USE_BIN)
        OR (:old.USE_BIN IS NULL AND :new.USE_BIN IS NOT NULL)
        OR (:old.USE_BIN IS NOT NULL AND :new.USE_BIN IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'C',
                'USE_BIN',
                :old.USE_BIN,
                :new.USE_BIN,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.WEB_OP_MODE <> :new.WEB_OP_MODE)
        OR (:old.WEB_OP_MODE IS NULL AND :new.WEB_OP_MODE IS NOT NULL)
        OR (:old.WEB_OP_MODE IS NOT NULL AND :new.WEB_OP_MODE IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'C',
                'WEB_OP_MODE',
                :old.WEB_OP_MODE,
                :new.WEB_OP_MODE,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.EFT_LIBRARY <> :new.EFT_LIBRARY)
        OR (:old.EFT_LIBRARY IS NULL AND :new.EFT_LIBRARY IS NOT NULL)
        OR (:old.EFT_LIBRARY IS NOT NULL AND :new.EFT_LIBRARY IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'C',
                'EFT_LIBRARY',
                :old.EFT_LIBRARY,
                :new.EFT_LIBRARY,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.TYPE_DRIVER <> :new.TYPE_DRIVER)
        OR (:old.TYPE_DRIVER IS NULL AND :new.TYPE_DRIVER IS NOT NULL)
        OR (:old.TYPE_DRIVER IS NOT NULL AND :new.TYPE_DRIVER IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'C',
                'TYPE_DRIVER',
                :old.TYPE_DRIVER,
                :new.TYPE_DRIVER,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.COD_BIN <> :new.COD_BIN)
        OR (:old.COD_BIN IS NULL AND :new.COD_BIN IS NOT NULL)
        OR (:old.COD_BIN IS NOT NULL AND :new.COD_BIN IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'C',
                'COD_BIN',
                :old.COD_BIN,
                :new.COD_BIN,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.NOM_SERV <> :new.NOM_SERV)
        OR (:old.NOM_SERV IS NULL AND :new.NOM_SERV IS NOT NULL)
        OR (:old.NOM_SERV IS NOT NULL AND :new.NOM_SERV IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'C',
                'NOM_SERV',
                :old.NOM_SERV,
                :new.NOM_SERV,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.LOAD_START <> :new.LOAD_START)
        OR (:old.LOAD_START IS NULL AND :new.LOAD_START IS NOT NULL)
        OR (:old.LOAD_START IS NOT NULL AND :new.LOAD_START IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'C',
                'LOAD_START',
                :old.LOAD_START,
                :new.LOAD_START,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.MAX_RETRI <> :new.MAX_RETRI)
        OR (:old.MAX_RETRI IS NULL AND :new.MAX_RETRI IS NOT NULL)
        OR (:old.MAX_RETRI IS NOT NULL AND :new.MAX_RETRI IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'C',
                'MAX_RETRI',
                :old.MAX_RETRI,
                :new.MAX_RETRI,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.IND_INTERVAL_INI_ESPERA <> :new.IND_INTERVAL_INI_ESPERA)
        OR (:old.IND_INTERVAL_INI_ESPERA IS NULL AND :new.IND_INTERVAL_INI_ESPERA IS NOT NULL)
        OR (:old.IND_INTERVAL_INI_ESPERA IS NOT NULL AND :new.IND_INTERVAL_INI_ESPERA IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'C',
                'IND_INTERVAL_INI_ESPERA',
                :old.IND_INTERVAL_INI_ESPERA,
                :new.IND_INTERVAL_INI_ESPERA,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.PARAMS <> :new.PARAMS)
        OR (:old.PARAMS IS NULL AND :new.PARAMS IS NOT NULL)
        OR (:old.PARAMS IS NOT NULL AND :new.PARAMS IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'C',
                'PARAMS',
                :old.PARAMS,
                :new.PARAMS,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.IND_ESTADO <> :new.IND_ESTADO)
        OR (:old.IND_ESTADO IS NULL AND :new.IND_ESTADO IS NOT NULL)
        OR (:old.IND_ESTADO IS NOT NULL AND :new.IND_ESTADO IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'C',
                'IND_ESTADO',
                :old.IND_ESTADO,
                :new.IND_ESTADO,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;

    ELSIF DELETING THEN
      v_TipoAccion:='D';
      v_Usuario:=:OLD.USU_CREA;

     INSERT INTO TP_LOG_AUDIT
    (
        ID_SEC_LOG,
        TIP_ACCION,
        NOM_TABLA,
        NOM_CAMPO,
        VAL_ORIGINAL,
        VAL_NUEVO,
        FEC_CREA,
        USU_CREA
      ) VALUES (
      SEQ_LOG_AUDIT.NEXTVAL,
        v_TipoAccion,
        'C',
        'DRIVER_NAME; SERVICE_PORT',
        :OLD.DRIVER_NAME|| '; ' || :OLD.SERVICE_PORT,
        NULL,
        SYSDATE,
        UPPER(v_Usuario)
        );
        END IF;
  END; 
/

CREATE OR REPLACE TRIGGER SIXDES40.TGA_GRUPO 
    BEFORE INSERT OR UPDATE OR DELETE ON SIXDES40.TS_SIX_GRUPO 
    FOR EACH ROW 
DECLARE 
  v_TipoAccion VARCHAR2(1);
  v_Usuario   VARCHAR2(30);

  BEGIN
   IF INSERTING THEN

    v_TipoAccion:='I';
    v_Usuario:=:NEW.USU_CREA;

     INSERT INTO TP_LOG_AUDIT
    (
        ID_SEC_LOG,
        TIP_ACCION,
        NOM_TABLA,
        NOM_CAMPO,
        VAL_ORIGINAL,
        VAL_NUEVO,
        FEC_CREA,
        USU_CREA
      ) VALUES (
        SEQ_LOG_AUDIT.NEXTVAL,
        v_TipoAccion,
        'G',
        'USER_GROUP',
        NULL,
        :NEW.USER_GROUP,
        SYSDATE,
        UPPER(v_Usuario)
        );

    ELSIF UPDATING THEN
        v_tipoaccion := 'U';
        v_usuario :=:new.usu_crea;

        IF((:old.USER_GROUP <> :new.USER_GROUP ) 
        OR (:old.USER_GROUP IS NULL AND :new.USER_GROUP IS NOT NULL) 
        OR (:old.USER_GROUP IS NOT NULL AND :new.USER_GROUP IS NULL))
        THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'G',
                'USER_GROUP',
                :old.USER_GROUP,
                :new.USER_GROUP,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.DES_GRUPO <> :new.DES_GRUPO)
        OR (:old.DES_GRUPO IS NULL AND :new.DES_GRUPO IS NOT NULL)
        OR (:old.DES_GRUPO IS NOT NULL AND :new.DES_GRUPO IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'G',
                'DES_GRUPO',
                :old.DES_GRUPO,
                :new.DES_GRUPO,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.IND_ESTADO <> :new.IND_ESTADO)
        OR (:old.IND_ESTADO IS NULL AND :new.IND_ESTADO IS NOT NULL)
        OR (:old.IND_ESTADO IS NOT NULL AND :new.IND_ESTADO IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'G',
                'IND_ESTADO',
                :old.IND_ESTADO,
                :new.IND_ESTADO,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;

    ELSIF DELETING THEN
      v_TipoAccion:='D';
      v_Usuario:=:OLD.USU_CREA;

     INSERT INTO TP_LOG_AUDIT
    (
        ID_SEC_LOG,
        TIP_ACCION,
        NOM_TABLA,
        NOM_CAMPO,
        VAL_ORIGINAL,
        VAL_NUEVO,
        FEC_CREA,
        USU_CREA
      ) VALUES (
      SEQ_LOG_AUDIT.NEXTVAL,
        v_TipoAccion,
        'G',
        'USER_GROUP',
        :OLD.USER_GROUP,
        NULL,
        SYSDATE,
        UPPER(v_Usuario)
        );
        END IF;
  END; 
/

CREATE OR REPLACE TRIGGER SIXDES40.TGA_GRUPO_DETALLE 
    BEFORE INSERT OR UPDATE OR DELETE ON SIXDES40.TS_SIX_GRUPO_DETALLE 
    FOR EACH ROW 
DECLARE 
  v_TipoAccion VARCHAR2(1);
  v_Usuario   VARCHAR2(30);

  BEGIN
   IF INSERTING THEN

    v_TipoAccion:='I';
    v_Usuario:=:NEW.USU_CREA;

     INSERT INTO TP_LOG_AUDIT
    (
        ID_SEC_LOG,
        TIP_ACCION,
        NOM_TABLA,
        NOM_CAMPO,
        VAL_ORIGINAL,
        VAL_NUEVO,
        FEC_CREA,
        USU_CREA
      ) VALUES (
        SEQ_LOG_AUDIT.NEXTVAL,
        v_TipoAccion,
        'D',
        'USER_GROUP; SYMB_NAME',
        NULL,
        :NEW.USER_GROUP|| '; ' || :NEW.SYMB_NAME,
        SYSDATE,
        UPPER(v_Usuario)
        );

    ELSIF UPDATING THEN
        v_tipoaccion := 'U';
        v_usuario :=:new.usu_crea;

        IF((:old.USER_GROUP <> :new.USER_GROUP ) 
        OR (:old.USER_GROUP IS NULL AND :new.USER_GROUP IS NOT NULL) 
        OR (:old.USER_GROUP IS NOT NULL AND :new.USER_GROUP IS NULL))
        THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'D',
                'USER_GROUP',
                :old.USER_GROUP,
                :new.USER_GROUP,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.SYMB_NAME <> :new.SYMB_NAME)
        OR (:old.SYMB_NAME IS NULL AND :new.SYMB_NAME IS NOT NULL)
        OR (:old.SYMB_NAME IS NOT NULL AND :new.SYMB_NAME IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'D',
                'SYMB_NAME',
                :old.SYMB_NAME,
                :new.SYMB_NAME,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.IND_ESTADO <> :new.IND_ESTADO)
        OR (:old.IND_ESTADO IS NULL AND :new.IND_ESTADO IS NOT NULL)
        OR (:old.IND_ESTADO IS NOT NULL AND :new.IND_ESTADO IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'D',
                'IND_ESTADO',
                :old.IND_ESTADO,
                :new.IND_ESTADO,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;

    ELSIF DELETING THEN
      v_TipoAccion:='D';
      v_Usuario:=:OLD.USU_CREA;

     INSERT INTO TP_LOG_AUDIT
    (
        ID_SEC_LOG,
        TIP_ACCION,
        NOM_TABLA,
        NOM_CAMPO,
        VAL_ORIGINAL,
        VAL_NUEVO,
        FEC_CREA,
        USU_CREA
      ) VALUES (
      SEQ_LOG_AUDIT.NEXTVAL,
        v_TipoAccion,
        'D',
        'USER_GROUP; SYMB_NAME',
        :OLD.USER_GROUP|| '; ' || :OLD.SYMB_NAME,
        NULL,
        SYSDATE,
        UPPER(v_Usuario)
        );
        END IF;
  END; 
/

CREATE OR REPLACE TRIGGER SIXDES40.TGA_MSGQCF 
    BEFORE INSERT OR UPDATE OR DELETE ON SIXDES40.TP_SIX_MSGQCF 
    FOR EACH ROW 
DECLARE 
  v_TipoAccion VARCHAR2(1);
  v_Usuario   VARCHAR2(30);

  BEGIN
   IF INSERTING THEN

    v_TipoAccion:='I';
    v_Usuario:=:NEW.USU_CREA;

     INSERT INTO TP_LOG_AUDIT
    (
        ID_SEC_LOG,
        TIP_ACCION,
        NOM_TABLA,
        NOM_CAMPO,
        VAL_ORIGINAL,
        VAL_NUEVO,
        FEC_CREA,
        USU_CREA
      ) VALUES (
        SEQ_LOG_AUDIT.NEXTVAL,
        v_TipoAccion,
        'I',
        'SYMB_NAME; PROCESS_TYPE',
        NULL,
        :NEW.SYMB_NAME|| '; ' || :NEW.PROCESS_TYPE,
        SYSDATE,
        UPPER(v_Usuario)
        );

    ELSIF UPDATING THEN
        v_tipoaccion := 'U';
        v_usuario :=:new.usu_crea;

        IF((:old.SYMB_NAME <> :new.SYMB_NAME ) 
        OR (:old.SYMB_NAME IS NULL AND :new.SYMB_NAME IS NOT NULL) 
        OR (:old.SYMB_NAME IS NOT NULL AND :new.SYMB_NAME IS NULL))
        THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'I',
                'SYMB_NAME',
                :old.SYMB_NAME,
                :new.SYMB_NAME,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.PROCESS_TYPE <> :new.PROCESS_TYPE)
        OR (:old.PROCESS_TYPE IS NULL AND :new.PROCESS_TYPE IS NOT NULL)
        OR (:old.PROCESS_TYPE IS NOT NULL AND :new.PROCESS_TYPE IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'I',
                'PROCESS_TYPE',
                :old.PROCESS_TYPE,
                :new.PROCESS_TYPE,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.QUEUE_SEND <> :new.QUEUE_SEND)
        OR (:old.QUEUE_SEND IS NULL AND :new.QUEUE_SEND IS NOT NULL)
        OR (:old.QUEUE_SEND IS NOT NULL AND :new.QUEUE_SEND IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'I',
                'QUEUE_SEND',
                :old.QUEUE_SEND,
                :new.QUEUE_SEND,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.QUEUE_RECV <> :new.QUEUE_RECV)
        OR (:old.QUEUE_RECV IS NULL AND :new.QUEUE_RECV IS NOT NULL)
        OR (:old.QUEUE_RECV IS NOT NULL AND :new.QUEUE_RECV IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'I',
                'QUEUE_RECV',
                :old.QUEUE_RECV,
                :new.QUEUE_RECV,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.QUEUE_TYPE <> :new.QUEUE_TYPE)
        OR (:old.QUEUE_TYPE IS NULL AND :new.QUEUE_TYPE IS NOT NULL)
        OR (:old.QUEUE_TYPE IS NOT NULL AND :new.QUEUE_TYPE IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'I',
                'QUEUE_TYPE',
                :old.QUEUE_TYPE,
                :new.QUEUE_TYPE,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.MULT_UNIQ <> :new.MULT_UNIQ)
        OR (:old.MULT_UNIQ IS NULL AND :new.MULT_UNIQ IS NOT NULL)
        OR (:old.MULT_UNIQ IS NOT NULL AND :new.MULT_UNIQ IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'I',
                'MULT_UNIQ',
                :old.MULT_UNIQ,
                :new.MULT_UNIQ,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.IND_ESTADO <> :new.IND_ESTADO)
        OR (:old.IND_ESTADO IS NULL AND :new.IND_ESTADO IS NOT NULL)
        OR (:old.IND_ESTADO IS NOT NULL AND :new.IND_ESTADO IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'I',
                'IND_ESTADO',
                :old.IND_ESTADO,
                :new.IND_ESTADO,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;

    ELSIF DELETING THEN
      v_TipoAccion:='D';
      v_Usuario:=:OLD.USU_CREA;

     INSERT INTO TP_LOG_AUDIT
    (
        ID_SEC_LOG,
        TIP_ACCION,
        NOM_TABLA,
        NOM_CAMPO,
        VAL_ORIGINAL,
        VAL_NUEVO,
        FEC_CREA,
        USU_CREA
      ) VALUES (
      SEQ_LOG_AUDIT.NEXTVAL,
        v_TipoAccion,
        'I',
        'SYMB_NAME; PROCESS_TYPE',
        :OLD.SYMB_NAME|| '; ' || :OLD.PROCESS_TYPE,
        NULL,
        SYSDATE,
        UPPER(v_Usuario)
        );
        END IF;
  END; 
/

CREATE OR REPLACE TRIGGER SIXDES40.TGA_PROCESS 
    BEFORE INSERT OR UPDATE OR DELETE ON SIXDES40.TP_SIX_PROCESS 
    FOR EACH ROW 
DECLARE 
  v_TipoAccion VARCHAR2(1);
  v_Usuario   VARCHAR2(30);

  BEGIN
   IF INSERTING THEN

    v_TipoAccion:='I';
    v_Usuario:=:NEW.USU_CREA;

     INSERT INTO TP_LOG_AUDIT
    (
        ID_SEC_LOG,
        TIP_ACCION,
        NOM_TABLA,
        NOM_CAMPO,
        VAL_ORIGINAL,
        VAL_NUEVO,
        FEC_CREA,
        USU_CREA
      ) VALUES (
        SEQ_LOG_AUDIT.NEXTVAL,
        v_TipoAccion,
        'E',
        'SYMB_NAME',
        NULL,
        :NEW.SYMB_NAME,
        SYSDATE,
        UPPER(v_Usuario)
        );

    ELSIF UPDATING THEN
        v_tipoaccion := 'U';
        v_usuario :=:new.usu_crea;

        IF((:old.SYMB_NAME <> :new.SYMB_NAME ) 
        OR (:old.SYMB_NAME IS NULL AND :new.SYMB_NAME IS NOT NULL) 
        OR (:old.SYMB_NAME IS NOT NULL AND :new.SYMB_NAME IS NULL))
        THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'SYMB_NAME',
                :old.SYMB_NAME,
                :new.SYMB_NAME,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.PROG_DISK <> :new.PROG_DISK)
        OR (:old.PROG_DISK IS NULL AND :new.PROG_DISK IS NOT NULL)
        OR (:old.PROG_DISK IS NOT NULL AND :new.PROG_DISK IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'PROG_DISK',
                :old.PROG_DISK,
                :new.PROG_DISK,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.PROCESS_TYPE <> :new.PROCESS_TYPE)
        OR (:old.PROCESS_TYPE IS NULL AND :new.PROCESS_TYPE IS NOT NULL)
        OR (:old.PROCESS_TYPE IS NOT NULL AND :new.PROCESS_TYPE IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'PROCESS_TYPE',
                :old.PROCESS_TYPE,
                :new.PROCESS_TYPE,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.SERVER_TYPE <> :new.SERVER_TYPE)
        OR (:old.SERVER_TYPE IS NULL AND :new.SERVER_TYPE IS NOT NULL)
        OR (:old.SERVER_TYPE IS NOT NULL AND :new.SERVER_TYPE IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'SERVER_TYPE',
                :old.SERVER_TYPE,
                :new.SERVER_TYPE,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.REMOTE_HOST <> :new.REMOTE_HOST)
        OR (:old.REMOTE_HOST IS NULL AND :new.REMOTE_HOST IS NOT NULL)
        OR (:old.REMOTE_HOST IS NOT NULL AND :new.REMOTE_HOST IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'REMOTE_HOST',
                :old.REMOTE_HOST,
                :new.REMOTE_HOST,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.SERVICE_PORT <> :new.SERVICE_PORT)
        OR (:old.SERVICE_PORT IS NULL AND :new.SERVICE_PORT IS NOT NULL)
        OR (:old.SERVICE_PORT IS NOT NULL AND :new.SERVICE_PORT IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'SERVICE_PORT',
                :old.SERVICE_PORT,
                :new.SERVICE_PORT,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.GATE_PROT <> :new.GATE_PROT)
        OR (:old.GATE_PROT IS NULL AND :new.GATE_PROT IS NOT NULL)
        OR (:old.GATE_PROT IS NOT NULL AND :new.GATE_PROT IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'GATE_PROT',
                :old.GATE_PROT,
                :new.GATE_PROT,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.TIME_TIMEOUT <> :new.TIME_TIMEOUT)
        OR (:old.TIME_TIMEOUT IS NULL AND :new.TIME_TIMEOUT IS NOT NULL)
        OR (:old.TIME_TIMEOUT IS NOT NULL AND :new.TIME_TIMEOUT IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'TIME_TIMEOUT',
                :old.TIME_TIMEOUT,
                :new.TIME_TIMEOUT,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.TIP_PROFILE <> :new.TIP_PROFILE)
        OR (:old.TIP_PROFILE IS NULL AND :new.TIP_PROFILE IS NOT NULL)
        OR (:old.TIP_PROFILE IS NOT NULL AND :new.TIP_PROFILE IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'TIP_PROFILE',
                :old.TIP_PROFILE,
                :new.TIP_PROFILE,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.DYNA_STAT <> :new.DYNA_STAT)
        OR (:old.DYNA_STAT IS NULL AND :new.DYNA_STAT IS NOT NULL)
        OR (:old.DYNA_STAT IS NOT NULL AND :new.DYNA_STAT IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'DYNA_STAT',
                :old.DYNA_STAT,
                :new.DYNA_STAT,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.MULT_UNIQ <> :new.MULT_UNIQ)
        OR (:old.MULT_UNIQ IS NULL AND :new.MULT_UNIQ IS NOT NULL)
        OR (:old.MULT_UNIQ IS NOT NULL AND :new.MULT_UNIQ IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'MULT_UNIQ',
                :old.MULT_UNIQ,
                :new.MULT_UNIQ,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.LOAD_START <> :new.LOAD_START)
        OR (:old.LOAD_START IS NULL AND :new.LOAD_START IS NOT NULL)
        OR (:old.LOAD_START IS NOT NULL AND :new.LOAD_START IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'LOAD_START',
                :old.LOAD_START,
                :new.LOAD_START,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.AUTO_LOAD_AFTER_DOWN <> :new.AUTO_LOAD_AFTER_DOWN)
        OR (:old.AUTO_LOAD_AFTER_DOWN IS NULL AND :new.AUTO_LOAD_AFTER_DOWN IS NOT NULL)
        OR (:old.AUTO_LOAD_AFTER_DOWN IS NOT NULL AND :new.AUTO_LOAD_AFTER_DOWN IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'AUTO_LOAD_AFTER_DOWN',
                :old.AUTO_LOAD_AFTER_DOWN,
                :new.AUTO_LOAD_AFTER_DOWN,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.CLEAN_QUEUE_DOWN <> :new.CLEAN_QUEUE_DOWN)
        OR (:old.CLEAN_QUEUE_DOWN IS NULL AND :new.CLEAN_QUEUE_DOWN IS NOT NULL)
        OR (:old.CLEAN_QUEUE_DOWN IS NOT NULL AND :new.CLEAN_QUEUE_DOWN IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'CLEAN_QUEUE_DOWN',
                :old.CLEAN_QUEUE_DOWN,
                :new.CLEAN_QUEUE_DOWN,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.EMISOR_RECEPTOR <> :new.EMISOR_RECEPTOR)
        OR (:old.EMISOR_RECEPTOR IS NULL AND :new.EMISOR_RECEPTOR IS NOT NULL)
        OR (:old.EMISOR_RECEPTOR IS NOT NULL AND :new.EMISOR_RECEPTOR IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'EMISOR_RECEPTOR',
                :old.EMISOR_RECEPTOR,
                :new.EMISOR_RECEPTOR,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.DEPEN_INDEPENT <> :new.DEPEN_INDEPENT)
        OR (:old.DEPEN_INDEPENT IS NULL AND :new.DEPEN_INDEPENT IS NOT NULL)
        OR (:old.DEPEN_INDEPENT IS NOT NULL AND :new.DEPEN_INDEPENT IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'DEPEN_INDEPENT',
                :old.DEPEN_INDEPENT,
                :new.DEPEN_INDEPENT,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.NOTIF_TIMER <> :new.NOTIF_TIMER)
        OR (:old.NOTIF_TIMER IS NULL AND :new.NOTIF_TIMER IS NOT NULL)
        OR (:old.NOTIF_TIMER IS NOT NULL AND :new.NOTIF_TIMER IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'NOTIF_TIMER',
                :old.NOTIF_TIMER,
                :new.NOTIF_TIMER,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.MAX_RETRI <> :new.MAX_RETRI)
        OR (:old.MAX_RETRI IS NULL AND :new.MAX_RETRI IS NOT NULL)
        OR (:old.MAX_RETRI IS NOT NULL AND :new.MAX_RETRI IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'MAX_RETRI',
                :old.MAX_RETRI,
                :new.MAX_RETRI,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.SIGNAL_SEND <> :new.SIGNAL_SEND)
        OR (:old.SIGNAL_SEND IS NULL AND :new.SIGNAL_SEND IS NOT NULL)
        OR (:old.SIGNAL_SEND IS NOT NULL AND :new.SIGNAL_SEND IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'SIGNAL_SEND',
                :old.SIGNAL_SEND,
                :new.SIGNAL_SEND,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.IND_INTERVAL <> :new.IND_INTERVAL)
        OR (:old.IND_INTERVAL IS NULL AND :new.IND_INTERVAL IS NOT NULL)
        OR (:old.IND_INTERVAL IS NOT NULL AND :new.IND_INTERVAL IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'IND_INTERVAL',
                :old.IND_INTERVAL,
                :new.IND_INTERVAL,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.PARAMS <> :new.PARAMS)
        OR (:old.PARAMS IS NULL AND :new.PARAMS IS NOT NULL)
        OR (:old.PARAMS IS NOT NULL AND :new.PARAMS IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'PARAMS',
                :old.PARAMS,
                :new.PARAMS,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.IND_ESTADO <> :new.IND_ESTADO)
        OR (:old.IND_ESTADO IS NULL AND :new.IND_ESTADO IS NOT NULL)
        OR (:old.IND_ESTADO IS NOT NULL AND :new.IND_ESTADO IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'IND_ESTADO',
                :old.IND_ESTADO,
                :new.IND_ESTADO,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.DESCRIPTION <> :new.DESCRIPTION)
        OR (:old.DESCRIPTION IS NULL AND :new.DESCRIPTION IS NOT NULL)
        OR (:old.DESCRIPTION IS NOT NULL AND :new.DESCRIPTION IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'E',
                'DESCRIPTION',
                :old.DESCRIPTION,
                :new.DESCRIPTION,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;

    ELSIF DELETING THEN
      v_TipoAccion:='D';
      v_Usuario:=:OLD.USU_CREA;

     INSERT INTO TP_LOG_AUDIT
    (
        ID_SEC_LOG,
        TIP_ACCION,
        NOM_TABLA,
        NOM_CAMPO,
        VAL_ORIGINAL,
        VAL_NUEVO,
        FEC_CREA,
        USU_CREA
      ) VALUES (
      SEQ_LOG_AUDIT.NEXTVAL,
        v_TipoAccion,
        'E',
        'SYMB_NAME',
        :OLD.SYMB_NAME,
        NULL,
        SYSDATE,
        UPPER(v_Usuario)
        );
        END IF;
  END; 
/

CREATE OR REPLACE TRIGGER SIXDES40.TGA_USRTCL 
    BEFORE INSERT OR UPDATE OR DELETE ON SIXDES40.TP_SIX_USRTCL 
    FOR EACH ROW 
DECLARE 
  v_TipoAccion VARCHAR2(1);
  v_Usuario   VARCHAR2(30);

  BEGIN
   IF INSERTING THEN

    v_TipoAccion:='I';
    v_Usuario:=:NEW.USU_CREA;

     INSERT INTO TP_LOG_AUDIT
    (
        ID_SEC_LOG,
        TIP_ACCION,
        NOM_TABLA,
        NOM_CAMPO,
        VAL_ORIGINAL,
        VAL_NUEVO,
        FEC_CREA,
        USU_CREA
      ) VALUES (
        SEQ_LOG_AUDIT.NEXTVAL,
        v_TipoAccion,
        'F',
        'HOST_NAME; USER_NAME',
        NULL,
        :NEW.HOST_NAME|| '; ' || :NEW.USER_NAME,
        SYSDATE,
        UPPER(v_Usuario)
        );

    ELSIF UPDATING THEN
        v_tipoaccion := 'U';
        v_usuario :=:new.usu_crea;

        IF((:old.HOST_NAME <> :new.HOST_NAME ) 
        OR (:old.HOST_NAME IS NULL AND :new.HOST_NAME IS NOT NULL) 
        OR (:old.HOST_NAME IS NOT NULL AND :new.HOST_NAME IS NULL))
        THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'HOST_NAME',
                :old.HOST_NAME,
                :new.HOST_NAME,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.USER_NAME <> :new.USER_NAME)
        OR (:old.USER_NAME IS NULL AND :new.USER_NAME IS NOT NULL)
        OR (:old.USER_NAME IS NOT NULL AND :new.USER_NAME IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'USER_NAME',
                :old.USER_NAME,
                :new.USER_NAME,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.USER_PWD <> :new.USER_PWD)
        OR (:old.USER_PWD IS NULL AND :new.USER_PWD IS NOT NULL)
        OR (:old.USER_PWD IS NOT NULL AND :new.USER_PWD IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'USER_PWD',
                :old.USER_PWD,
                :new.USER_PWD,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.USER_TYPE <> :new.USER_TYPE)
        OR (:old.USER_TYPE IS NULL AND :new.USER_TYPE IS NOT NULL)
        OR (:old.USER_TYPE IS NOT NULL AND :new.USER_TYPE IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'USER_TYPE',
                :old.USER_TYPE,
                :new.USER_TYPE,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.USER_GROUP <> :new.USER_GROUP)
        OR (:old.USER_GROUP IS NULL AND :new.USER_GROUP IS NOT NULL)
        OR (:old.USER_GROUP IS NOT NULL AND :new.USER_GROUP IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'USER_GROUP',
                :old.USER_GROUP,
                :new.USER_GROUP,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.PKZIP_SUPPORT <> :new.PKZIP_SUPPORT)
        OR (:old.PKZIP_SUPPORT IS NULL AND :new.PKZIP_SUPPORT IS NOT NULL)
        OR (:old.PKZIP_SUPPORT IS NOT NULL AND :new.PKZIP_SUPPORT IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'PKZIP_SUPPORT',
                :old.PKZIP_SUPPORT,
                :new.PKZIP_SUPPORT,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.COMPANY_NAME <> :new.COMPANY_NAME)
        OR (:old.COMPANY_NAME IS NULL AND :new.COMPANY_NAME IS NOT NULL)
        OR (:old.COMPANY_NAME IS NOT NULL AND :new.COMPANY_NAME IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'COMPANY_NAME',
                :old.COMPANY_NAME,
                :new.COMPANY_NAME,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.RESPONSABLE_NAME <> :new.RESPONSABLE_NAME)
        OR (:old.RESPONSABLE_NAME IS NULL AND :new.RESPONSABLE_NAME IS NOT NULL)
        OR (:old.RESPONSABLE_NAME IS NOT NULL AND :new.RESPONSABLE_NAME IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'RESPONSABLE_NAME',
                :old.RESPONSABLE_NAME,
                :new.RESPONSABLE_NAME,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.LONG_NAME <> :new.LONG_NAME)
        OR (:old.LONG_NAME IS NULL AND :new.LONG_NAME IS NOT NULL)
        OR (:old.LONG_NAME IS NOT NULL AND :new.LONG_NAME IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'LONG_NAME',
                :old.LONG_NAME,
                :new.LONG_NAME,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.DOC_TYPE <> :new.DOC_TYPE)
        OR (:old.DOC_TYPE IS NULL AND :new.DOC_TYPE IS NOT NULL)
        OR (:old.DOC_TYPE IS NOT NULL AND :new.DOC_TYPE IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'DOC_TYPE',
                :old.DOC_TYPE,
                :new.DOC_TYPE,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.DOC_NUMBER <> :new.DOC_NUMBER)
        OR (:old.DOC_NUMBER IS NULL AND :new.DOC_NUMBER IS NOT NULL)
        OR (:old.DOC_NUMBER IS NOT NULL AND :new.DOC_NUMBER IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'DOC_NUMBER',
                :old.DOC_NUMBER,
                :new.DOC_NUMBER,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.TELEPHONE <> :new.TELEPHONE)
        OR (:old.TELEPHONE IS NULL AND :new.TELEPHONE IS NOT NULL)
        OR (:old.TELEPHONE IS NOT NULL AND :new.TELEPHONE IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'TELEPHONE',
                :old.TELEPHONE,
                :new.TELEPHONE,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.FAXIMILE <> :new.FAXIMILE)
        OR (:old.FAXIMILE IS NULL AND :new.FAXIMILE IS NOT NULL)
        OR (:old.FAXIMILE IS NOT NULL AND :new.FAXIMILE IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'FAXIMILE',
                :old.FAXIMILE,
                :new.FAXIMILE,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.USER_BLOCKED <> :new.USER_BLOCKED)
        OR (:old.USER_BLOCKED IS NULL AND :new.USER_BLOCKED IS NOT NULL)
        OR (:old.USER_BLOCKED IS NOT NULL AND :new.USER_BLOCKED IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'USER_BLOCKED',
                :old.USER_BLOCKED,
                :new.USER_BLOCKED,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.TIP_FORMAT <> :new.TIP_FORMAT)
        OR (:old.TIP_FORMAT IS NULL AND :new.TIP_FORMAT IS NOT NULL)
        OR (:old.TIP_FORMAT IS NOT NULL AND :new.TIP_FORMAT IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'TIP_FORMAT',
                :old.TIP_FORMAT,
                :new.TIP_FORMAT,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.MAX_LOGON_PER_DAY <> :new.MAX_LOGON_PER_DAY)
        OR (:old.MAX_LOGON_PER_DAY IS NULL AND :new.MAX_LOGON_PER_DAY IS NOT NULL)
        OR (:old.MAX_LOGON_PER_DAY IS NOT NULL AND :new.MAX_LOGON_PER_DAY IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'MAX_LOGON_PER_DAY',
                :old.MAX_LOGON_PER_DAY,
                :new.MAX_LOGON_PER_DAY,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.MAX_IDDLE_TIME <> :new.MAX_IDDLE_TIME)
        OR (:old.MAX_IDDLE_TIME IS NULL AND :new.MAX_IDDLE_TIME IS NOT NULL)
        OR (:old.MAX_IDDLE_TIME IS NOT NULL AND :new.MAX_IDDLE_TIME IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'MAX_IDDLE_TIME',
                :old.MAX_IDDLE_TIME,
                :new.MAX_IDDLE_TIME,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.LAST_DATE_CONNECT <> :new.LAST_DATE_CONNECT)
        OR (:old.LAST_DATE_CONNECT IS NULL AND :new.LAST_DATE_CONNECT IS NOT NULL)
        OR (:old.LAST_DATE_CONNECT IS NOT NULL AND :new.LAST_DATE_CONNECT IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'LAST_DATE_CONNECT',
                :old.LAST_DATE_CONNECT,
                :new.LAST_DATE_CONNECT,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.LAST_TIME_CONNECT <> :new.LAST_TIME_CONNECT)
        OR (:old.LAST_TIME_CONNECT IS NULL AND :new.LAST_TIME_CONNECT IS NOT NULL)
        OR (:old.LAST_TIME_CONNECT IS NOT NULL AND :new.LAST_TIME_CONNECT IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'LAST_TIME_CONNECT',
                :old.LAST_TIME_CONNECT,
                :new.LAST_TIME_CONNECT,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.LAST_DURA_CONNECT <> :new.LAST_DURA_CONNECT)
        OR (:old.LAST_DURA_CONNECT IS NULL AND :new.LAST_DURA_CONNECT IS NOT NULL)
        OR (:old.LAST_DURA_CONNECT IS NOT NULL AND :new.LAST_DURA_CONNECT IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'LAST_DURA_CONNECT',
                :old.LAST_DURA_CONNECT,
                :new.LAST_DURA_CONNECT,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.LAST_PORT_CONNECT <> :new.LAST_PORT_CONNECT)
        OR (:old.LAST_PORT_CONNECT IS NULL AND :new.LAST_PORT_CONNECT IS NOT NULL)
        OR (:old.LAST_PORT_CONNECT IS NOT NULL AND :new.LAST_PORT_CONNECT IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'LAST_PORT_CONNECT',
                :old.LAST_PORT_CONNECT,
                :new.LAST_PORT_CONNECT,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.CHG_PWD_DATE <> :new.CHG_PWD_DATE)
        OR (:old.CHG_PWD_DATE IS NULL AND :new.CHG_PWD_DATE IS NOT NULL)
        OR (:old.CHG_PWD_DATE IS NOT NULL AND :new.CHG_PWD_DATE IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'CHG_PWD_DATE',
                :old.CHG_PWD_DATE,
                :new.CHG_PWD_DATE,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.CHG_PWD_TIME <> :new.CHG_PWD_TIME)
        OR (:old.CHG_PWD_TIME IS NULL AND :new.CHG_PWD_TIME IS NOT NULL)
        OR (:old.CHG_PWD_TIME IS NOT NULL AND :new.CHG_PWD_TIME IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'CHG_PWD_TIME',
                :old.CHG_PWD_TIME,
                :new.CHG_PWD_TIME,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.BAD_PWD_IN_DAY <> :new.BAD_PWD_IN_DAY)
        OR (:old.BAD_PWD_IN_DAY IS NULL AND :new.BAD_PWD_IN_DAY IS NOT NULL)
        OR (:old.BAD_PWD_IN_DAY IS NOT NULL AND :new.BAD_PWD_IN_DAY IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'BAD_PWD_IN_DAY',
                :old.BAD_PWD_IN_DAY,
                :new.BAD_PWD_IN_DAY,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.BAD_PWD_DAILY <> :new.BAD_PWD_DAILY)
        OR (:old.BAD_PWD_DAILY IS NULL AND :new.BAD_PWD_DAILY IS NOT NULL)
        OR (:old.BAD_PWD_DAILY IS NOT NULL AND :new.BAD_PWD_DAILY IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'BAD_PWD_DAILY',
                :old.BAD_PWD_DAILY,
                :new.BAD_PWD_DAILY,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.FTP_SERVER_NAME <> :new.FTP_SERVER_NAME)
        OR (:old.FTP_SERVER_NAME IS NULL AND :new.FTP_SERVER_NAME IS NOT NULL)
        OR (:old.FTP_SERVER_NAME IS NOT NULL AND :new.FTP_SERVER_NAME IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'FTP_SERVER_NAME',
                :old.FTP_SERVER_NAME,
                :new.FTP_SERVER_NAME,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.SOFTWARE_UPD <> :new.SOFTWARE_UPD)
        OR (:old.SOFTWARE_UPD IS NULL AND :new.SOFTWARE_UPD IS NOT NULL)
        OR (:old.SOFTWARE_UPD IS NOT NULL AND :new.SOFTWARE_UPD IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'SOFTWARE_UPD',
                :old.SOFTWARE_UPD,
                :new.SOFTWARE_UPD,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.DISTRIBU_UPD <> :new.DISTRIBU_UPD)
        OR (:old.DISTRIBU_UPD IS NULL AND :new.DISTRIBU_UPD IS NOT NULL)
        OR (:old.DISTRIBU_UPD IS NOT NULL AND :new.DISTRIBU_UPD IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'DISTRIBU_UPD',
                :old.DISTRIBU_UPD,
                :new.DISTRIBU_UPD,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.CONN_TYPE <> :new.CONN_TYPE)
        OR (:old.CONN_TYPE IS NULL AND :new.CONN_TYPE IS NOT NULL)
        OR (:old.CONN_TYPE IS NOT NULL AND :new.CONN_TYPE IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'CONN_TYPE',
                :old.CONN_TYPE,
                :new.CONN_TYPE,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.AUTH_METHOD <> :new.AUTH_METHOD)
        OR (:old.AUTH_METHOD IS NULL AND :new.AUTH_METHOD IS NOT NULL)
        OR (:old.AUTH_METHOD IS NOT NULL AND :new.AUTH_METHOD IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'AUTH_METHOD',
                :old.AUTH_METHOD,
                :new.AUTH_METHOD,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.SECURITY_LEVEL <> :new.SECURITY_LEVEL)
        OR (:old.SECURITY_LEVEL IS NULL AND :new.SECURITY_LEVEL IS NOT NULL)
        OR (:old.SECURITY_LEVEL IS NOT NULL AND :new.SECURITY_LEVEL IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'SECURITY_LEVEL',
                :old.SECURITY_LEVEL,
                :new.SECURITY_LEVEL,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.CRYPT_FLAG <> :new.CRYPT_FLAG)
        OR (:old.CRYPT_FLAG IS NULL AND :new.CRYPT_FLAG IS NOT NULL)
        OR (:old.CRYPT_FLAG IS NOT NULL AND :new.CRYPT_FLAG IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'CRYPT_FLAG',
                :old.CRYPT_FLAG,
                :new.CRYPT_FLAG,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.CLIENT_ID <> :new.CLIENT_ID)
        OR (:old.CLIENT_ID IS NULL AND :new.CLIENT_ID IS NOT NULL)
        OR (:old.CLIENT_ID IS NOT NULL AND :new.CLIENT_ID IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'CLIENT_ID',
                :old.CLIENT_ID,
                :new.CLIENT_ID,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.IND_ESTADO <> :new.IND_ESTADO)
        OR (:old.IND_ESTADO IS NULL AND :new.IND_ESTADO IS NOT NULL)
        OR (:old.IND_ESTADO IS NOT NULL AND :new.IND_ESTADO IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'IND_ESTADO',
                :old.IND_ESTADO,
                :new.IND_ESTADO,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;
        IF ((:old.COMMENTS <> :new.COMMENTS)
        OR (:old.COMMENTS IS NULL AND :new.COMMENTS IS NOT NULL)
        OR (:old.COMMENTS IS NOT NULL AND :new.COMMENTS IS NULL))
            THEN
            INSERT INTO tp_log_audit (
                id_sec_log,
                tip_accion,
                nom_tabla,
                nom_campo,
                val_original,
                val_nuevo,
                fec_crea,
                usu_crea
            ) VALUES (
                seq_log_audit.NEXTVAL,
                v_tipoaccion,
                'F',
                'COMMENTS',
                :old.COMMENTS,
                :new.COMMENTS,
                SYSDATE,
                upper(v_usuario)
            );
        END IF;

    ELSIF DELETING THEN
      v_TipoAccion:='D';
      v_Usuario:=:OLD.USU_CREA;

     INSERT INTO TP_LOG_AUDIT
    (
        ID_SEC_LOG,
        TIP_ACCION,
        NOM_TABLA,
        NOM_CAMPO,
        VAL_ORIGINAL,
        VAL_NUEVO,
        FEC_CREA,
        USU_CREA
      ) VALUES (
      SEQ_LOG_AUDIT.NEXTVAL,
        v_TipoAccion,
        'F',
        'HOST_NAME; USER_NAME',
        :OLD.HOST_NAME|| '; ' || :OLD.USER_NAME,
        NULL,
        SYSDATE,
        UPPER(v_Usuario)
        );
        END IF;
  END; 
/

CREATE OR REPLACE PACKAGE BODY sixdes40.pkg_dm_json AS

  --/* ******************************************************************** */
  --/*                        Source Identification                         */
  --/*               Copyright (c) 2017 by Novatronic S.A.C.                */
  --/*               Not for distribution internal use only                 */
  --/* ******************************************************************** */
  --/*DESCRIPCION:  Funciones que retornan un valor json con su tag,        */
  --/               considerando si es nulo o no                            */
  --/*FECHA:       15/03/2017                                               */
  --/*AUTOR:        FF                                                      */
  --/* ******************************************************************** */

    FUNCTION fun_keyvalue (
        jtag     IN       VARCHAR2,
        jvalue   IN       NUMBER
    ) RETURN VARCHAR2 AS
    BEGIN
        RETURN '"'
               || jtag
               || '":'
               || coalesce(TO_CHAR(jvalue), 'null');
    END fun_keyvalue;

    FUNCTION fun_keyvalue (
        jtag     IN       VARCHAR2,
        jvalue   IN       VARCHAR2
    ) RETURN VARCHAR2 AS
    BEGIN
        IF ( jvalue IS NULL ) THEN
            RETURN '"'
                   || jtag
                   || '":null';
        ELSE
            RETURN '"'
                   || jtag
                   || '":"'
                   || jvalue
                   || '"';
        END IF;
    END fun_keyvalue;
  
  --/* ******************************************************************** */
  --/*                        Source Identification                         */
  --/*               Copyright (c) 2018 by Novatronic S.A.C.                */
  --/*               Not for distribution internal use only                 */
  --/* ******************************************************************** */
  --/*DESCRIPCION:  Limpiar espacios en blanco o tabulaciones de un JSON    */
  --/*FECHA:        16/01/2018                                              */
  --/*AUTOR:        FF                                                      */
  --/* ******************************************************************** */

    FUNCTION fun_trim (
        pf_cade IN   VARCHAR2
    ) RETURN VARCHAR2 AS

        len_cade   NUMBER;
        pos        NUMBER;
        aux_l      NUMBER;
        aux_r      NUMBER;
        new_json   VARCHAR2(5000); /*el nuevo JSON que se armara con los espacios limpiados*/
        tmp_line   VARCHAR2(1000);
    BEGIN
        len_cade := length(pf_cade);
        pos := 1;
        new_json := '';
        WHILE true LOOP
            aux_l := instr(pf_cade, '"', pos, 1);
            IF ( aux_l = 0 ) THEN
                IF ( pos <= length(pf_cade) ) THEN
                    new_json := new_json
                                || replace(replace(replace(replace(substr(pf_cade, pos), chr(10), ''), chr(13), ''), chr(9), ''),
                                ' ', '');
                END IF;

                EXIT;
            END IF;

            len_cade := aux_l - pos;
            tmp_line := substr(pf_cade, pos, len_cade);
            pos := aux_l;
            tmp_line := replace(replace(replace(replace(tmp_line, chr(10), ''), chr(13), ''), chr(9), ''), ' ', '');

            new_json := new_json || tmp_line;
            aux_l := instr(pf_cade, '"', pos + 1, 1);
            len_cade := aux_l - pos;
            tmp_line := substr(pf_cade, pos, len_cade + 1);
            new_json := new_json || tmp_line;
            pos := aux_l + 1;
        END LOOP;

        RETURN new_json;
    END fun_trim;
  
  --/* ******************************************************************** */
  --/*                        Source Identification                         */
  --/*               Copyright (c) 2017 by Novatronic S.A.C.                */
  --/*               Not for distribution internal use only                 */
  --/* ******************************************************************** */
  --/*DESCRIPCION:  Funcion que retorna el valor en string de un campo json */
  --/*FECHA:        28/12/2017                                              */
  --/*AUTOR:        FF                                                      */
  --/* ******************************************************************** */
  --NOTA 1: Las comillas finales del nombre de llave debe estar inmediatamente despus que el nombre de llave
  --ejemplo:  "name": "mvera" (OK)      "name   ":"mvera" (ERROR) 
  --NOTA 2: Si se tuviera un objeto json dentro del json de entrada, se obtendra toda su data correctamente
  --        siempre y cuando este objeto no contenga otro objeto ni cadenas con caracter '}' 

    FUNCTION fun_getvalue (
        cad     IN      VARCHAR2,
        llave   IN      VARCHAR2
    ) RETURN VARCHAR2 AS

        tagg        VARCHAR2(40);
        pos_izq     NUMBER;
        pos_der     NUMBER;
        aux         VARCHAR2(2);
        pos_llave   NUMBER;
        len_llave   NUMBER;
    BEGIN
        pos_llave := 1;
        len_llave := length(llave);
        IF cad IS NULL THEN
            RETURN NULL;
        END IF;
        LOOP
            pos_llave := instr(cad, llave, pos_llave + 1, 1);
            tagg := substr(cad, pos_llave - 1, len_llave + 2);
    /*si no se encuentra la llave retornar null*/
            IF ( pos_llave = 0 ) THEN
                RETURN NULL;
            END IF;
            EXIT WHEN tagg = '"'
                             || llave
                             || '"'; --se buscara hasta encontrar la llave exacta (o retorna null si no lo encuentra)
        END LOOP;

        pos_izq := pos_llave + len_llave + 1 + 1; -- primer caracter del campo valor (siguiente a la llave, su comilla a la derecha, y los dos punto) 
        aux := substr(cad, pos_izq, 1);
        IF aux = '"' THEN
            pos_der := instr(cad, '"', pos_izq + 1, 1) - 1;
            pos_izq := pos_izq + 1;
        ELSIF aux = '{' THEN
            pos_der := instr(cad, '}', pos_izq + 1, 1);
        ELSE
            pos_der := instr(cad, ',', pos_izq, 1);
            IF ( pos_der = 0 ) THEN
                pos_der := instr(cad, '}', pos_izq, 1);
            END IF;

            pos_der := pos_der - 1;
        END IF;

        RETURN substr(cad, pos_izq, pos_der - pos_izq + 1);
    END fun_getvalue;

END pkg_dm_json;
/

CREATE OR REPLACE PACKAGE BODY sixdes40.pkg_six_cfgtcl AS

    PROCEDURE sps_six_cfgtcl_cursor (
        wbufferin     IN            VARCHAR2,
        wcursor       OUT           gen_cur,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
        v_state   VARCHAR2(20);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        v_state := pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado');
        IF v_state = 'ALL' THEN
            v_state := '%';
        END IF;
        OPEN wcursor FOR SELECT
                             modulo,
                             nombre_parametro,
                             descripcion,
                             tipo_dato,
                             valor_real,
                             valor_entero,
                             valor_fecha,
                             valor_cadena,
                             ind_estado,
                             mac
                         FROM
                             tp_six_cfgtcl
                         WHERE
                             ind_estado LIKE v_state;

        werror_num := sqlcode;
        werror_desc := sqlerrm;
    EXCEPTION
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_cfgtcl_cursor;
	--

    PROCEDURE spd_six_cfgtcl (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        DELETE FROM tp_six_cfgtcl
        WHERE
            modulo = pkg_dm_json.fun_getvalue(wbuffer, 'modulo')
            AND nombre_parametro = pkg_dm_json.fun_getvalue(wbuffer, 'nombre_parametro');

        werror_num := 0;
        IF SQL%found THEN -- borrado exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha borrado ningun registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spd_six_cfgtcl;
	--

    PROCEDURE spu_six_cfgtcl (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        UPDATE tp_six_cfgtcl
        SET
            descripcion = pkg_dm_json.fun_getvalue(wbuffer, 'descripcion'),
            tipo_dato = pkg_dm_json.fun_getvalue(wbuffer, 'tipo_dato'),
            valor_real = to_number(pkg_dm_json.fun_getvalue(wbuffer, 'valor_real'), '9999.99'),
            valor_entero = to_number(pkg_dm_json.fun_getvalue(wbuffer, 'valor_entero')),
            valor_fecha = TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'valor_fecha'), 'YY/MM/DD'),
            valor_cadena = pkg_dm_json.fun_getvalue(wbuffer, 'valor_cadena'),
            ind_estado = pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado'),
            fec_actu = TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_actu'), 'YY/MM/DD'),
            usu_actu = coalesce(pkg_dm_json.fun_getvalue(wbuffer, 'usu_actu'), usu_actu)
        WHERE
            modulo = pkg_dm_json.fun_getvalue(wbuffer, 'modulo')
            AND nombre_parametro = pkg_dm_json.fun_getvalue(wbuffer, 'nombre_parametro');

        werror_num := 0;
        IF SQL%found THEN -- Update exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha actualizado ningun registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spu_six_cfgtcl;
	--

    PROCEDURE spi_six_cfgtcl (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        INSERT INTO tp_six_cfgtcl (
            modulo,
            nombre_parametro,
            descripcion,
            tipo_dato,
            valor_real,
            valor_entero,
            valor_fecha,
            valor_cadena,
            ind_estado,
            fec_crea,
            usu_crea,
            fec_actu,
            usu_actu,
            mac
        ) VALUES (
            pkg_dm_json.fun_getvalue(wbuffer, 'modulo'),
            pkg_dm_json.fun_getvalue(wbuffer, 'nombre_parametro'),
            pkg_dm_json.fun_getvalue(wbuffer, 'descripcion'),
            pkg_dm_json.fun_getvalue(wbuffer, 'tipo_dato'),
            to_number(pkg_dm_json.fun_getvalue(wbuffer, 'valor_real'), '9999.99'),
            to_number(pkg_dm_json.fun_getvalue(wbuffer, 'valor_entero')),
            TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'valor_fecha'), 'YY/MM/DD'),
            pkg_dm_json.fun_getvalue(wbuffer, 'valor_cadena'),
            pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado'),
            TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_crea'), 'YY/MM/DD'),
            pkg_dm_json.fun_getvalue(wbuffer, 'usu_crea'),
            TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_actu'), 'YY/MM/DD'),
            pkg_dm_json.fun_getvalue(wbuffer, 'usu_actu'),
            pkg_dm_json.fun_getvalue(wbuffer, 'mac')
        );

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spi_six_cfgtcl;
	--

    PROCEDURE sps_six_cfgtcl (
        wbufferin     IN            VARCHAR2,
        wbufferout    OUT           VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        SELECT
            '{'
            || pkg_dm_json.fun_keyvalue('descripcion', descripcion)
            || ','
            || pkg_dm_json.fun_keyvalue('tipo_dato', tipo_dato)
            || ','
            || pkg_dm_json.fun_keyvalue('valor_real', valor_real)
            || ','
            || pkg_dm_json.fun_keyvalue('valor_entero', valor_entero)
            || ','
            || pkg_dm_json.fun_keyvalue('valor_fecha', TO_CHAR(valor_fecha, 'YY/MM/DD'))
            || ','
            || pkg_dm_json.fun_keyvalue('valor_cadena', valor_cadena)
            || ','
            || pkg_dm_json.fun_keyvalue('ind_estado', ind_estado)
            || ','
            || pkg_dm_json.fun_keyvalue('mac', mac)
            || '}'
        INTO wbufferout
        FROM
            tp_six_cfgtcl
        WHERE
            modulo = pkg_dm_json.fun_getvalue(wbuffer, 'modulo')
            AND nombre_parametro = pkg_dm_json.fun_getvalue(wbuffer, 'nombre_parametro');

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_cfgtcl;
	--

    PROCEDURE sps_six_cfgtcl_datamac (
        wbufferin     IN            VARCHAR2,
        wbufferout    OUT           VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        SELECT
            modulo
            || nombre_parametro
            || descripcion
            || tipo_dato
            || valor_real
            || valor_entero
            || TO_CHAR(valor_fecha, 'YY/MM/DD')
            || valor_cadena
            || ind_estado
        INTO wbufferout
        FROM
            tp_six_cfgtcl
        WHERE
            modulo = pkg_dm_json.fun_getvalue(wbuffer, 'modulo')
            AND nombre_parametro = pkg_dm_json.fun_getvalue(wbuffer, 'nombre_parametro');

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_cfgtcl_datamac;
	--

    PROCEDURE spu_six_cfgtcl_mac (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        UPDATE tp_six_cfgtcl
        SET
            mac = pkg_dm_json.fun_getvalue(wbuffer, 'mac')
        WHERE
            modulo = pkg_dm_json.fun_getvalue(wbuffer, 'modulo')
            AND nombre_parametro = pkg_dm_json.fun_getvalue(wbuffer, 'nombre_parametro');

        werror_num := 0;
        IF SQL%found THEN -- Update exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha actualizado mac del registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spu_six_cfgtcl_mac;
	--

END pkg_six_cfgtcl;
/

CREATE OR REPLACE PACKAGE BODY sixdes40.pkg_six_downcf AS

    PROCEDURE sps_six_downcf_cursor (
        wbufferin     IN            VARCHAR2,
        wcursor       OUT           gen_cur,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
        v_state   VARCHAR2(20);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        v_state := pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado');
        IF v_state = 'ALL' THEN
            v_state := '%';
        END IF;
        OPEN wcursor FOR SELECT
                             cod_timer,
                             nro_timer,
                             tipo_timer,
                             ind_estado
                         FROM
                             tp_six_downcf
                         WHERE
                             ind_estado LIKE v_state
                         ORDER BY
                             cod_timer ASC;

        werror_num := sqlcode;
        werror_desc := sqlerrm;
    EXCEPTION
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_downcf_cursor;
	--

    PROCEDURE spd_six_downcf (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        DELETE FROM tp_six_downcf
        WHERE
            cod_timer = to_number(pkg_dm_json.fun_getvalue(wbuffer, 'cod_timer'));

        werror_num := 0;
        IF SQL%found THEN -- borrado exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha borrado ningun registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spd_six_downcf;
	--

    PROCEDURE spu_six_downcf (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        UPDATE tp_six_downcf
        SET
            nro_timer = to_number(pkg_dm_json.fun_getvalue(wbuffer, 'nro_timer')),
            tipo_timer = pkg_dm_json.fun_getvalue(wbuffer, 'tipo_timer'),
            ind_estado = coalesce(pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado'), ind_estado),
            fec_actu = TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_actu'), 'YY/MM/DD'),
            usu_actu = coalesce(pkg_dm_json.fun_getvalue(wbuffer, 'usu_actu'), usu_actu)
        WHERE
            cod_timer = to_number(pkg_dm_json.fun_getvalue(wbuffer, 'cod_timer'));

        werror_num := 0;
        IF SQL%found THEN -- Update exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha actualizado ningun registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spu_six_downcf;
	--

    PROCEDURE spi_six_downcf (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        INSERT INTO tp_six_downcf (
            cod_timer,
            nro_timer,
            tipo_timer,
            fec_crea,
            fec_actu,
            usu_crea,
            usu_actu,
            ind_estado
        ) VALUES (
            to_number(pkg_dm_json.fun_getvalue(wbuffer, 'cod_timer')),
            to_number(pkg_dm_json.fun_getvalue(wbuffer, 'nro_timer')),
            pkg_dm_json.fun_getvalue(wbuffer, 'tipo_timer'),
            TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_crea'), 'YY/MM/DD'),
            TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_actu'), 'YY/MM/DD'),
            pkg_dm_json.fun_getvalue(wbuffer, 'usu_crea'),
            pkg_dm_json.fun_getvalue(wbuffer, 'usu_actu'),
            pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado')
        );

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spi_six_downcf;
	--

    PROCEDURE sps_six_downcf (
        wbufferin     IN            VARCHAR2,
        wbufferout    OUT           VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        SELECT
            '{'
            || pkg_dm_json.fun_keyvalue('nro_timer', nro_timer)
            || ','
            || pkg_dm_json.fun_keyvalue('tipo_timer', tipo_timer)
            || ','
            || pkg_dm_json.fun_keyvalue('ind_estado', ind_estado)
            || '}'
        INTO wbufferout
        FROM
            tp_six_downcf
        WHERE
            cod_timer = to_number(pkg_dm_json.fun_getvalue(wbuffer, 'cod_timer'));

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_downcf;

END pkg_six_downcf;
/

CREATE OR REPLACE PACKAGE BODY sixdes40.pkg_six_drvtcl AS

    PROCEDURE sps_six_drvtcl_cursor (
        wbufferin     IN            VARCHAR2,
        wcursor       OUT           gen_cur,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
        v_state   VARCHAR2(20);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        v_state := pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado');
        IF v_state = 'ALL' THEN
            v_state := '%';
        END IF;
        OPEN wcursor FOR SELECT
                             driver_name,
                             service_port,
                             auth_header_size,
                             connection_type,
                             basename,
                             use_token,
                             use_bin,
                             web_op_mode,
                             eft_library,
                             type_driver,
                             cod_bin,
                             nom_serv,
                             load_start,
                             max_retri,
                             ind_interval_ini_espera,
                             params,
                             ind_estado,
                             mac
                         FROM
                             tp_six_drvtcl
                         WHERE
                             ind_estado LIKE v_state;

        werror_num := sqlcode;
        werror_desc := sqlerrm;
    EXCEPTION
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_drvtcl_cursor;
	--

    PROCEDURE spd_six_drvtcl (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        DELETE FROM tp_six_drvtcl
        WHERE
            driver_name = pkg_dm_json.fun_getvalue(wbuffer, 'driver_name');

        werror_num := 0;
        IF SQL%found THEN -- borrado exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha borrado ningun registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spd_six_drvtcl;
	--

    PROCEDURE spu_six_drvtcl (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        UPDATE tp_six_drvtcl
        SET
            service_port = pkg_dm_json.fun_getvalue(wbuffer, 'service_port'),
            auth_header_size = pkg_dm_json.fun_getvalue(wbuffer, 'auth_header_size'),
            connection_type = pkg_dm_json.fun_getvalue(wbuffer, 'connection_type'),
            basename = pkg_dm_json.fun_getvalue(wbuffer, 'basename'),
            use_token = pkg_dm_json.fun_getvalue(wbuffer, 'use_token'),
            use_bin = pkg_dm_json.fun_getvalue(wbuffer, 'use_bin'),
            web_op_mode = pkg_dm_json.fun_getvalue(wbuffer, 'web_op_mode'),
            eft_library = pkg_dm_json.fun_getvalue(wbuffer, 'eft_library'),
            type_driver = pkg_dm_json.fun_getvalue(wbuffer, 'type_driver'),
            cod_bin = pkg_dm_json.fun_getvalue(wbuffer, 'cod_bin'),
            nom_serv = pkg_dm_json.fun_getvalue(wbuffer, 'nom_serv'),
            load_start = pkg_dm_json.fun_getvalue(wbuffer, 'load_start'),
            max_retri = pkg_dm_json.fun_getvalue(wbuffer, 'max_retri'),
            ind_interval_ini_espera = pkg_dm_json.fun_getvalue(wbuffer, 'ind_interval_ini_espera'),
            params = pkg_dm_json.fun_getvalue(wbuffer, 'params'),
            ind_estado = pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado'),
            fec_actu = TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_actu'), 'YY/MM/DD'),
            usu_actu = coalesce(pkg_dm_json.fun_getvalue(wbuffer, 'usu_actu'), usu_actu)
        WHERE
            driver_name = pkg_dm_json.fun_getvalue(wbuffer, 'driver_name');

        werror_num := 0;
        IF SQL%found THEN -- Update exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha actualizado ningun registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spu_six_drvtcl;
	--

    PROCEDURE spi_six_drvtcl (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        INSERT INTO tp_six_drvtcl (
            driver_name,
            service_port,
            auth_header_size,
            connection_type,
            basename,
            use_token,
            use_bin,
            web_op_mode,
            eft_library,
            type_driver,
            cod_bin,
            nom_serv,
            load_start,
            max_retri,
            ind_interval_ini_espera,
            params,
            ind_estado,
            fec_crea,
            fec_actu,
            usu_crea,
            usu_actu,
            mac
        ) VALUES (
            pkg_dm_json.fun_getvalue(wbuffer, 'driver_name'),
            pkg_dm_json.fun_getvalue(wbuffer, 'service_port'),
            pkg_dm_json.fun_getvalue(wbuffer, 'auth_header_size'),
            pkg_dm_json.fun_getvalue(wbuffer, 'connection_type'),
            pkg_dm_json.fun_getvalue(wbuffer, 'basename'),
            pkg_dm_json.fun_getvalue(wbuffer, 'use_token'),
            pkg_dm_json.fun_getvalue(wbuffer, 'use_bin'),
            pkg_dm_json.fun_getvalue(wbuffer, 'web_op_mode'),
            pkg_dm_json.fun_getvalue(wbuffer, 'eft_library'),
            pkg_dm_json.fun_getvalue(wbuffer, 'type_driver'),
            pkg_dm_json.fun_getvalue(wbuffer, 'cod_bin'),
            pkg_dm_json.fun_getvalue(wbuffer, 'nom_serv'),
            pkg_dm_json.fun_getvalue(wbuffer, 'load_start'),
            pkg_dm_json.fun_getvalue(wbuffer, 'max_retri'),
            pkg_dm_json.fun_getvalue(wbuffer, 'ind_interval_ini_espera'),
            pkg_dm_json.fun_getvalue(wbuffer, 'params'),
            pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado'),
            TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_crea'), 'YY/MM/DD'),
            TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_actu'), 'YY/MM/DD'),
            pkg_dm_json.fun_getvalue(wbuffer, 'usu_crea'),
            pkg_dm_json.fun_getvalue(wbuffer, 'usu_actu'),
            pkg_dm_json.fun_getvalue(wbuffer, 'mac')
        );

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spi_six_drvtcl;
	--

    PROCEDURE sps_six_drvtcl (
        wbufferin     IN            VARCHAR2,
        wbufferout    OUT           VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        SELECT
            '{'
            || pkg_dm_json.fun_keyvalue('service_port', service_port)
            || ','
            || pkg_dm_json.fun_keyvalue('auth_header_size', auth_header_size)
            || ','
            || pkg_dm_json.fun_keyvalue('connection_type', connection_type)
            || ','
            || pkg_dm_json.fun_keyvalue('basename', basename)
            || ','
            || pkg_dm_json.fun_keyvalue('use_token', use_token)
            || ','
            || pkg_dm_json.fun_keyvalue('use_bin', use_bin)
            || ','
            || pkg_dm_json.fun_keyvalue('web_op_mode', web_op_mode)
            || ','
            || pkg_dm_json.fun_keyvalue('eft_library', eft_library)
            || ','
            || pkg_dm_json.fun_keyvalue('type_driver', type_driver)
            || ','
            || pkg_dm_json.fun_keyvalue('cod_bin', cod_bin)
            || ','
            || pkg_dm_json.fun_keyvalue('nom_serv', nom_serv)
            || ','
            || pkg_dm_json.fun_keyvalue('load_start', load_start)
            || ','
            || pkg_dm_json.fun_keyvalue('max_retri', max_retri)
            || ','
            || pkg_dm_json.fun_keyvalue('ind_interval_ini_espera', ind_interval_ini_espera)
            || ','
            || pkg_dm_json.fun_keyvalue('params', params)
            || ','
            || pkg_dm_json.fun_keyvalue('ind_estado', ind_estado)
            || ','
            || pkg_dm_json.fun_keyvalue('mac', mac)
            || '}'
        INTO wbufferout
        FROM
            tp_six_drvtcl
        WHERE
            driver_name = pkg_dm_json.fun_getvalue(wbuffer, 'driver_name');

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_drvtcl;
	--

    PROCEDURE sps_six_drvtcl_datamac (
        wbufferin     IN            VARCHAR2,
        wbufferout    OUT           VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        SELECT
            driver_name
            || service_port
            || auth_header_size
            || connection_type
            || basename
            || use_token
            || use_bin
            || web_op_mode
            || eft_library
            || type_driver
            || cod_bin
            || nom_serv
            || load_start
            || max_retri
            || ind_interval_ini_espera
            || params
            || ind_estado
        INTO wbufferout
        FROM
            tp_six_drvtcl
        WHERE
            driver_name = pkg_dm_json.fun_getvalue(wbuffer, 'driver_name');

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_drvtcl_datamac;
	--

    PROCEDURE spu_six_drvtcl_mac (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        UPDATE tp_six_drvtcl
        SET
            mac = pkg_dm_json.fun_getvalue(wbuffer, 'mac')
        WHERE
            driver_name = pkg_dm_json.fun_getvalue(wbuffer, 'driver_name');

        werror_num := 0;
        IF SQL%found THEN -- Update exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha actualizado mac del registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spu_six_drvtcl_mac;
	--

END pkg_six_drvtcl;
/

CREATE OR REPLACE PACKAGE BODY sixdes40.pkg_six_grpdet AS

    PROCEDURE sps_six_grpdet_cursor (
        wbufferin     IN            VARCHAR2,
        wcursor       OUT           gen_cur,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
        v_state   VARCHAR2(20);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        v_state := pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado');
        IF v_state = 'ALL' THEN
            v_state := '%';
        END IF;
        OPEN wcursor FOR SELECT
                             user_group,
                             symb_name,
                             ind_estado
                         FROM
                             ts_six_grupo_detalle
                         WHERE
                             ind_estado LIKE v_state;

        werror_num := sqlcode;
        werror_desc := sqlerrm;
    EXCEPTION
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_grpdet_cursor;
	--

    PROCEDURE spd_six_grpdet (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        DELETE FROM ts_six_grupo_detalle
        WHERE
            user_group = pkg_dm_json.fun_getvalue(wbuffer, 'user_group')
            AND symb_name = pkg_dm_json.fun_getvalue(wbuffer, 'symb_name');

        werror_num := 0;
        IF SQL%found THEN -- borrado exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha borrado ningun registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spd_six_grpdet;
	--

    PROCEDURE spu_six_grpdet (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        UPDATE ts_six_grupo_detalle
        SET
            symb_name = coalesce(pkg_dm_json.fun_getvalue(wbuffer, 'symb_name_new'), symb_name),
            ind_estado = coalesce(pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado'), ind_estado),
            fec_actu = TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_actu'), 'YY/MM/DD'),
            usu_actu = coalesce(pkg_dm_json.fun_getvalue(wbuffer, 'usu_actu'), usu_actu)
        WHERE
            user_group = pkg_dm_json.fun_getvalue(wbuffer, 'user_group')
            AND symb_name = pkg_dm_json.fun_getvalue(wbuffer, 'symb_name');

        werror_num := 0;
        IF SQL%found THEN -- Update exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha actualizado ningun registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spu_six_grpdet;
	--

    PROCEDURE spi_six_grpdet (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        INSERT INTO ts_six_grupo_detalle (
            user_group,
            symb_name,
            fec_crea,
            fec_actu,
            usu_crea,
            usu_actu,
            ind_estado
        ) VALUES (
            pkg_dm_json.fun_getvalue(wbuffer, 'user_group'),
            pkg_dm_json.fun_getvalue(wbuffer, 'symb_name'),
            TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_crea'), 'YY/MM/DD'),
            TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_actu'), 'YY/MM/DD'),
            pkg_dm_json.fun_getvalue(wbuffer, 'usu_crea'),
            pkg_dm_json.fun_getvalue(wbuffer, 'usu_actu'),
            pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado')
        );

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spi_six_grpdet;
	--

    PROCEDURE sps_six_grpdet (
        wbufferin     IN            VARCHAR2,
        wbufferout    OUT           VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        SELECT
            '{'
            || pkg_dm_json.fun_keyvalue('ind_estado', ind_estado)
            || '}'
        INTO wbufferout
        FROM
            ts_six_grupo_detalle
        WHERE
            user_group = pkg_dm_json.fun_getvalue(wbuffer, 'user_group')
            AND symb_name = pkg_dm_json.fun_getvalue(wbuffer, 'symb_name');

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_grpdet;

END pkg_six_grpdet;
/

CREATE OR REPLACE PACKAGE BODY sixdes40.pkg_six_grupo AS

    PROCEDURE sps_six_grupo_cursor (
        wbufferin     IN            VARCHAR2,
        wcursor       OUT           gen_cur,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
        v_state   VARCHAR2(20);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        v_state := pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado');
        IF v_state = 'ALL' THEN
            v_state := '%';
        END IF;
        OPEN wcursor FOR SELECT
                             user_group,
                             des_grupo,
                             ind_estado
                         FROM
                             ts_six_grupo
                         WHERE
                             ind_estado LIKE v_state;

        werror_num := sqlcode;
        werror_desc := sqlerrm;
    EXCEPTION
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_grupo_cursor;
	--

    PROCEDURE spd_six_grupo (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        DELETE FROM ts_six_grupo
        WHERE
            user_group = pkg_dm_json.fun_getvalue(wbuffer, 'user_group');

        werror_num := 0;
        IF SQL%found THEN -- borrado exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha borrado ningun registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spd_six_grupo;
	--

    PROCEDURE spu_six_grupo (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        UPDATE ts_six_grupo
        SET
            user_group = coalesce(pkg_dm_json.fun_getvalue(wbuffer, 'user_group_new'), user_group),
            des_grupo = coalesce(pkg_dm_json.fun_getvalue(wbuffer, 'des_grupo'), des_grupo),
            ind_estado = coalesce(pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado'), ind_estado),
            fec_actu = TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_actu'), 'YY/MM/DD'),
            usu_actu = coalesce(pkg_dm_json.fun_getvalue(wbuffer, 'usu_actu'), usu_actu)
        WHERE
            user_group = pkg_dm_json.fun_getvalue(wbuffer, 'user_group');

        werror_num := 0;
        IF SQL%found THEN -- Update exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha actualizado ningun registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spu_six_grupo;
	--

    PROCEDURE spi_six_grupo (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        INSERT INTO ts_six_grupo (
            user_group,
            des_grupo,
            ind_estado,
            fec_crea,
            fec_actu,
            usu_crea,
            usu_actu
        ) VALUES (
            pkg_dm_json.fun_getvalue(wbuffer, 'user_group'),
            pkg_dm_json.fun_getvalue(wbuffer, 'des_grupo'),
            pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado'),
            TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_crea'), 'YY/MM/DD'),
            TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_actu'), 'YY/MM/DD'),
            pkg_dm_json.fun_getvalue(wbuffer, 'usu_crea'),
            pkg_dm_json.fun_getvalue(wbuffer, 'usu_actu')
        );

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spi_six_grupo;
	--

    PROCEDURE sps_six_grupo (
        wbufferin     IN            VARCHAR2,
        wbufferout    OUT           VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        SELECT
            '{'
            || pkg_dm_json.fun_keyvalue('des_grupo', des_grupo)
            || ','
            || pkg_dm_json.fun_keyvalue('ind_estado', ind_estado)
            || '}'
        INTO wbufferout
        FROM
            ts_six_grupo
        WHERE
            user_group = pkg_dm_json.fun_getvalue(wbuffer, 'user_group');

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_grupo;

END pkg_six_grupo;
/

CREATE OR REPLACE PACKAGE BODY sixdes40.pkg_six_msgqcf AS

    PROCEDURE sps_six_msgqcf_cursor (
        wbufferin     IN            VARCHAR2,
        wcursor       OUT           gen_cur,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
        v_state   VARCHAR2(20);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        v_state := pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado');
        IF v_state = 'ALL' THEN
            v_state := '%';
        END IF;
        OPEN wcursor FOR SELECT
                             symb_name,
                             process_type,
                             queue_send,
                             queue_recv,
                             queue_type,
                             mult_uniq,
                             ind_estado,
                             mac
                         FROM
                             tp_six_msgqcf
                         WHERE
                             ind_estado LIKE v_state
                         ORDER BY
                             symb_name ASC;

        werror_num := sqlcode;
        werror_desc := sqlerrm;
    EXCEPTION
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_msgqcf_cursor;
	--

    PROCEDURE spd_six_msgqcf (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        DELETE FROM tp_six_msgqcf
        WHERE
            symb_name = pkg_dm_json.fun_getvalue(wbuffer, 'symb_name');

        werror_num := 0;
        IF SQL%found THEN -- borrado exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha borrado ningun registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spd_six_msgqcf;
	--

    PROCEDURE spu_six_msgqcf (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        UPDATE tp_six_msgqcf
        SET
            process_type = pkg_dm_json.fun_getvalue(wbuffer, 'process_type'),
            queue_send = pkg_dm_json.fun_getvalue(wbuffer, 'queue_send'),
            queue_recv = pkg_dm_json.fun_getvalue(wbuffer, 'queue_recv'),
            queue_type = pkg_dm_json.fun_getvalue(wbuffer, 'queue_type'),
            mult_uniq = pkg_dm_json.fun_getvalue(wbuffer, 'mult_uniq'),
            ind_estado = pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado'),
            fec_actu = TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_actu'), 'YY/MM/DD'),
            usu_actu = coalesce(pkg_dm_json.fun_getvalue(wbuffer, 'usu_actu'), usu_actu)
        WHERE
            symb_name = pkg_dm_json.fun_getvalue(wbuffer, 'symb_name');

        werror_num := 0;
        IF SQL%found THEN -- Update exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha actualizado ningun registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spu_six_msgqcf;
	--

    PROCEDURE spi_six_msgqcf (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        INSERT INTO tp_six_msgqcf (
            symb_name,
            process_type,
            queue_send,
            queue_recv,
            queue_type,
            mult_uniq,
            ind_estado,
            mac,
            fec_crea,
            fec_actu,
            usu_crea,
            usu_actu
        ) VALUES (
            pkg_dm_json.fun_getvalue(wbuffer, 'symb_name'),
            pkg_dm_json.fun_getvalue(wbuffer, 'process_type'),
            pkg_dm_json.fun_getvalue(wbuffer, 'queue_send'),
            pkg_dm_json.fun_getvalue(wbuffer, 'queue_recv'),
            pkg_dm_json.fun_getvalue(wbuffer, 'queue_type'),
            pkg_dm_json.fun_getvalue(wbuffer, 'mult_uniq'),
            pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado'),
            pkg_dm_json.fun_getvalue(wbuffer, 'mac'),
            TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_crea'), 'YY/MM/DD'),
            TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_actu'), 'YY/MM/DD'),
            pkg_dm_json.fun_getvalue(wbuffer, 'usu_crea'),
            pkg_dm_json.fun_getvalue(wbuffer, 'usu_actu')
        );

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spi_six_msgqcf;
	--

    PROCEDURE sps_six_msgqcf (
        wbufferin     IN            VARCHAR2,
        wbufferout    OUT           VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        SELECT
            '{'
            || pkg_dm_json.fun_keyvalue('process_type', process_type)
            || ','
            || pkg_dm_json.fun_keyvalue('queue_send', queue_send)
            || ','
            || pkg_dm_json.fun_keyvalue('queue_recv', queue_recv)
            || ','
            || pkg_dm_json.fun_keyvalue('queue_type', queue_type)
            || ','
            || pkg_dm_json.fun_keyvalue('mult_uniq', mult_uniq)
            || ','
            || pkg_dm_json.fun_keyvalue('ind_estado', ind_estado)
            || ','
            || pkg_dm_json.fun_keyvalue('mac', mac)
            || '}'
        INTO wbufferout
        FROM
            tp_six_msgqcf
        WHERE
            symb_name = pkg_dm_json.fun_getvalue(wbuffer, 'symb_name');

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_msgqcf;
	--

    PROCEDURE sps_six_msgqcf_datamac (
        wbufferin     IN            VARCHAR2,
        wbufferout    OUT           VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        SELECT
            symb_name
            || process_type
            || queue_send
            || queue_recv
            || queue_type
            || mult_uniq
            || ind_estado
        INTO wbufferout
        FROM
            tp_six_msgqcf
        WHERE
            symb_name = pkg_dm_json.fun_getvalue(wbuffer, 'symb_name');

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_msgqcf_datamac;
	--

    PROCEDURE spu_six_msgqcf_mac (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        UPDATE tp_six_msgqcf
        SET
            mac = pkg_dm_json.fun_getvalue(wbuffer, 'mac')
        WHERE
            symb_name = pkg_dm_json.fun_getvalue(wbuffer, 'symb_name');

        werror_num := 0;
        IF SQL%found THEN -- Update exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha actualizado mac del registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spu_six_msgqcf_mac;
	--

END pkg_six_msgqcf;
/

CREATE OR REPLACE PACKAGE BODY sixdes40.pkg_six_process AS

    PROCEDURE sps_six_process_cursor (
        wbufferin     IN            VARCHAR2,
        wcursor       OUT           gen_cur,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
        v_state   VARCHAR2(20);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        v_state := pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado');
        IF v_state = 'ALL' THEN
            v_state := '%';
        END IF;
        OPEN wcursor FOR SELECT
                             symb_name,
                             prog_disk,
                             process_type,
                             server_type,
                             remote_host,
                             service_port,
                             gate_prot,
                             time_timeout,
                             tip_profile,
                             dyna_stat,
                             mult_uniq,
                             load_start,
                             auto_load_after_down,
                             clean_queue_down,
                             emisor_receptor,
                             depen_indepent,
                             notif_timer,
                             max_retri,
                             signal_send,
                             ind_interval,
                             params,
                             ind_estado,
                             mac,
                             description
                         FROM
                             tp_six_process
                         WHERE
                             ind_estado LIKE v_state
                             AND process_type = pkg_dm_json.fun_getvalue(wbuffer, 'process_type')
                         ORDER BY
                             symb_name ASC;

        werror_num := sqlcode;
        werror_desc := sqlerrm;
    EXCEPTION
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_process_cursor;
	--

    PROCEDURE spd_six_process (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        DELETE FROM tp_six_process
        WHERE
            symb_name = pkg_dm_json.fun_getvalue(wbuffer, 'symb_name');

        werror_num := 0;
        IF SQL%found THEN -- borrado exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha borrado ningun registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spd_six_process;
	--

    PROCEDURE spu_six_process (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        UPDATE tp_six_process
        SET
            prog_disk = pkg_dm_json.fun_getvalue(wbuffer, 'prog_disk'),
            process_type = pkg_dm_json.fun_getvalue(wbuffer, 'process_type'),
            server_type = pkg_dm_json.fun_getvalue(wbuffer, 'server_type'),
            remote_host = pkg_dm_json.fun_getvalue(wbuffer, 'remote_host'),
            service_port = pkg_dm_json.fun_getvalue(wbuffer, 'service_port'),
            gate_prot = pkg_dm_json.fun_getvalue(wbuffer, 'gate_prot'),
            time_timeout = pkg_dm_json.fun_getvalue(wbuffer, 'time_timeout'),
            tip_profile = pkg_dm_json.fun_getvalue(wbuffer, 'tip_profile'),
            dyna_stat = pkg_dm_json.fun_getvalue(wbuffer, 'dyna_stat'),
            mult_uniq = pkg_dm_json.fun_getvalue(wbuffer, 'mult_uniq'),
            load_start = pkg_dm_json.fun_getvalue(wbuffer, 'load_start'),
            auto_load_after_down = pkg_dm_json.fun_getvalue(wbuffer, 'auto_load_after_down'),
            clean_queue_down = pkg_dm_json.fun_getvalue(wbuffer, 'clean_queue_down'),
            emisor_receptor = pkg_dm_json.fun_getvalue(wbuffer, 'emisor_receptor'),
            depen_indepent = pkg_dm_json.fun_getvalue(wbuffer, 'depen_indepent'),
            notif_timer = to_number(pkg_dm_json.fun_getvalue(wbuffer, 'notif_timer')),
            max_retri = pkg_dm_json.fun_getvalue(wbuffer, 'max_retri'),
            signal_send = pkg_dm_json.fun_getvalue(wbuffer, 'signal_send'),
            ind_interval = pkg_dm_json.fun_getvalue(wbuffer, 'ind_interval'),
            params = pkg_dm_json.fun_getvalue(wbuffer, 'params'),
            ind_estado = pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado'),
            fec_actu = TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_actu'), 'YY/MM/DD'),
            usu_actu = coalesce(pkg_dm_json.fun_getvalue(wbuffer, 'usu_actu'), usu_actu),
            description = pkg_dm_json.fun_getvalue(wbuffer, 'description')
        WHERE
            symb_name = pkg_dm_json.fun_getvalue(wbuffer, 'symb_name');

        werror_num := 0;
        IF SQL%found THEN -- Update exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha actualizado ningun registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spu_six_process;
	--

    PROCEDURE spi_six_process (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        INSERT INTO tp_six_process (
            symb_name,
            prog_disk,
            process_type,
            server_type,
            remote_host,
            service_port,
            gate_prot,
            time_timeout,
            tip_profile,
            dyna_stat,
            mult_uniq,
            load_start,
            auto_load_after_down,
            clean_queue_down,
            emisor_receptor,
            depen_indepent,
            notif_timer,
            max_retri,
            signal_send,
            ind_interval,
            params,
            ind_estado,
            fec_crea,
            fec_actu,
            usu_crea,
            usu_actu,
            mac,
            description
        ) VALUES (
            pkg_dm_json.fun_getvalue(wbuffer, 'symb_name'),
            pkg_dm_json.fun_getvalue(wbuffer, 'prog_disk'),
            pkg_dm_json.fun_getvalue(wbuffer, 'process_type'),
            pkg_dm_json.fun_getvalue(wbuffer, 'server_type'),
            pkg_dm_json.fun_getvalue(wbuffer, 'remote_host'),
            pkg_dm_json.fun_getvalue(wbuffer, 'service_port'),
            pkg_dm_json.fun_getvalue(wbuffer, 'gate_prot'),
            pkg_dm_json.fun_getvalue(wbuffer, 'time_timeout'),
            pkg_dm_json.fun_getvalue(wbuffer, 'tip_profile'),
            pkg_dm_json.fun_getvalue(wbuffer, 'dyna_stat'),
            pkg_dm_json.fun_getvalue(wbuffer, 'mult_uniq'),
            pkg_dm_json.fun_getvalue(wbuffer, 'load_start'),
            pkg_dm_json.fun_getvalue(wbuffer, 'auto_load_after_down'),
            pkg_dm_json.fun_getvalue(wbuffer, 'clean_queue_down'),
            pkg_dm_json.fun_getvalue(wbuffer, 'emisor_receptor'),
            pkg_dm_json.fun_getvalue(wbuffer, 'depen_indepent'),
            to_number(pkg_dm_json.fun_getvalue(wbuffer, 'notif_timer')),
            pkg_dm_json.fun_getvalue(wbuffer, 'max_retri'),
            pkg_dm_json.fun_getvalue(wbuffer, 'signal_send'),
            pkg_dm_json.fun_getvalue(wbuffer, 'ind_interval'),
            pkg_dm_json.fun_getvalue(wbuffer, 'params'),
            pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado'),
            TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_crea'), 'YY/MM/DD'),
            TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_actu'), 'YY/MM/DD'),
            pkg_dm_json.fun_getvalue(wbuffer, 'usu_crea'),
            pkg_dm_json.fun_getvalue(wbuffer, 'usu_actu'),
            pkg_dm_json.fun_getvalue(wbuffer, 'mac'),
            pkg_dm_json.fun_getvalue(wbuffer, 'description')
        );

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spi_six_process;
	--

    PROCEDURE sps_six_process (
        wbufferin     IN            VARCHAR2,
        wbufferout    OUT           VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        SELECT
            '{'
            || pkg_dm_json.fun_keyvalue('prog_disk', prog_disk)
            || ','
            || pkg_dm_json.fun_keyvalue('process_type', process_type)
            || ','
            || pkg_dm_json.fun_keyvalue('server_type', server_type)
            || ','
            || pkg_dm_json.fun_keyvalue('remote_host', remote_host)
            || ','
            || pkg_dm_json.fun_keyvalue('service_port', service_port)
            || ','
            || pkg_dm_json.fun_keyvalue('gate_prot', gate_prot)
            || ','
            || pkg_dm_json.fun_keyvalue('time_timeout', time_timeout)
            || ','
            || pkg_dm_json.fun_keyvalue('tip_profile', tip_profile)
            || ','
            || pkg_dm_json.fun_keyvalue('dyna_stat', dyna_stat)
            || ','
            || pkg_dm_json.fun_keyvalue('mult_uniq', mult_uniq)
            || ','
            || pkg_dm_json.fun_keyvalue('load_start', load_start)
            || ','
            || pkg_dm_json.fun_keyvalue('auto_load_after_down', auto_load_after_down)
            || ','
            || pkg_dm_json.fun_keyvalue('clean_queue_down', clean_queue_down)
            || ','
            || pkg_dm_json.fun_keyvalue('emisor_receptor', emisor_receptor)
            || ','
            || pkg_dm_json.fun_keyvalue('depen_indepent', depen_indepent)
            || ','
            || pkg_dm_json.fun_keyvalue('notif_timer', notif_timer)
            || ','
            || pkg_dm_json.fun_keyvalue('max_retri', max_retri)
            || ','
            || pkg_dm_json.fun_keyvalue('signal_send', signal_send)
            || ','
            || pkg_dm_json.fun_keyvalue('ind_interval', ind_interval)
            || ','
            || pkg_dm_json.fun_keyvalue('params', params)
            || ','
            || pkg_dm_json.fun_keyvalue('ind_estado', ind_estado)
            || ','
            || pkg_dm_json.fun_keyvalue('mac', mac)
            || ','
            || pkg_dm_json.fun_keyvalue('description', description)
            || '}'
        INTO wbufferout
        FROM
            tp_six_process
        WHERE
            symb_name = pkg_dm_json.fun_getvalue(wbuffer, 'symb_name');

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_process;
	--

    PROCEDURE sps_six_process_datamac (
        wbufferin     IN            VARCHAR2,
        wbufferout    OUT           VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        SELECT
            symb_name
            || prog_disk
            || process_type
            || server_type
            || remote_host
            || service_port
            || gate_prot
            || time_timeout
            || tip_profile
            || dyna_stat
            || mult_uniq
            || load_start
            || auto_load_after_down
            || clean_queue_down
            || emisor_receptor
            || depen_indepent
            || notif_timer
            || max_retri
            || signal_send
            || ind_interval
            || params
            || ind_estado
            || description
        INTO wbufferout
        FROM
            tp_six_process
        WHERE
            symb_name = pkg_dm_json.fun_getvalue(wbuffer, 'symb_name');

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_process_datamac;
	--

    PROCEDURE spu_six_process_mac (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        UPDATE tp_six_process
        SET
            mac = pkg_dm_json.fun_getvalue(wbuffer, 'mac')
        WHERE
            symb_name = pkg_dm_json.fun_getvalue(wbuffer, 'symb_name');

        werror_num := 0;
        IF SQL%found THEN -- Update exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha actualizado mac del registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spu_six_process_mac;

END pkg_six_process;
/

CREATE OR REPLACE PACKAGE BODY sixdes40.pkg_six_usrtcl AS

    PROCEDURE sps_six_usrtcl_cursor (
        wbufferin     IN            VARCHAR2,
        wcursor       OUT           gen_cur,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
        v_state   VARCHAR2(20);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        v_state := pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado');
        IF v_state = 'ALL' THEN
            v_state := '%';
        END IF;
        OPEN wcursor FOR SELECT
                             host_name,
                             user_name,
                             user_pwd,
                             user_type,
                             user_group,
                             pkzip_support,
                             company_name,
                             responsable_name,
                             long_name,
                             doc_type,
                             doc_number,
                             telephone,
                             faximile,
                             user_blocked,
                             tip_format,
                             max_logon_per_day,
                             max_iddle_time,
                             last_date_connect,
                             last_time_connect,
                             last_dura_connect,
                             last_port_connect,
                             chg_pwd_date,
                             chg_pwd_time,
                             bad_pwd_in_day,
                             bad_pwd_daily,
                             ftp_server_name,
                             software_upd,
                             distribu_upd,
                             conn_type,
                             auth_method,
                             security_level,
                             crypt_flag,
                             client_id,
                             ind_estado,
                             mac,
                             comments
                         FROM
                             tp_six_usrtcl
                         WHERE
                             ind_estado LIKE v_state
                         ORDER BY
                             host_name ASC,
                             user_name ASC;

        werror_num := sqlcode;
        werror_desc := sqlerrm;
    EXCEPTION
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_usrtcl_cursor;
	--

    PROCEDURE spd_six_usrtcl (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        DELETE FROM tp_six_usrtcl
        WHERE
            host_name = pkg_dm_json.fun_getvalue(wbuffer, 'host_name')
            AND user_name = pkg_dm_json.fun_getvalue(wbuffer, 'user_name');

        werror_num := 0;
        IF SQL%found THEN -- borrado exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha borrado ningun registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spd_six_usrtcl;
	--

    PROCEDURE spu_six_usrtcl (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        UPDATE tp_six_usrtcl
        SET
            user_pwd = pkg_dm_json.fun_getvalue(wbuffer, 'user_pwd'),
            user_type = pkg_dm_json.fun_getvalue(wbuffer, 'user_type'),
            user_group = pkg_dm_json.fun_getvalue(wbuffer, 'user_group'),
            pkzip_support = pkg_dm_json.fun_getvalue(wbuffer, 'pkzip_support'),
            company_name = pkg_dm_json.fun_getvalue(wbuffer, 'company_name'),
            responsable_name = pkg_dm_json.fun_getvalue(wbuffer, 'responsable_name'),
            long_name = pkg_dm_json.fun_getvalue(wbuffer, 'long_name'),
            doc_type = pkg_dm_json.fun_getvalue(wbuffer, 'doc_type'),
            doc_number = pkg_dm_json.fun_getvalue(wbuffer, 'doc_number'),
            telephone = pkg_dm_json.fun_getvalue(wbuffer, 'telephone'),
            faximile = pkg_dm_json.fun_getvalue(wbuffer, 'faximile'),
            user_blocked = pkg_dm_json.fun_getvalue(wbuffer, 'user_blocked'),
            tip_format = pkg_dm_json.fun_getvalue(wbuffer, 'tip_format'),
            max_logon_per_day = pkg_dm_json.fun_getvalue(wbuffer, 'max_logon_per_day'),
            max_iddle_time = pkg_dm_json.fun_getvalue(wbuffer, 'max_iddle_time'),
            last_date_connect = pkg_dm_json.fun_getvalue(wbuffer, 'last_date_connect'),
            last_time_connect = pkg_dm_json.fun_getvalue(wbuffer, 'last_time_connect'),
            last_dura_connect = pkg_dm_json.fun_getvalue(wbuffer, 'last_dura_connect'),
            last_port_connect = pkg_dm_json.fun_getvalue(wbuffer, 'last_port_connect'),
            chg_pwd_date = pkg_dm_json.fun_getvalue(wbuffer, 'chg_pwd_date'),
            chg_pwd_time = pkg_dm_json.fun_getvalue(wbuffer, 'chg_pwd_time'),
            bad_pwd_in_day = pkg_dm_json.fun_getvalue(wbuffer, 'bad_pwd_in_day'),
            bad_pwd_daily = pkg_dm_json.fun_getvalue(wbuffer, 'bad_pwd_daily'),
            ftp_server_name = pkg_dm_json.fun_getvalue(wbuffer, 'ftp_server_name'),
            software_upd = pkg_dm_json.fun_getvalue(wbuffer, 'software_upd'),
            distribu_upd = pkg_dm_json.fun_getvalue(wbuffer, 'distribu_upd'),
            conn_type = pkg_dm_json.fun_getvalue(wbuffer, 'conn_type'),
            auth_method = pkg_dm_json.fun_getvalue(wbuffer, 'auth_method'),
            security_level = pkg_dm_json.fun_getvalue(wbuffer, 'security_level'),
            crypt_flag = pkg_dm_json.fun_getvalue(wbuffer, 'crypt_flag'),
            client_id = pkg_dm_json.fun_getvalue(wbuffer, 'client_id'),
            ind_estado = pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado'),
            fec_actu = TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_actu'), 'YY/MM/DD'),
            usu_actu = coalesce(pkg_dm_json.fun_getvalue(wbuffer, 'usu_actu'), usu_actu),
            comments = pkg_dm_json.fun_getvalue(wbuffer, 'comments')
        WHERE
            host_name = pkg_dm_json.fun_getvalue(wbuffer, 'host_name')
            AND user_name = pkg_dm_json.fun_getvalue(wbuffer, 'user_name');

        werror_num := 0;
        IF SQL%found THEN -- Update exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha actualizado ningun registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spu_six_usrtcl;
	--

    PROCEDURE spi_six_usrtcl (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        INSERT INTO tp_six_usrtcl (
            host_name,
            user_name,
            user_pwd,
            user_type,
            user_group,
            pkzip_support,
            company_name,
            responsable_name,
            long_name,
            doc_type,
            doc_number,
            telephone,
            faximile,
            user_blocked,
            tip_format,
            max_logon_per_day,
            max_iddle_time,
            last_date_connect,
            last_time_connect,
            last_dura_connect,
            last_port_connect,
            chg_pwd_date,
            chg_pwd_time,
            bad_pwd_in_day,
            bad_pwd_daily,
            ftp_server_name,
            software_upd,
            distribu_upd,
            conn_type,
            auth_method,
            security_level,
            crypt_flag,
            client_id,
            ind_estado,
            fec_crea,
            fec_actu,
            usu_crea,
            usu_actu,
            mac,
            comments
        ) VALUES (
            pkg_dm_json.fun_getvalue(wbuffer, 'host_name'),
            pkg_dm_json.fun_getvalue(wbuffer, 'user_name'),
            pkg_dm_json.fun_getvalue(wbuffer, 'user_pwd'),
            pkg_dm_json.fun_getvalue(wbuffer, 'user_type'),
            pkg_dm_json.fun_getvalue(wbuffer, 'user_group'),
            pkg_dm_json.fun_getvalue(wbuffer, 'pkzip_support'),
            pkg_dm_json.fun_getvalue(wbuffer, 'company_name'),
            pkg_dm_json.fun_getvalue(wbuffer, 'responsable_name'),
            pkg_dm_json.fun_getvalue(wbuffer, 'long_name'),
            pkg_dm_json.fun_getvalue(wbuffer, 'doc_type'),
            pkg_dm_json.fun_getvalue(wbuffer, 'doc_number'),
            pkg_dm_json.fun_getvalue(wbuffer, 'telephone'),
            pkg_dm_json.fun_getvalue(wbuffer, 'faximile'),
            pkg_dm_json.fun_getvalue(wbuffer, 'user_blocked'),
            pkg_dm_json.fun_getvalue(wbuffer, 'tip_format'),
            pkg_dm_json.fun_getvalue(wbuffer, 'max_logon_per_day'),
            pkg_dm_json.fun_getvalue(wbuffer, 'max_iddle_time'),
            pkg_dm_json.fun_getvalue(wbuffer, 'last_date_connect'),
            pkg_dm_json.fun_getvalue(wbuffer, 'last_time_connect'),
            pkg_dm_json.fun_getvalue(wbuffer, 'last_dura_connect'),
            pkg_dm_json.fun_getvalue(wbuffer, 'last_port_connect'),
            pkg_dm_json.fun_getvalue(wbuffer, 'chg_pwd_date'),
            pkg_dm_json.fun_getvalue(wbuffer, 'chg_pwd_time'),
            pkg_dm_json.fun_getvalue(wbuffer, 'bad_pwd_in_day'),
            pkg_dm_json.fun_getvalue(wbuffer, 'bad_pwd_daily'),
            pkg_dm_json.fun_getvalue(wbuffer, 'ftp_server_name'),
            pkg_dm_json.fun_getvalue(wbuffer, 'software_upd'),
            pkg_dm_json.fun_getvalue(wbuffer, 'distribu_upd'),
            pkg_dm_json.fun_getvalue(wbuffer, 'conn_type'),
            pkg_dm_json.fun_getvalue(wbuffer, 'auth_method'),
            pkg_dm_json.fun_getvalue(wbuffer, 'security_level'),
            pkg_dm_json.fun_getvalue(wbuffer, 'crypt_flag'),
            pkg_dm_json.fun_getvalue(wbuffer, 'client_id'),
            pkg_dm_json.fun_getvalue(wbuffer, 'ind_estado'),
            TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_crea'), 'YY/MM/DD'),
            TO_DATE(pkg_dm_json.fun_getvalue(wbuffer, 'fec_actu'), 'YY/MM/DD'),
            pkg_dm_json.fun_getvalue(wbuffer, 'usu_crea'),
            pkg_dm_json.fun_getvalue(wbuffer, 'usu_actu'),
            pkg_dm_json.fun_getvalue(wbuffer, 'mac'),
            pkg_dm_json.fun_getvalue(wbuffer, 'comments')
        );

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spi_six_usrtcl;
	--

    PROCEDURE sps_six_usrtcl (
        wbufferin     IN            VARCHAR2,
        wbufferout    OUT           VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        SELECT
            '{'
            || pkg_dm_json.fun_keyvalue('user_pwd', user_pwd)
            || ','
            || pkg_dm_json.fun_keyvalue('user_type', user_type)
            || ','
            || pkg_dm_json.fun_keyvalue('user_group', user_group)
            || ','
            || pkg_dm_json.fun_keyvalue('pkzip_support', pkzip_support)
            || ','
            || pkg_dm_json.fun_keyvalue('company_name', company_name)
            || ','
            || pkg_dm_json.fun_keyvalue('responsable_name', responsable_name)
            || ','
            || pkg_dm_json.fun_keyvalue('long_name', long_name)
            || ','
            || pkg_dm_json.fun_keyvalue('doc_type', doc_type)
            || ','
            || pkg_dm_json.fun_keyvalue('doc_number', doc_number)
            || ','
            || pkg_dm_json.fun_keyvalue('telephone', telephone)
            || ','
            || pkg_dm_json.fun_keyvalue('faximile', faximile)
            || ','
            || pkg_dm_json.fun_keyvalue('user_blocked', user_blocked)
            || ','
            || pkg_dm_json.fun_keyvalue('tip_format', tip_format)
            || ','
            || pkg_dm_json.fun_keyvalue('max_logon_per_day', max_logon_per_day)
            || ','
            || pkg_dm_json.fun_keyvalue('max_iddle_time', max_iddle_time)
            || ','
            || pkg_dm_json.fun_keyvalue('last_date_connect', last_date_connect)
            || ','
            || pkg_dm_json.fun_keyvalue('last_time_connect', last_time_connect)
            || ','
            || pkg_dm_json.fun_keyvalue('last_dura_connect', last_dura_connect)
            || ','
            || pkg_dm_json.fun_keyvalue('last_port_connect', last_port_connect)
            || ','
            || pkg_dm_json.fun_keyvalue('chg_pwd_date', chg_pwd_date)
            || ','
            || pkg_dm_json.fun_keyvalue('chg_pwd_time', chg_pwd_time)
            || ','
            || pkg_dm_json.fun_keyvalue('bad_pwd_in_day', bad_pwd_in_day)
            || ','
            || pkg_dm_json.fun_keyvalue('bad_pwd_daily', bad_pwd_daily)
            || ','
            || pkg_dm_json.fun_keyvalue('ftp_server_name', ftp_server_name)
            || ','
            || pkg_dm_json.fun_keyvalue('software_upd', software_upd)
            || ','
            || pkg_dm_json.fun_keyvalue('distribu_upd', distribu_upd)
            || ','
            || pkg_dm_json.fun_keyvalue('conn_type', conn_type)
            || ','
            || pkg_dm_json.fun_keyvalue('auth_method', auth_method)
            || ','
            || pkg_dm_json.fun_keyvalue('security_level', security_level)
            || ','
            || pkg_dm_json.fun_keyvalue('crypt_flag', crypt_flag)
            || ','
            || pkg_dm_json.fun_keyvalue('client_id', client_id)
            || ','
            || pkg_dm_json.fun_keyvalue('ind_estado', ind_estado)
            || ','
            || pkg_dm_json.fun_keyvalue('mac', mac)
            || ','
            || pkg_dm_json.fun_keyvalue('comments', comments)
            || '}'
        INTO wbufferout
        FROM
            tp_six_usrtcl
        WHERE
            host_name = pkg_dm_json.fun_getvalue(wbuffer, 'host_name')
            AND user_name = pkg_dm_json.fun_getvalue(wbuffer, 'user_name');

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_usrtcl;
	--

    PROCEDURE sps_six_usrtcl_datamac (
        wbufferin     IN            VARCHAR2,
        wbufferout    OUT           VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        SELECT
            host_name
            || user_name
            || user_pwd
            || user_type
            || user_group
            || pkzip_support
            || company_name
            || responsable_name
            || long_name
            || doc_type
            || doc_number
            || telephone
            || faximile
            || user_blocked
            || tip_format
            || max_logon_per_day
            || max_iddle_time
            || last_date_connect
            || last_time_connect
            || last_dura_connect
            || last_port_connect
            || chg_pwd_date
            || chg_pwd_time
            || bad_pwd_in_day
            || bad_pwd_daily
            || ftp_server_name
            || software_upd
            || distribu_upd
            || conn_type
            || auth_method
            || security_level
            || crypt_flag
            || client_id
            || ind_estado
            || comments
        INTO wbufferout
        FROM
            tp_six_usrtcl
        WHERE
            host_name = pkg_dm_json.fun_getvalue(wbuffer, 'host_name')
            AND user_name = pkg_dm_json.fun_getvalue(wbuffer, 'user_name');

        werror_num := 0;
        werror_desc := 'OK';
    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END sps_six_usrtcl_datamac;
	--

    PROCEDURE spu_six_usrtcl_mac (
        wbufferin     IN            VARCHAR2,
        werror_num    OUT           NUMBER,
        werror_desc   OUT           VARCHAR2
    ) IS
        wbuffer   VARCHAR2(2048);
    BEGIN
        wbuffer := pkg_dm_json.fun_trim(wbufferin);
        UPDATE tp_six_usrtcl
        SET
            mac = pkg_dm_json.fun_getvalue(wbuffer, 'mac')
        WHERE
            host_name = pkg_dm_json.fun_getvalue(wbuffer, 'host_name')
            AND user_name = pkg_dm_json.fun_getvalue(wbuffer, 'user_name');

        werror_num := 0;
        IF SQL%found THEN -- Update exitoso
            werror_desc := 'OK';
        ELSE
            werror_desc := 'No se ha actualizado mac del registro';
        END IF;

    EXCEPTION
        WHEN no_data_found THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
        WHEN OTHERS THEN
            werror_num := sqlcode;
            werror_desc := sqlerrm;
    END spu_six_usrtcl_mac;
	--

END pkg_six_usrtcl;
/

/*
ALTER TABLE sixdes40.tp_grupo_table_value_det
    ADD CONSTRAINT fk_grp_tbl_val_det_gro_tbl_val FOREIGN KEY ( sec_grp_table )
        REFERENCES sixdes40.tp_grupo_table_value ( sec_grp_table )
    NOT DEFERRABLE;

ALTER TABLE sixdes40.ts_six_grupo_detalle
    ADD CONSTRAINT fk_six_grupo_det_six_process FOREIGN KEY ( symb_name )
        REFERENCES sixdes40.tp_six_process ( symb_name )
    NOT DEFERRABLE;

ALTER TABLE sixdes40.ts_six_grupo_detalle
    ADD CONSTRAINT fk_six_grupo_detalle_six_grupo FOREIGN KEY ( user_group )
        REFERENCES sixdes40.ts_six_grupo ( user_group )
    NOT DEFERRABLE;

ALTER TABLE sixdes40.tp_six_msgqcf
    ADD CONSTRAINT fk_six_msgqcf_six_process FOREIGN KEY ( symb_name )
        REFERENCES sixdes40.tp_six_process ( symb_name )
    NOT DEFERRABLE;

ALTER TABLE sixdes40.tp_six_process
    ADD CONSTRAINT fk_six_process_six_downcf FOREIGN KEY ( notif_timer )
        REFERENCES sixdes40.tp_six_downcf ( cod_timer )
    NOT DEFERRABLE;

ALTER TABLE sixdes40.tp_six_table_of_tables
    ADD CONSTRAINT fk_six_tbl_of_tbl_grp_tbl_val FOREIGN KEY ( sec_grp_table )
        REFERENCES sixdes40.tp_grupo_table_value ( sec_grp_table )
    NOT DEFERRABLE;

ALTER TABLE sixdes40.tp_six_usrtcl
    ADD CONSTRAINT tp_six_usrtcl_ts_six_grupo_fk FOREIGN KEY ( user_group )
        REFERENCES sixdes40.ts_six_grupo ( user_group )
    NOT DEFERRABLE;

*/

-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            19
-- CREATE INDEX                             2
-- ALTER TABLE                             57
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           9
-- CREATE PACKAGE BODY                      9
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          2
-- CREATE TRIGGER                           8
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          5
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
