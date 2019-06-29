-- *************************************************************
-- Create table to owner portal
-- *************************************************************
-- Create table APP_ROLE
create table APP_ROLE
(
  role_id   NUMBER(19) not null,
  role_name VARCHAR2(30) not null
);
alter table APP_ROLE
  add constraint APP_ROLE_PK primary key (ROLE_ID);
alter table APP_ROLE
  add constraint APP_ROLE_UK unique (ROLE_NAME);
-- Create table APP_USER
create table APP_USER
(
  user_id           NUMBER(19) not null,
  user_name         VARCHAR2(36) not null,
  encryted_password VARCHAR2(128) not null,
  enabled           NUMBER(1) not null
);
alter table APP_USER
  add constraint APP_USER_PK primary key (USER_ID);
alter table APP_USER
  add constraint APP_USER_UK unique (USER_NAME);
-- Create table USER_ROLE
create table USER_ROLE
(
  id      NUMBER(19) not null,
  user_id NUMBER(19) not null,
  role_id NUMBER(19) not null
);
alter table USER_ROLE
  add constraint USER_ROLE_PK primary key (ID);
alter table USER_ROLE
  add constraint USER_ROLE_UK unique (USER_ID, ROLE_ID);
alter table USER_ROLE
  add constraint USER_ROLE_FK1 foreign key (USER_ID)
  references APP_USER (USER_ID);
alter table USER_ROLE
  add constraint USER_ROLE_FK2 foreign key (ROLE_ID)
  references APP_ROLE (ROLE_ID);
