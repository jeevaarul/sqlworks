--SQL join---

create table customer1(cid int primary key,cname varchar(50),cphone varchar(50))

create table order1(oid int primary key,cid int,product varchar(50),quantity int)

insert into customer1 values(1,'aru',979186)

select * from customer1
update customer1 set cname='arul' where cid=1
insert into order1 values(1,1,'cpu',100)

select * from order1

--cross join---
select * from customer1 cross join order1 

--cross join differently--

select * from customer1,order1

---cross join with condition(a inner join)--

select * from customer1 c cross join order1 o where c.cid=o.cid

--a simple inner join----
use test_Arul
go

select * from customer1 join order1 on customer1.cid=order1.cid

--another way for inner join--
select * from customer1 c inner join order1 o on c.cid=o.oid

--show only selective colums using join---

select cid as cusid,cname as name,cphone as phone,o.oid as orderid ,o.product as product,o.quantity as quantity from customer1 c join order1 o on c.cid=o.oid


---full join use