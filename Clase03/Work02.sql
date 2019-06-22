SQL> select group#, members, status, sequence# from v$log;

    GROUP#    MEMBERS STATUS            SEQUENCE#
---------- ---------- ---------------- ----------
         1          1 CURRENT                  10
         2          1 INACTIVE                  8
         3          1 INACTIVE                  9
		 
alter database 
add logfile group 4(
	'I:\APP\ORACLEHOMEUSER1\ORADATA\ORCL\REDO04A.CTL',
	'I:\APP\ORACLEHOMEUSER1\ORADATA\ORCL\REDO04B.CTL'
)
size 10M;

SQL> select group#, members, status, sequence# from v$log;

    GROUP#    MEMBERS STATUS            SEQUENCE#
---------- ---------- ---------------- ----------
         1          1 INACTIVE                 10
         2          1 CURRENT                  11
         3          1 INACTIVE                  9
         4          2 UNUSED                    0
		 
		 
SQL> alter system switch logfile;

Sistema modificado.

SQL> select group#, members, status, sequence# from v$log;

    GROUP#    MEMBERS STATUS            SEQUENCE#
---------- ---------- ---------------- ----------
         1          1 INACTIVE                 10
         2          1 ACTIVE                   11
         3          1 INACTIVE                  9
         4          2 CURRENT                  12		 
		 
		 
alter database drop logfile group 4;



		 