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