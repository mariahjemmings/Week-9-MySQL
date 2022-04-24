create database if not exists user;

use user;

drop table if exists comments;
drop table if exists posts;
drop table if exists user;

CREATE TABLE user (
id int(6) not null auto_increment,
username varchar(12) not null,
first_name varchar(15) not null,
last_name varchar(15) not null,
password varchar(12) not null,
city varchar(20) not null,
state char(2) not null,
birthdate date,
primary key(id)



);

CREATE TABLE posts (
id int(6) not null auto_increment,
post_date DATE,
post_time TIME,
post_content varchar(150),
user_id int(6),
primary key(id),
foreign key(user_id) references user(id)

);

CREATE TABLE comments (
id int(6) not null auto_increment,
comment_date DATE,
comment_time TIME,
comment_content varchar(150),
user_id int(6),
posts_id int(6),
primary key(id),
foreign key(user_id) references user(id),
foreign key(posts_id) references posts(id)

);