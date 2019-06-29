--- Creacion de usuarios ----
--- Se crea un Usuario para BackOffice
CREATE USER app_tcladmbo IDENTIFIED BY "NovatronicGid$"
  DEFAULT TABLESPACE users
  TEMPORARY TABLESPACE temp;
  
GRANT CONNECT TO app_tcladmbo

--- Se crea un usuario para el CORE
CREATE USER app_tcladmco IDENTIFIED BY "NovatronicGidco$"
  DEFAULT TABLESPACE users
  TEMPORARY TABLESPACE temp
  
GRANT CONNECT TO app_tcladmco
