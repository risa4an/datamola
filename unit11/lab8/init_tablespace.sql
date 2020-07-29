create tablespace ts_a1_data_01
datafile '/oracle/u01/app/oracle/product/19.0.0/dbhome_1/dbs/ts_a1_data_01.dat'
size 150M
autoextend on next 50M logging
segment space management auto
extent management local autoallocate;

create user U_SA_A1
identified by "%PWD%"
default tablespace ts_a1_data_01;

grant connect, resource to U_SA_A1;

create tablespace ts_dw_cl
datafile '/oracle/u01/app/oracle/product/19.0.0/dbhome_1/dbs/ts_dw_cl.dat'
size 100M
autoextend on next 50M logging
segment space management auto
extent management local autoallocate;

create user U_DW_CL
identified by "%PWD%"
default tablespace ts_dw_cl;

grant connect, resource, create view to U_DW_CL;

create tablespace ts_dw_data
datafile '/oracle/u01/app/oracle/product/19.0.0/dbhome_1/dbs/ts_dw_data.dat'
size 150M
autoextend on next 50M logging
segment space management auto
extent management local autoallocate;

create user u_dw_data
identified by "%PWD%"
default tablespace ts_dw_data;

grant connect, resource to U_DW_DATA;

create tablespace ts_dw_str_cls
datafile '/oracle/u01/app/oracle/product/19.0.0/dbhome_1/dbs/ts_dw_str_cls.dat'
size 150M
autoextend on next 50M logging
segment space management auto
extent management local autoallocate;

create user U_SAL_DW_CL
identified by "%PWD%"
default tablespace ts_dw_str_cls;

grant connect, resource to U_SAL_DW_CL;

create tablespace ts_sal_cl
datafile '/oracle/u01/app/oracle/product/19.0.0/dbhome_1/dbs/ts_sal_cl.dat'
size 150M
autoextend on next 50M logging
segment space management auto
extent management local autoallocate;

create user U_SAL_CL
identified by "%PWD%"
default tablespace ts_sal_cl;

grant connect, resource, create view to U_SAL_CL;

create tablespace ts_fct_session
datafile '/oracle/u01/app/oracle/product/19.0.0/dbhome_1/dbs/ts_fct_session.dat'
size 150M
autoextend on next 50M logging
segment space management auto
extent management local autoallocate;

create user U_FCT_SESSION
identified by "%PWD%"
default tablespace ts_fct_session;

grant connect, create view, resource,  to U_SA_DATA;

create tablespace ts_dim_data
datafile '/oracle/u01/app/oracle/product/19.0.0/dbhome_1/dbs/ts_dim_data.dat'
size 150M
autoextend on next 50M logging
segment space management auto
extent management local autoallocate;

create user U_DIM_DATA
identified by "%PWD%"
default tablespace ts_dim_data;

grant connect,CREATE VIEW, resource to U_DIM_DATA;