-- Insert's
insert into APP_ROLE (role_id, role_name)
values (1, 'ROLE_ADMIN');
insert into APP_ROLE (role_id, role_name)
values (2, 'ROLE_USER');
commit;
insert into APP_USER (user_id, user_name, encryted_password, enabled)
values (2, '77770000', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', 1);
insert into APP_USER (user_id, user_name, encryted_password, enabled)
values (1, 'dbadmin1', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', 1);
commit;
insert into USER_ROLE (id, user_id, role_id)
values (1, 1, 1);
insert into USER_ROLE (id, user_id, role_id)
values (2, 1, 2);
insert into USER_ROLE (id, user_id, role_id)
values (3, 2, 2);
commit;
-- *************************************************************
-- Create table to user portal
-- *************************************************************
-- Create table PVQR_CIUDADANOS
create table PVQR_CIUDADANOS
(
  DNI                    VARCHAR2(8) NOT NULL,
  PRIMER_APE             VARCHAR2(40),
  SEGUNDO_APE            VARCHAR2(40),
  NOMBRES                VARCHAR2(60),
  DIRECCION              VARCHAR2(60),
  NUMERO_DIR             VARCHAR2(5),
  GENERO                 CHAR(1),
  FECHA_NAC              DATE,
  CORREO                 VARCHAR2(50),
  USUARIO_CRE            VARCHAR2(8),
  FECHA_CRE              DATE,
  USUARIO_MOD            VARCHAR2(8),
  FECHA_MOD              DATE
);
-- Create table PVQR_IMAGENES_CIUDADANO
create table PVQR_IMAGENES_CIUDADANO
(
  DNI                    VARCHAR2(8) NOT NULL,
  FOTO_IMA               BLOB,
  HUELLA_IZQ_IMA         BLOB,
  HUELLA_DER_IMA         BLOB,
  FIRMA_IMA              BLOB,
  USUARIO_CRE            VARCHAR2(8),
  FECHA_CRE              DATE,
  USUARIO_MOD            VARCHAR2(8),
  FECHA_MOD              DATE
);
-- Create table PVQR_DOCUMENTOS
create table PVQR_DOCUMENTOS
(
  CODIGO                 NUMBER NOT NULL,
  SOLICITADOR_DNI        VARCHAR2(8),
  FECHA_EMI              DATE,
  TIPO_DOC               CHAR(1),
  CODIGO_VER             VARCHAR2(256),
  USUARIO_CRE            VARCHAR2(8),
  FECHA_CRE              DATE,
  USUARIO_MOD            VARCHAR2(8),
  FECHA_MOD              DATE
);
-- Create table PVQR_DETALLES_DOCUMENTO
create table PVQR_DETALLES_DOCUMENTO
(
  CODIGO_DOC             NUMBER NOT NULL,
  PDF_GEN                BLOB,
  SOLICITADO_DNI         VARCHAR2(8),
  CODIGO_SOL             VARCHAR(20)
);
-- Create public synonym's
CREATE PUBLIC SYNONYM PVQR_CIUDADANOS FOR OWNER_PORTAL.PVQR_CIUDADANOS;
CREATE PUBLIC SYNONYM PVQR_IMAGENES_CIUDADANO FOR OWNER_PORTAL.PVQR_IMAGENES_CIUDADANO;
CREATE PUBLIC SYNONYM PVQR_DOCUMENTOS FOR OWNER_PORTAL.PVQR_DOCUMENTOS;
CREATE PUBLIC SYNONYM PVQR_DETALLES_DOCUMENTO FOR OWNER_PORTAL.PVQR_DETALLES_DOCUMENTO;

-- insert's
insert into PVQR_CIUDADANOS (dni, primer_ape, segundo_ape, nombres, direccion, numero_dir, genero, fecha_nac, correo, usuario_cre, fecha_cre, usuario_mod, fecha_mod)
values ('77770000', 'MAMANI', 'CONDORI', 'JOSE WALTER', 'AVENIDA HUAYLAS', '342', '1', to_date('01-01-1995', 'dd-mm-yyyy'), 'JWMANCOR@GMAIL.COM', '77770000', to_date('28-06-2019', 'dd-mm-yyyy'), '77770000', to_date('28-06-2019', 'dd-mm-yyyy'));
insert into PVQR_CIUDADANOS (dni, primer_ape, segundo_ape, nombres, direccion, numero_dir, genero, fecha_nac, correo, usuario_cre, fecha_cre, usuario_mod, fecha_mod)
values ('77771111', 'QUISPE', 'APAZA', 'FRANCISCO', 'AVENIDA SOL', '243', '1', to_date('01-01-1995', 'dd-mm-yyyy'), 'FQUISPE@GMAIL.COM', '77770000', to_date('28-06-2019', 'dd-mm-yyyy'), '77770000', to_date('28-06-2019', 'dd-mm-yyyy'));
commit;

insert into PVQR_IMAGENES_CIUDADANO (dni, foto_ima, huella_izq_ima, huella_der_ima, firma_ima, usuario_cre, fecha_cre, usuario_mod, fecha_mod)
values ('77770000', null, null, null, null, '77770000', to_date('28-06-2019', 'dd-mm-yyyy'), '77770000', to_date('28-06-2019', 'dd-mm-yyyy'));
insert into PVQR_IMAGENES_CIUDADANO (dni, foto_ima, huella_izq_ima, huella_der_ima, firma_ima, usuario_cre, fecha_cre, usuario_mod, fecha_mod)
values ('77771111', null, null, null, null, '77770000', to_date('28-06-2019', 'dd-mm-yyyy'), '77770000', to_date('28-06-2019', 'dd-mm-yyyy'));
commit;

insert into PVQR_DOCUMENTOS (codigo, solicitador_dni, fecha_emi, tipo_doc, codigo_ver, usuario_cre, fecha_cre, usuario_mod, fecha_mod)
values (1001, '77770000', to_date('08-06-2019 12:23:14', 'dd-mm-yyyy hh24:mi:ss'), 'H', '828071.161902.949782', '77770000', to_date('08-06-2019 12:23:14', 'dd-mm-yyyy hh24:mi:ss'), '77770000', to_date('08-06-2019 12:23:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into PVQR_DOCUMENTOS (codigo, solicitador_dni, fecha_emi, tipo_doc, codigo_ver, usuario_cre, fecha_cre, usuario_mod, fecha_mod)
values (1002, '77770000', to_date('17-06-2019 09:16:26', 'dd-mm-yyyy hh24:mi:ss'), 'C', '857747.313935.179488', '77770000', to_date('17-06-2019 09:16:26', 'dd-mm-yyyy hh24:mi:ss'), '77770000', to_date('17-06-2019 09:16:26', 'dd-mm-yyyy hh24:mi:ss'));
commit;

insert into PVQR_DETALLES_DOCUMENTO (codigo_doc, pdf_gen, solicitado_dni, codigo_sol)
values (1001, null, '77770000', '23399');
insert into PVQR_DETALLES_DOCUMENTO (codigo_doc, pdf_gen, solicitado_dni, codigo_sol)
values (1002, null, '77771111', '23408');
commit;

-- Create package
CREATE OR REPLACE PACKAGE CC_PK_PORTAL_VERIFICAQR IS
-- *************************************************************************************************
-- Nombre         : CC_PK_PORTAL_VERIFICAQR
-- Autor          : Jose W. M. C.
-- Version        : 1.0
-- Descripcion    : Paquete para el aplicativo de verificaqr
-- *************************************************************************************************
----------------------------------------------------------------------------------------------------
-- Nombre de Funcion : FU_VALIDEZ_CERT
-- Autor             : Jose W. M. C.
-- Creado            : 28/06/2019
-- Proposito         : Obtiene la validez del certificado
----------------------------------------------------------------------------------------------------
FUNCTION FU_VALIDEZ_CERT(p_nNU_SOLICITUD NUMBER,
                             p_vDNI_TITULAR VARCHAR2,
                             p_dFE_EMISION DATE) RETURN VARCHAR2;

END;

CREATE OR REPLACE PACKAGE BODY CC_PK_PORTAL_VERIFICAQR IS
-- *************************************************************************************************
-- Nombre         : CC_PK_PORTAL_VERIFICAQR
-- Autor          : Jose Walter M. C.
-- Version        : 1.0
-- Descripcion    : Paquete para el aplicativo de verificaqr
-- *************************************************************************************************
----------------------------------------------------------------------------------------------------
-- Nombre de Funcion : FU_VALIDEZ_CERT
-- Autor             : Jose W. M. C.
-- Creado            : 28/06/2019
-- Proposito         : Obtiene la validez del certificado
----------------------------------------------------------------------------------------------------
FUNCTION FU_VALIDEZ_CERT(p_nNU_SOLICITUD NUMBER,
                             p_vDNI_TITULAR VARCHAR2,
                             p_dFE_EMISION DATE) RETURN VARCHAR2 IS
v_vDNI_TITULAR VARCHAR2(8);
v_dFE_SOLICITUD DATE;
  BEGIN
    --
    SELECT B.SOLICITADO_DNI, A.FECHA_CRE
    INTO v_vDNI_TITULAR, v_dFE_SOLICITUD
    FROM PVQR_DOCUMENTOS A
    LEFT JOIN PVQR_DETALLES_DOCUMENTO B ON A.CODIGO = B.CODIGO_DOC
    WHERE B.SOLICITADO_DNI = p_vDNI_TITULAR
    AND B.CODIGO_SOL = p_nNU_SOLICITUD;
    --
    IF  v_vDNI_TITULAR = p_vDNI_TITULAR AND
        TRUNC(v_dFE_SOLICITUD) = TRUNC(p_dFE_EMISION) THEN
        RETURN 'OK';
    ELSE
        RETURN 'NO_OK';
    END IF;
    --
  EXCEPTION
  WHEN OTHERS THEN
    RETURN SQLERRM;
  END;

END;