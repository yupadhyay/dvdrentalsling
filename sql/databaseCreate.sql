create table customer_info(cust_id varchar(20), first_name varchar(20), middle_name varchar(20), last_name varchar(20), sex char(1), birth date);
create table customer_contact(cust_id references customer_info.cust_id varchar(20), phone_number varchar(20), email varchar(20));
create 