/*2. How to find duplicates in an email field?*/
create database script02;

use script02;

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
('Bond', 'James', 42,'bond@james.com'),
('Chan', 'Jackie', 52,'al234@gmail.com'),
('Adams', 'Brayan', 59,'adams@idea.lt'),
('Lopatin', 'Nikol', 32,'al234@gmail.com'),
('Cruze', 'Donald', 29,'adams@idea.lt');

select email, count(email) from employees
group by email
having count(email) > 1;