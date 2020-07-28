create table t_months(
    month_id number not null,
    month_of_year number,
    month_begin date,
    month_end date,
constraint pk_t_months primary key (month_id)
);
