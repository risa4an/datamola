create table u_sa_a1.t_users_sa
(
  telephone number(12),
  gender varchar2(6),
  age number(2),
  subscription varchar2(30),
  registration_date date,
  constraint pk_t_users_sa primary key (telephone, registration_date)
)
tablespace ts_a1_data_01;

create table u_sa_a1.t_content_sa
(
  title varchar2(20),
  producer_name varchar2(30),
  year number(4),
  season number(3),
  constraint pk_t_content_sa primary key (title, season)
)
tablespace ts_a1_data_01;
