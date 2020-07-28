create table t_days(
    day_id number not null,
    day_of_week number,
    day_of_month number,
    day_of_quarter number,
    day_of_year number,
constraint pk_t_days primary key (day_id)
);
