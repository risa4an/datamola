create table t_quarters(
    quarter_id number not null,
    quarter_of_year number,
    quarter_begin date,
    quarter_end date,
constraint pk_t_quarters primary key(quarter_id)
);
