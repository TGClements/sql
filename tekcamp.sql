-- Step 1
show databases;
select * from students;

-- Step 2
show databases;

create database tc1_tyler_clements_;

-- Step 3/4
show databases;

use tc1_tyler_clements_;
show tables;

create table tekcampers as
select * from students.tekcamp01;

select * from tekcampers;

-- Step 5
alter table tekcampers
add primary key (id);

insert into tekcampers (id, first_name, last_name, gender, education)
values 
(28, 'Aaron', 'White', 'M', NULL), 
(29, 'Cody', 'Clark', 'M', 'Some College'), 
(30, 'Devon', 'Brewster', 'M', 'Some College'), 
(31, 'Gotham', 'Katta', 'M', 'Bachelor’s Degree'), 
(32, 'John', 'Bozarov', 'M', 'Bachelors degree'), 
(33, 'John', 'Kol', 'M', NULL), 
(34, 'Justin', 'Cheng', 'M', 'Some College'), 
(35, 'Kevin', 'Keesee', 'M', 'High School Diploma'), 
(36, 'Monica', 'Howard', 'F', NULL), 
(37, 'Tyler', 'Clements', 'M', 'Bachelors Degree'),
(38, 'Vimala', 'Murthy', 'F', 'Masters Degree');

select * from tekcampers;

-- Step 6
delete from tekcampers 
where 
id in (9, 20, 26);

select * from tekcampers;

-- Step 7
update tekcampers
set gender = 'F'
where id in (1,3,4,5,10,11,13,17,27,36,38);

update tekcampers
set gender = 'M'
where id in (2,6,7,8,12,14,15,16,18,19,21,22,23,24,25);

update tekcampers
set education = 'High School Diploma'
where id in (14,25,35);

update tekcampers
set education = 'Some College'
where id in (19,24,12,7,29,15,34,30);

update tekcampers
set education = 'Associates Degree'
where id in (8, 17);

update tekcampers
set education = 'Bachelors Degree'
where id in (1,6,16,18,4,31,5,11,32,37);

update tekcampers
set education = 'Masters Degree'
where id in (3,38,21);

update tekcampers
set education = 'Doctorate'
where id in (10);

update tekcampers
set education = NULL
where id in (13,23,27);

select * from tekcampers;

-- Step 8
select * from tekcampers
where length(last_name) > 7;

select * from tekcampers
order by first_name;

select * from tekcampers
order by last_name;

select * from tekcampers
where gender = 'M';

select * from tekcampers
where gender = 'F';

select * from tekcampers
where education = 'Masters Degree';

select * from tekcampers
where education = 'Bachelors Degree';

select * from tekcampers
where education = 'Associates Degree';

select * from tekcampers
where education = 'Some College' OR education = 'High School Diploma' OR education is NULL;

-- Step 9
create table ta_Mark_Bennett_ as
select * from tekcampers
where id in (28,8,32,34,35,21,37,29,31,23,27,25);

show tables;
select * from ta_Mark_Bennett_;

-- Step 10
create table hobbies (id int NOT NULL auto_increment, hobby varchar(255) NOT NULL, primary key(id));
show tables;

insert into hobbies (id, hobby)
values 
(1, 'Reading'),
(2, 'Motorcycle Riding'),
(3, 'Video Games'),
(4, 'Golfing'),
(5, 'Cattle Rustling'),
(6, 'Gardening'),
(7, 'Aerial Yoga'),
(8, 'Running'),
(9, 'Working Out'),
(10, 'Pickle Ball'),
(11, 'Engineering Projects'),
(12, 'Jiu Jutsu'),
(13, 'Writing'),
(14, 'Cooking'),
(15, 'Eating'),
(16, 'Listening to Music'),
(17, 'Hockey'),
(18, 'Soccer'),
(19, 'Longboarding'),
(20, 'Growing Hot Peppers');

select * from hobbies;

select * from tekcampers;

alter table tekcampers add hobbyid int;
alter table tekcampers add foreign key (hobbyid) references hobbies(id);

update tekcampers
set hobbyid = 1
where last_name in ('Swigert', 'Betts');

update tekcampers
set hobbyid = 2
where last_name in ('Sieffert');

update tekcampers
set hobbyid = 3
where last_name in ('Castiglione', 'Keesee', 'Torres');

update tekcampers
set hobbyid = 4
where last_name in ('Rice');

update tekcampers
set hobbyid = 5
where last_name in ('Chavez');

update tekcampers
set hobbyid = 6
where last_name in ('Murthy');

update tekcampers
set hobbyid = 7
where last_name in ('Shane');

update tekcampers
set hobbyid = 8
where last_name in ('Katta');

update tekcampers
set hobbyid = 9
where last_name in ('Ibanez');

update tekcampers
set hobbyid = 10
where last_name in ('Ladd');

update tekcampers
set hobbyid = 11
where last_name in ('Radhakrishnan');

update tekcampers
set hobbyid = 12
where last_name in ('Barbosa');

update tekcampers
set hobbyid = 13
where last_name in ('Kim');

update tekcampers
set hobbyid = 14
where last_name in ('Clark');

update tekcampers
set hobbyid = 15
where last_name in ('Waters', 'Cheng');

update tekcampers
set hobbyid = 16
where last_name in ('Ulysse');

update tekcampers
set hobbyid = 17
where last_name in ('Johnson');

update tekcampers
set hobbyid = 18
where last_name in ('Bozarov', 'Moreno');

update tekcampers
set hobbyid = 19
where last_name in ('Choat');

update tekcampers
set hobbyid = 20
where last_name in ('Clements');

update tekcampers
set hobbyid = 15
where hobbyid is NULL;

select * from tekcampers;

-- Step 11
select ta_Mark_Bennett_.first_name, ta_Mark_Bennett_.last_name, tekcampers.hobbyid, hobbies.hobby 
from ta_Mark_Bennett_ 
left join tekcampers on tekcampers.id = ta_Mark_Bennett_.id 
join hobbies on hobbies.id = tekcampers.hobbyid;

-- Step 12
alter table tekcampers add bootcamp varchar(255);
select * from tekcampers;

-- Step 13
show tables;
alter table ta_Mark_Bennett_ add bootcamp varchar(255);
select * from ta_Mark_Bennett_;