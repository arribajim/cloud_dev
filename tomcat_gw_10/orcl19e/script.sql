alter session set "_ORACLE_SCRIPT"=true;

create user gwUser identified by Gu1d3W1r32020;
grant dba to gwUser;
DROP TABLESPACE CC_ADMIN_DAT  INCLUDING CONTENTS;
DROP TABLESPACE CC_NDX  INCLUDING CONTENTS;
DROP TABLESPACE CC_OP_DAT  INCLUDING CONTENTS;
DROP TABLESPACE CC_STAG_DAT  INCLUDING CONTENTS;
DROP TABLESPACE CC_TYPE_DAT  INCLUDING CONTENTS;
DROP TABLESPACE CC_LOB_DAT  INCLUDING CONTENTS;

create tablespace CC_ADMIN_DAT datafile '/opt/oracle/oradata/ORCLCDB/admincc.dat' size 100M autoextend on;
create tablespace CC_NDX datafile '/opt/oracle/oradata/ORCLCDB/indexcc.dat' size 100M autoextend on;
create tablespace CC_OP_DAT datafile '/opt/oracle/oradata/ORCLCDB/opcc.dat' size 100M autoextend on;
create tablespace CC_STAG_DAT datafile '/opt/oracle/oradata/ORCLCDB/stagingcc.dat' size 100M autoextend on;
create tablespace CC_TYPE_DAT datafile '/opt/oracle/oradata/ORCLCDB/typelistcc.dat' size 100M autoextend on;
create tablespace CC_LOB_DAT datafile '/opt/oracle/oradata/ORCLCDB/loblistcc.dat' size 500M autoextend on;

GRANT CONNECT TO gwUser;
GRANT alter session TO gwUser;
GRANT create operator TO gwUser;
GRANT create procedure TO gwUser;
GRANT create sequence TO gwUser;
GRANT create session TO gwUser;
GRANT create table TO gwUser;
GRANT create trigger TO gwUser;
GRANT create view TO gwUser;
GRANT query rewrite TO gwUser;
GRANT select any dictionary TO gwUser;

alter user gwUser quota unlimited on CC_ADMIN_DAT;
alter user gwUser quota unlimited on CC_NDX;
alter user gwUser quota unlimited on CC_OP_DAT;
alter user gwUser quota unlimited on CC_STAG_DAT;
alter user gwUser quota unlimited on CC_TYPE_DAT;
alter user gwUser default tablespace CC_OP_DAT;
SELECT * FROM all_users where username like '%GW%';