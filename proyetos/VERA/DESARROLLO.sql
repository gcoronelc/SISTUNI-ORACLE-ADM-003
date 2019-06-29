create table clients(
  dni_clients varchar2(8) primary key,
  nom_clients varchar2(100) ,
  dir_clients varchar2(120),
  district_clients varchar2(50) ,
  sex_clients varchar2(1)
);

create table empleado(
  cod_empleado varchar2(8) primary key,
  nom_empleado varchar2(100),
  dni_empleado varchar2(8) ,
  sex_empleado varchar2(1) ,
  dir_empleado varchar2(120) ,
  district_empleado varchar2(50) ,
  fnac_empleado varchar2(15),
  fcontrato_empleado varchar2(15),
  sueldo_empleado number ,
  cargo_empleado varchar2(30) 
);

create table plato(
  cod_plato varchar2(8) primary key ,
  nom_plato varchar(50) ,
  tprep_plato varchar2 (20),
  precio_plato number
);

create table orden(
  cod_orden varchar2(8) primary key,
  cant_orden number,
  desc_orden varchar2(100),
  mesa_orden number,
  cod_plato varchar2(8),
  dni_clients varchar2(8),
  fecha_orden varchar2(15),
  cod_empleado varchar2(8)
);

create table comanda(
  cod_comanda varchar2(8) primary key,
  cod_orden varchar2(8),
  desc_orden varchar2(50) ,
  precio_plato number
);

create table pago(
  cod_pago varchar2(8) primary key,
  monto number,
  fecha_pago varchar2(15),
  cod_orden varchar2(8)
);

alter table orden  add constraint FK1_cod_plato foreign key (cod_plato) references plato(cod_plato);
alter table comanda   add constraint FK2_cod_orden foreign key(cod_orden) references orden (cod_orden);
alter table orden add constraint FK3_dni_clients foreign key(dni_clients) references clients (dni_clients);
alter table orden  add constraint FK4_cod_empleado foreign key(cod_empleado) references empleado (cod_empleado);
alter table pago add constraint FK5_cod_orden foreign key (cod_orden) references orden (cod_orden);
describe orden;
ALTER TABLE comanda DROP column cod_orden ;
select * from pago;
drop TABLE orden ; 

