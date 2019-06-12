
--selection demo--

--general formate for nameing a database object---

--server.database.schema.object---
--to refer to employees table in northwind database---


select *  from Northwind.dbo.Employees

---don't specify server name for local system....use it in a network-----

use Northwind;
go

--diference betwhen go and ;--
--; is used for terminating sql statement | separator--
--go is used to terminate or close a sql batch(all declered local variables will retain their values with in a batch)---

select firstname,lastname from dbo.Employees

--SQL CONCATENATE (appending strings to one another) ---

select Lastname+','+Firstname from dbo.Employees

--aliasing column name---

select Lastname+','+Firstname as[FullName]from dbo.Employees
select Firstname+' '+Lastname  [Name]from dbo.Employees

 --as is optional--

 select Lastname+','+Firstname fullname from dbo.Employees

 --another aliasing option--

 select fullname=Lastname+','+Firstname from dbo.Employees

 --this is deprecated---

 select'fullname'=Lastname+','+Firstname from dbo.Employees

 --select and select DISTINCT---
 select title from dbo.Employees

 select DISTINCT title from dbo.Employees

