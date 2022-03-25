/*1. How to select records with odd Ids?*/

create database task01;

use task01;

create table students
(
  id int auto_increment,
  surname varchar(30) not null,
  name varchar(20) not null,
  age int,
  constraint students_pk
  primary key (id)
);

insert into students (surname, name, age) values
('Ivanov', 'Petr', 19),
('Bond', 'James', 42),
('Chan', 'Jackie', 52),
('Adams', 'Brayan', 59),
('Clinton', 'Hillary', 59);

insert into students (surname, name) values
('Pivovaropa', 'Kate'),
('Brown', 'Jasmine');

select id, surname, name, age from students
where id % 2 != 0;