/*When selecting from a table, add 1 day to the date*/
create database script03;

use script03;

create table students
(
    id int auto_increment,
    surname varchar(30) not null,
    name varchar(20) not null,
    age int,
    createdAt timestamp,
    constraint students_pk
        primary key (id)
);

insert into students
(surname, name, age, createdAt) values
('Ivanov', 'Petr', 19,now()),
('Bond', 'James', 42,now()),
('Chan', 'Jackie', 52,now()),
('Adams', 'Brayan', 59,now()),
('Clinton', 'Hillary', 59,now());

select id,surname,name,date_add(createdAt,interval 1 day) 
    as correctedDate from students;