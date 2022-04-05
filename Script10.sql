/*10. rename table */

create database script10;

use script10;

create table bad_name
(
    id int auto_increment primary key,
    value varchar(50)
);

alter table bad_name
rename good_name;