insert into clients values('88888880', 'Andrea Reyes Navarro' , 'Calle 0' , 'San Juan de Lurigancho'	, 'F');
insert into clients values('88888881', 'Mirella Sullon del Valle'		,  'Calle 1'	, 'Villa el Salvador'	, 'M');
insert into clients values('88888882', 'Juan Napan Manrique' , 'Calle 2'	, 'San Borja'		, 'M');
insert into clients values('88888883', 'Salvador Quintana Estrella'	, 'Calle 3'	, 'San Isidro'		, 'M');
insert into clients values('88888884', 'Joselyn Miranda Cerna'		, 'Calle 4'	, 'San Martin de Porres'	, 'F');
insert into clients values('88888885', 'Roberto Añanca Huamán' , 'Calle 5'	, 'San Juan Lurigancho'	, 'M');
insert into clients values('88888886', 'Jazmin de la Cruz Saco'	, 'Calle 6'	, 'Los Olivos'		, 'F');
insert into clients values('88888887', 'Mariano Alva Henostroza' , 'Calle 7'	, 'San Miguel'		, 'M');
insert into clients values('88888888', 'Karina Pachauri Rivera'	, 'Calle 8'	, 'San Luis'	, 'F');
insert into clients values('88888889', 'Jimena Huilca Davila'	, 'Calle 9'	, 'San Juan de Miraflores'	, 'F');
commit;
insert into empleado values('E0000000', 'Kevin Yalle Diaz'		, '77777770', 'M', 'Calle 17'	,  'Carabayllo'		,'1990-06-20', '2019-02-17', 1400	, 'Cajero');
insert into empleado values('E0000001', 'Ricardo Moran Luna'		, '77777771', 'M', 'Calle 28'	,  'San Martin de Porres'	,'1999-03-11', '2019-01-01', 1500		, 'Cajero');
insert into empleado values('E0000002', 'Hans Elce Rano'	, '77777772', 'M', 'Calle 2'	,  'San Martin de Porres'	, '1998-02-12', '2019-01-11', 1900		, 'Cocinero');
insert into empleado values('E0000003', 'Rony Hancco Carpio'	, '77777773', 'M', 'Calle 3'	, 'Callao', '1997-01-13', '2019-01-17' , 1200		, 'Mozo');
insert into empleado values('E0000004', 'Juan Reyes Collque'	, '77777774', 'M', 'Calle 8'	,  'San Juan Lurigancho'	,'1996-12-14', '2019-01-21', 800		, 'Ayudante');
insert into empleado values('E0000005', 'Mariana Luna García'		, '77777775', 'F', 'Calle 5'	, 'Chaclacayo' ,'1995-11-15', '2019-01-23', 1300	, 'Mozo');
insert into empleado values('E0000006', 'Ronaldo Nolasco Chavez'		, '77777776', 'M', 'Calle 6'	, 'Ventanilla'		,'1994-10-16', '2019-02-03', 1100		, 'Mozo');
insert into empleado values('E0000007', 'Marisol Rocha Jimenez'		, '77777777', 'F', 'Calle 69'	, 'San Juan Lurigancho'	, '1993-09-17', '2019-02-07', 1600 , 'Cajero');
insert into empleado values('E0000008', 'David Ramos Salazar'		, '77777778', 'M', 'Calle 18'	, 'San Martin de Porres'	, '1992-08-18', '2019-02-11',  2100	, 'Cocinero');
insert into empleado values('E0000009', 'Celeste Jara Cabanillas'	, '77777779', 'F', 'Calle 19'	, 'San Juan Lurigancho'	, '1991-07-19', '2019-02-13', 2000 , 'Cocinero');
commit;
insert into plato values('P0000000', 'Lomo saltado'	, '0:30:00', 15);
insert into plato values('P0000001', 'Ceviche' , '0:30:00',10);
insert into plato values('P0000002', 'Arroz con Pollo', '2:00:00', 18);
insert into plato values('P0000003', 'Arroz Chaufa', '1:30:00',15);
insert into plato values('P0000004', 'Tallarines Rojos'	, '1:30:00',17);
insert into plato values('P0000005', 'Lentejas con Pescado'		, '1:00:00',18);
insert into plato values('P0000006', 'Papa Rellena'	, '0:40:00',20);
insert into plato values('P0000007', 'Causa de Pollo'	, '0:40:00',12);
insert into plato values('P0000008', 'Picante de Carne'	, '1:00:00',16);
insert into plato values('P0000009', 'Carapulcra' , '1:30:00', 19);
commit;
insert into orden values('OR000000', 5, '6 platos de Lomo saltado'	, 10, 'P0000000', '88888884', '2019-02-28', 'E0000006');
insert into orden values('OR000001',  2, '4 platos de Ceviche'		, 01, 'P0000001', '88888883','2019-01-01', 'E0000003');
insert into orden values('OR000002', 1, '3 platos de Arroz con Pollo'	, 02, 'P0000002', '88888882','2019-01-06',  'E0000003');
insert into orden values('OR000003', 3, '3 platos de Arroz Chaufa'	, 03, 'P0000003', '88888881','2019-01-11',  'E0000003');
insert into orden values('OR000004',  4, '4 platos de Ceviche'		, 04, 'P0000001', '88888880', '2019-01-17','E0000005');
insert into orden values('OR000005',  2, '2 platos de Lentejas'		, 05, 'P0000005', '88888881', '2019-01-23','E0000005');
insert into orden values('OR000006',  2, '2 platos de Papa Rellena'	, 06, 'P0000006', '88888888', '2019-02-02','E0000005');
insert into orden values('OR000007',  3, '3 platos de Arroz con Pollo'	, 07, 'P0000002', '88888880','2019-02-09', 'E0000006');
insert into orden values('OR000008',  1, '2 platos de Lentejas'		, 08, 'P0000005', '88888882','2019-02-19', 'E0000006');
insert into orden values('OR000009',  1, '1 platos de Arroz Chaufa'	, 09, 'P0000003', '88888885','2019-02-19', 'E0000006');
commit;
insert into comanda values('CM000000', 'OR000000', '6 platos de Lomo saltado', 30);
insert into comanda values('CM000001', 'OR000001', '4 platos de Ceviche', 20);
insert into comanda values('CM000002', 'OR000002', '3 platos de Arroz con Pollo', 24);
insert into comanda values('CM000003', 'OR000003', '3 platos de Arroz Chaufa', 25);
insert into comanda values('CM000004', 'OR000004', '4 platos de Ceviche', 23);
insert into comanda values('CM000005', 'OR000005', '2 platos de Lentejas', 19);
insert into comanda values('CM000006', 'OR000006', '2 platos de Papa Rellena', 18);
insert into comanda values('CM000007', 'OR000007', '3 platos de Arroz con Pollo', 18);
insert into comanda values('CM000008', 'OR000008', '2 platos de Lentejas', 21);
insert into comanda values('CM000009', 'OR000009', '1 platos de Arroz Chaufa', 22);
commit;
insert into pago values('PY000000', 100, '2019-06-21', 'OR000000');
insert into pago values('PY000001', 200,  '2019-05-11'	, 'OR000001');
insert into pago values('PY000002',50, '2019-07-05'	, 'OR000002');
insert into pago values('PY000003',26, '2019-06-17'	, 'OR000003');
insert into pago values('PY000004',115,  '2019-05-27'	, 'OR000004');
insert into pago values('PY000005',118, '2019-05-28'	, 'OR000005');
insert into pago values('PY000006',117,'2019-06-02', 'OR000006');
insert into pago values('PY000007', 20, '2019-07-09'	, 'OR000007');
insert into pago values('PY000008', 26, '2019-05-29'	, 'OR000008');
insert into pago values('PY000009',60, '2019-06-16'	, 'OR000009');

select*from clients;
select*from empleado;
select * from plato;
select * from orden;
select * from comanda;
select * from pago;
commit;


create tablespace datos datafile  'I:\app\admoracle\oradata\ventas\datos.dbf' size 150m ;
create tablespace indexes datafile  'I:\app\admoracle\oradata\ventas\indexes.dbf' size 150m ;

create role ADMIN1 IDENTIFIED BY admin1;
create role ADMINS2  IDENTIFIED BY admins2;
create role ADMINS3 IDENTIFIED BY admins3;

grant select,insert,update on system.empleado to ADMIN1,ADMINS2,ADMINS3;

create user Grupo1 identified by gropu1;
grant create session, ADMIN1 to  Grupo1 ;

create user Grupo2 identified by group2;
grant create session,ADMINS2 to  Grupo2 ;

select  name, value from v$parameter where name like 'DB';
select  VIEW_name from DBA_VIEWS where VIEW_name LIKE '%AUDIT%'
ORDER BY VIEW_name ;

--4. Definir la audioria al sistema

ALTER SYSTEM SET audit_trail = "DB" SCOPE=SPFILE;

--5. Implmentar la auditorma (ver que usuario ha modificado algun campo) del mismo oracle

AUDIT SESSION;

audit update table by Grupo1;

AUDIT ROLE;

SELECT * FROM DBA_AUDIT_OBJECT;
SELECT * FROM V$SESSION WHERE USERNAME ='SYSTEM';