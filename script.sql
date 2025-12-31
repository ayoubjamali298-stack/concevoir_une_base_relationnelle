CREATE DATABASE blog_pro_db;
use blog_db;

CREATE TABLE user(
id INT auto_increment primary key,
name varchar(100) not null,
email varchar(100) unique,
password varchar(225) not null
);
create table category(
id int auto_increment primary key,
category_name varchar(100) not null
);

CREATE TABLE article(
id INT auto_increment primary key,
tittle varchar(225) not null,
content text not null,
status_public TINYINT(1) default 0,
date_publication date,
id_user INT,
id_category INT,
foreign key (id_user) references user(id),
foreign key (id_category) references category(id)	
);

CREATE TABLE comment(
id INT auto_increment primary key,
content text not null,
datep date,
id_user INT,
id_article INT,
foreign key (id_user) references user(id),
foreign key (id_article) references article(id)
);

create index namex on user (name);
create index tittlex on article (tittle);