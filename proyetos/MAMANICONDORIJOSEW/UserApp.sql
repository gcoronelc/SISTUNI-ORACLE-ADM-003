SELECT * FROM PVQR_CIUDADANOS;
SELECT * FROM PVQR_IMAGENES_CIUDADANO;
SELECT * FROM PVQR_DOCUMENTOS;
SELECT * FROM PVQR_DETALLES_DOCUMENTO;

SELECT '01' as CODE, OWNER_PORTAL.CC_PK_PORTAL_VERIFICAQR.FU_VALIDEZ_CERT('23408', '77771111', '17/06/2019') AS RESPUESTA 
FROM   DUAL;