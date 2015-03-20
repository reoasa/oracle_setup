set echo on;

CONNECT SYSTEM/MANAGER AS SYSDBA

spool 05_create_user.log

CREATE USER oracle
 IDENTIFIED BY oracle
 DEFAULT TABLESPACE USERS
 TEMPORARY TABLESPACE TEMP;
 GRANT CONNECT,RESOURCE TO oracle;

disconnect;
spool off;

exit;