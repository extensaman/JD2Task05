/*6. Get a list of employees with above-average salary*/
create database script06;

use script06;

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
('Ivanov', 'Petr', 19,1000.98),
('Bond', 'Ivan', 42,2045.893),
('Chan', 'Jackie', 52,1459.341),
('Adams', 'IvaN', 59,800),
('Lopatin', 'Nikol', 32,3900.9),
('Cruze', 'petR', 29,2189.9999);

select id, surname, name, age, salary from employees
where salary > (select AVG(salary) from employees);