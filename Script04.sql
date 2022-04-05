/*4. Select only unique names.*/
create database script04;

use script04;

create table employees (
        id int auto_increment primary key,
        surname varchar(50) not null,
        name varchar(40) not null,
        age int,
        email varchar(64) not null,
        constraint emploees_email_chk
        check (email LIKE ('%_@_%'))
);

insert into employees
(surname, name, age, email) values
('Ivanov', 'Petr', 19,'ivanov@mail.ru'),
('Bond', 'Ivan', 42,'bond@james.com'),
('Chan', 'Jackie', 52,'al234@gmail.com'),
('Adams', 'IvaN', 59,'adams@idea.lt'),
('Lopatin', 'Nikol', 32,'al234@gmail.com'),
('Cruze', 'petR', 29,'adams@idea.lt');

select distinct name from employees;

select id,surname,name,email from employees
group by name
having count(name) < 2;