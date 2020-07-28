create or replace table fct_session_rate_hh(
    s_id number(30,0),
    time_id date not null,
    user_id number(20,0) not null,
    content_id number(20,0) not null,
    genre_id number(3) not null,
    location_id number (3) not null,
    rate number (2,0) not null,
    rate_mark_id number(2),
    inser_dt date,
    constraint pk_fct_session_rate PRIMARY KEY (s_id) 
    );

CREATE OR REPLACE TABLE dim_user_scd(
	user_id number(20,0),
	telephone number(12) constraint unique not null,
	gender_id number(1),
	gender varchar2(6),
	age number(2),
	subscription_id number (2) not null,
	subscription varchar2(30),
	valid_from date not null,
	valid_to date not null,
	is_active varchar2(4) not null,
	insert_dt date not null,
        user_surid number(20),
CONSTRAINT 	pk_dim_user PRIMARY KEY (user_id)
);

CREATE OR REPLACE TABLE dim_datetime(
	time_id date not null,
	full_time varchar2(20),
	time_of_day varchar2(10),
	day_of_week varchar2(10),
	day_of_week_num varchar2(1),
	day_of_month varchar2(2),
	month_of_year varchar2(10),
	month_of_year_num varchar2(2),
	year_number varchar2(4),
	begin_time_of_day date,
	end_time_of_day date,
	begin_of_week date,
	end_of_week date,
	begin_of_month date,
	end_of_month date,
	begin_of_year date,
	end_of_year date
CONSTRAINT pk_dim_datetime PRIMARY KEY (datetime_id)
);

CREATE OR REPLACE TABLE dim_content(
	content_id number(20),
	title varchar2(20) not null,
	producer_id number(10) not null,
	producer_name number(20) not null,
	year varchar2(4) not null,
        insert_dt date,
        season number(3),
CONSTRAINT pk_dim_content PRIMARY KEY (content_id)
);



create table dim_location(
    location_id number(10),
    country_id number(3),
    country_code varchar2(3),
    country_name varchar2(20),
    region_id number(5),
    region_name varchar2(20),
    groupname number(8),
    groupname_id varchar2(20),
CONSTRAINT pk_dim_location PRIMARY KEY (location_id)
);

COMMIT;

ALTER TABLE fct_session_rate_hh 
	ADD CONSTRAINT fk_dim_user foreign key (user_id)
	references dim_user_scd (user_surid)
	on delete cascade
	deferrable
;

ALTER TABLE fct_session_rate_hh 
	ADD CONSTRAINT fk_dim_datetime foreign key (time_id)
	references dim_datetime (time_id)
	on delete cascade
	deferrable
;

ALTER TABLE fct_session_rate_hh 
	ADD CONSTRAINT fk_dim_content foreign key (content_id)
	references dim_content (content_id)
	on delete cascade
	deferrable
;



ALTER TABLE fct_session_rate_hh
	ADD CONSTRAINT fk_dim_location foreign key (location_id)
	references dim_location (location_id)
	on delete cascade
	deferrable
;

Commit;
