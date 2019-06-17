
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

 --where---
 select * from dbo.Customers
 select city,CompanyName from dbo.Customers
 select companyname,city from dbo.Customers WHERE City='paris'--(using single qutoes only)--

 select contactName,address,city from dbo.Customers where city='berlin'
 
 ---like and wildcard characters---% - The percent sign represents zero, one, or multiple characters
--(_ - The underscore represents a single character)
 select companyname from dbo.Customers where CompanyName LIKE 's%';--(Finds any values that start with "s")
 
 select companyname from dbo.Customers where CompanyName like '%s'; --(Finds any values that end with "s")
 
 select companyname from dbo.Customers where CompanyName like '%s%';--(Finds any values that have "or" in any position)
 select companyname from dbo.Customers
 select companyname from dbo.Customers where CompanyName like '_P%';--(Finds any values that have "p" in the second position)

 select companyname from dbo.Customers where CompanyName like 'a__%';--(Finds any values that start with "a" and are at least 3 characters in length)

 --matching from a list--
 select customerid from dbo.Customers 
 select customerid from dbo.Customers where CustomerID like 'FRAN[RK]';

 select customerid from dbo.Customers where CustomerID like '[a-z]%';

 select customerid from dbo.Customers where CustomerID like 'FRAN[^R]';--(Represents any character not in the brackets)

 --between--(The BETWEEN operator selects values within a given range.)
 --(The values can be numbers, text, or dates.)
 --(The BETWEEN operator is inclusive: begin and end values are included.)
 select * from dbo.Employees

 select lastname,firstname,postalcode from dbo.Employees where PostalCode between '98103' and '98999';
 
 --not between--
 --(To display the products outside the range of the previous example, use NOT BETWEEN):

 select lastname,firstname,postalcode from dbo.Employees where PostalCode not between '98103' and '98999';

 --testing fro null values--
 --(The expression to test for a NULL value.)

 select Lastname,firstname,region from dbo.Employees where region is null; 
   
 --three level logic(true,false,null)--
--(AND) requires both conitions tobe true--

select Lastname,city,postalcode from dbo.Employees where City='seattle' and PostalCode like'9%';

--(OR)only requires one condition tobe true--

select lastname,city,postalcode from dbo.Employees where  city='seattle' or Postalcode like '9%';

--(NOT)negates the expression--

select lastname,city,postalcode from dbo.Employees where city not like 'seattle';

--operator precedence:NOT,OR,AND----
select * from dbo.Customers
select lastname,firstname,city from dbo.Employees where LastName LIKE '%s' AND City NOT LIKE 'seattle';

select CustomerID,country from dbo.Customers where Country='france' OR Country='spain' 

select customerID,country from dbo.Customers where Country like 'U%'

---using into match in a list of elements----

select CustomerID,country from dbo.Customers where Country IN ('france','spain')

--nested subquery---
select customerid,country from dbo.Customers where country IN (select DISTINCT country from dbo.Customers where Country like 'U%');

-- in which a subquery (that returns a list of elements)--
select CustomerID from dbo.Customers where CustomerID NOT IN (select DISTINCT CustomerID from dbo.Orders)

  use test_Arul
  go

--SQL join---

create table custtomer(cid int primary key,cname varchar(50),cphone varchar(50))