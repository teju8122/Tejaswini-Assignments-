create database Organisation;
use Organisation;

create table employee(
id int primary key auto_increment,
name varchar(50),
dob date,
mobile varchar(10),
email varchar(50),
pan varchar(10),
aadhar varchar(12));

select*from employee;

insert into employee values(null,'Tejaswini','2002-12-08',7397842721,'teju@gmail.com','GTEYH3759O',688291274675);
select *from employee;

create table contacts(
id int primary key auto_increment,
eid int references employee(id),
mob2 varchar(10),
email2 varchar(50));

select * from contacts;
insert into contacts values(null, 1, '8483072721','teju123@gmail.com');
select * from contacts;

create table Communication(
id int primary key auto_increment,
eid int references employee(id),
address1 varchar(100),
address2 varchar(100));

select *from Communication;
insert into Communication values(null, 1,'Rtnagiri','Rajapur');
select * from Communication;

create table Registration(
id int primary key auto_increment,
eid int references employee(id),
date_of_joining date,
department varchar(20),
position varchar(10));

select * from Registration;
insert into Registration values(null, 1, '2015-08-12','Computer','HR');
Select* from Registration;

create table Department(
id int primary key auto_increment,
eid int references employee(id),
Department_name char(9),
loccation varchar(12));
drop table Department;

create table Department(
id int primary key auto_increment,
eid int references employee(id),
Department_name char(9),
loccation varchar(12));

insert into Department values(null, 1, 'Computer', 'Rajapur Oni');
select*from Department;

create table Payroll(
id int primary key auto_increment,
eid int references employee(id),
post char,
sallary int(10),
employee char(10));
drop table Payroll;

Select * from Payroll;
insert into Payroll values(null, 1, 'HR', 10000, 'Tejaswini');

create table Payroll(
id int primary key auto_increment,
eid int references employee(id),
post char,
sallary float(6),
employee char(10));
drop table Payroll;

create table Payroll(
id int primary key auto_increment,
eid int references employee(id),
post char(4),
sallary float(6),
employee char(10)); 
drop table Payroll;

create table Payroll(
id int primary key auto_increment,
eid int references employee(id),
post char(4),
sallary float(6),
employee char(10)); 

Select * from Payroll;
insert into Payroll values(null, 1, 'HR', 10000, 'Tejaswini');

select * from employee as a JOIN contacts as b ON 1 = null JOIN Registration as c on 1  = null
JOIN Department as d ON 1 = null JOIN Payroll as e ON 1 = Null;

select * from employee as p JOIN contacts as c ON p.p_id=c.id 
JOIN Communication as m ON p.p_id=m.id JOIN Registration as r ON p.p_id=r.id 
JOIN Department as d ON p.p_id=d.id JOIN Payroll as q ON p.p_id=q.id ;

