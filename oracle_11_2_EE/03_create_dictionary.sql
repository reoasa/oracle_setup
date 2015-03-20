set echo on;
spool 03_create_dictionary.log;

CONNECT SYSTEM/MANAGER AS SYSDBA
@?/rdbms/admin/catalog.sql
@?/rdbms/admin/catproc.sql

CONNECT SYSTEM/MANAGER AS SYSDBA
@?/sqlplus/admin/pupbld.sql

DISCONNECT;
spool off;

exit;
