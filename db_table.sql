

-- create database
create database hackathon;

--use db
use hackathon;


--create user table
create table user(
id int primary key auto_increment,
full_name varchar(50),
email varchar(30),
password varchar(100),
created_time date);

--create categories table
create table categories
(
id int primary key auto_increment,
title varchar(30),
description varchar(50)
);


--create blogs table
create table blogs
(
id int primary key auto_increment,
title varchar(20),
contents varchar(30),
created_time date,
user_id int,
category_id int,
FOREIGN KEY (user_id) REFERENCES user(id),
FOREIGN KEY (category_id) REFERENCES categories(id)
);