create database pdw;
use pdw;

create table model( model_id int primary key identity (1,1) , model_name varchar(225) , price float );

create table brand ( id int primary key identity(1,1), brand_name varchar(225))

create table country(cid int primary key identity(1,1) , counrty_name varchar(225))

create table seller( seller_id int primary key identity(1,1), seller_name  varchar(80))

create table dim_date ( date_id int primary key identity(1,1) ,year int , month int ,day int)

create table sale_fact( sale_id int primary key identity(1,1) , model_id int  references model(model_id),
cid int references country(cid), date_id int references dim_date(date_id), seller_id int references seller(seller_id),
quantity int , sale_cost float )

 SELECT * FROM model;
