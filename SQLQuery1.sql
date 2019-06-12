--create table--
create table emp(empid int primary key not null,empname varchar(50)not null,empage int)

insert into emp values(2,'arul',23)

select * from emp

--using identity for auto increament values---

create table stud(rollnum int identity(801,1)primary key,studname varchar(20),studage int)

insert into stud values('arul',23)
insert into stud values('arthi',22)
insert into stud values('saran',22)
insert into stud values('mary',23)

select * from stud
--using where----
select * from stud where rollnum=802
select * from stud where studname='arul'
select * from stud where studage=22

---create another table---

create table cust(cid int primary key not null,custname varchar(20)not null,custphone varchar(10),custdob datetime)

insert into cust values(101,'murugan',9791863005,'19960517')
insert into cust values(102,'jeeva',9659127425,'19981028')

select * from cust

select * from cust where cid=101

select * from cust where custdob='19960517'

select * from cust where custphone=9791863005

--create car table using default,check,unique-----
create table cars(carid varchar(20)not null primary key,carcolor varchar(50)not null default'white',carprice int not null check(carprice>10000),regno varchar(50)not null unique)

insert into cars values(101,'blue',11000,7627)
insert into cars values(102,'',12000,8080)

insert into cars values(103,'  ',13000,9098)
--anoter insert commants---
insert into cars(carid,carprice,regno)values(2,12000,9898)



---update commants---
update cars set carprice=20000 where carid=2
update cars set carcolor='green' where carid=102
update cars set carcolor='red'where carid=103
--delete command---
delete from cars where carid=2

--change the type int to varchar-----

create table empy(empid int,empname varchar(30))

alter table empy alter column empid varchar(30)

select * from empy

--add a new column to the empy table empage of type int---
alter table empy add empage int

--drop a column from the empy table empage---
alter table empy drop column empage

---create table stud and drop the constriant------
create table stud1(studid int primary key,studname varchar(30))

--delete table hole table--

drop table stud1

--drop a constriant by name----

alter table stud drop constraint PK__stud__E270950B491217AF 
alter table stud1 drop constraint PK__stud1__E270950B1FF90F8A

--create a constraint with name----
create table cust(custid int constraint my_pk09 primary key,custname varchar(50),age int)

create table demo(custid int constraint my_pk01 primary  key,custage int

drop table demo

---create table for foregin key quary----

create table customer(custid int primary key,cname varchar(20)not null,cphone varchar(50))

--with foreign key---
create table orders(orderid int primary key,cid int foreign key references customer(custid),quantity int)

insert into customer values(101,'arul',9791863005)
insert into customer values(102,'jeeva',9659127425)

select * from customer
insert into orders values(1001,101,100)

select * from orders

---primary key and foreign key with alter table command---

create table demo(custid int,cname varchar(50),constraint my_pk1 primary key(custid))

create table demo1(custid int not null,cname varchar(50))

insert demo1 values(101,'arul')
insert demo1 values(102,'murugan')

select * from demo1

alter table demo1 add constraint my_pk2 primary key(custid)

create table order1(orderid int primary key,cid int,quantity int)

insert into order1 values(101,101,3400)
insert into order1 values(102,102,20000)

select * from order1

--alter talble and add foreign key---

alter table order1 add constraint my_fk foreign key(orderid)references demo1(custid) 