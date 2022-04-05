/*7. Given the tables 'workers' and 'departments'. Find all departments without a single worker*/
create database script07;

use script07;

create table departments (
    id int auto_increment,
    name varchar(50),
    constraint departments_id_pk
    primary key (id)
);

insert into departments
(name) values
('OkS'),
('HR'),
('OASU'),
('SR');

create table workers (
    id int auto_increment,
    surname varchar(50) not null,
    department_id int,
    constraint workwers_id_pk
    primary key (id),
    constraint workers_departments_id_fk
    foreign key (department_id) references departments(id)
);

insert into workers (surname, department_id) values
('Ivanov', 1),
('Petrov', 2);

select sample.name from
(select surname, name from workers
right join departments
ON  workers.department_id = departments.id) as sample
where sample.surname is null;