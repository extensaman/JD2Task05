/*8. Replace the worker's salary in the table
  with 1000 if it is 900 and 1500 otherwise*/

create database script08;

use script08;

create table employees (
        id int auto_increment,
        surname varchar(50) not null,
        name varchar(40) not null,
        age int,
        salary decimal (8,2),
        constraint employees_id_pk
        primary key(id)
);

insert into employees
(surname, name, age, salary) values
('Ivanov', 'Petr', 19,900),
('Bond', 'Ivan', 42,2045.893),
('Chan', 'Jackie', 52,1459.341),
('Adams', 'IvaN', 59,900),
('Lopatin', 'Nikol', 32,3900.9),
('Cruze', 'petR', 29,2189.9999);

select * from employees;

update employees set
salary = if(salary = 900,1000,1500);

select * from employees;