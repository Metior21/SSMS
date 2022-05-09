create database sample2 
drop database sample2



create database sample2

alter database mallubabes modify name = Mallu space babes



sp_help

sp_renamedb 'mallubabes', 'Server'

select * from WOW
select * from qq

create table QQ
(ID INT PRIMARY KEY NOT NULL,
GMAIL nvarchar (50) not null,
Passwords nvarchar(50) null,
billu nvarchar(50) null,
)

alter TABLE WOW add constraint WOW__FK
foreign key () references QQ(BILLU)

ALTER TABLE

DROP TABLE QQ

CREATE TABLE QQ
(
)

DROP TABLE tblgender

CREATE TABLE tblPerson
(ID int primary key not null,
Fname nvarchar(50) not null,
email nvarchar(50) not null,
GenderID nvarchar (50) null,

)

select * from tblGender
Select * from tblperson

Insert into tblGender (ID, Gender)
values 
(1 , 'male'),
(2 , 'male'),
(3 , 'male'),
(4 , 'male')

delete from tblgender where id=1 ;
insert into tblgender 
(ID, Gender)
values
(2 , 'male'),
(3 , 'Male')

alter table tblperson alter column GenderID int

alter table tblperson add constraint tblPerson_GenderID_FK
Foreign key (GenderID) references tblGender(ID)


CREATE TABLE tblGender
(ID int not null primary key,
Gender nvarchar(50) not null,
)

delete from tblperson where genderID=33 

insert into tblPerson
(ID,fname,email,GenderID)
values
(3,'baga','b@b.com',1)


alter table tblperson 
add constraint DF_tblperson_GenderID
default 3 for GenderID



insert into tblperson 
(id, Fname, Email )
values
(4, 'mike', 'M@m.com')


select * from tblperson where email like '%c%'


select * from tblperson where genderID = 1

select * from tblperson order by genderID desc


create table tblSalary
(ID int not null primary key, FName nvarchar(50), Gender nvarchar(50), Salary int, City nvarchar(50)
)

select * from tblSalary

salect city, SUM(salary) as totalsalary from tblSalary group by city  

insert into tblSalary 
(ID, Fname, Gender, Salary, City )
Values
(2, 'pam', 'female', 30000, 'New york'),
(3, 'John', 'Male', 35000, 'London'),
(4, 'Sam', 'Male', 45000, 'London'),
(5, 'todd', 'Male', 28000, 'London')

insert into tblEmployee 
(ID, Fname, Gender, Salary, City )
Values
(56, 'Ben', 'Male', 7000, 'Sydney')

alter table tblSalary rename = 'tblEmployee'
sp_rename 'tblsalary', 'tblEmployee'


select * from tblEmployee


select city, SUM(salary) as TotalSalary 
from tblEmployee group by City

select city, gender, SUM(Salary) as Totalsalary 
from tblEmployee group by city , Gender order by city


select City, gender, SUM(Salary), COUNT(ID) 
as [total Employees] from tblEmployee
where gender = 'male'
group by city, gender
order by city

select City, Gender, SUM(Salary) as TotalSalary, Count(ID) as TotalEmployees
from tblEmployee
group by city, gender
having gender = 'male'
order by city

Create table tblDepartment
(
     ID int primary key,
     DepartmentName nvarchar(50),
     Location nvarchar(50),
     DepartmentHead nvarchar(50)
)
Go

Insert into tblDepartment values (1, 'IT', 'London', 'Rick')
Insert into tblDepartment values (2, 'Payroll', 'Delhi', 'Ron')
Insert into tblDepartment values (3, 'HR', 'New York', 'Christie')
Insert into tblDepartment values (4, 'Other Department', 'Sydney', 'Cindrella')
Go

Create table tblEmployee
(
     ID int primary key,
     Name nvarchar(50),
     Gender nvarchar(50),
     Salary int,
     DepartmentId int foreign key references tblDepartment(Id)
)
Go

Insert into tblEmployee values (1, 'Tom', 'Male', 4000, 1)
Insert into tblEmployee values (2, 'Pam', 'Female', 3000, 3)
Insert into tblEmployee values (3, 'John', 'Male', 3500, 1)
Insert into tblEmployee values (4, 'Sam', 'Male', 4500, 2)
Insert into tblEmployee values (5, 'Todd', 'Male', 2800, 2)
Insert into tblEmployee values (6, 'Ben', 'Male', 7000, 1)
Insert into tblEmployee values (7, 'Sara', 'Female', 4800, 3)
Insert into tblEmployee values (8, 'Valarie', 'Female', 5500, 1)
Insert into tblEmployee values (9, 'James', 'Male', 6500, NULL)
Insert into tblEmployee values (10, 'Russell', 'Male', 8800, NULL)
Go

select * from tblDepartment 
Select * from tblEmployee


select Name, gender, salary, DepartmentName from tblEmployee
INNER join tblDepartment
on tblEmployee.DepartmentId	= tblDepartment.ID

drop table tblEmployee

SELECT NAME, GENDER, SALARY, DEPARTMENTNAME FROM TBLEMPLOYEE 
LEFT JOIN tblDepartment
ON TBLEMPLOYEE.DEPARTMENTID = tblDepartment.ID

 
SELECT NAME, GENDER, SALARY, DEPARTMENTNAME FROM TBLEMPLOYEE 
Right JOIN tblDepartment
ON TBLEMPLOYEE.DEPARTMENTID = tblDepartment.ID

SELECT NAME, GENDER, SALARY, DEPARTMENTNAME FROM TBLEMPLOYEE 
Full JOIN tblDepartment
ON TBLEMPLOYEE.DEPARTMENTID = tblDepartment.ID

SELECT NAME, GENDER, SALARY, DEPARTMENTNAME FROM TBLEMPLOYEE 
cross JOIN tblDepartment


select Name, Gender, Salary, DepartmentName from tblEmployee
Left join tblDepartment
on
tblEmployee.DepartmentID = tblDepartment.ID
where tblemployee.DepartmentID is NULL 


select Name, Gender, Salary, DepartmentName from tblEmployee
Right join tblDepartment
on
tblEmployee.DepartmentID = tblDepartment.ID
where tblemployee.DepartmentID is NULL 

	
select name, Gender, Salary, DepartmentNAme from tblemployee
full join tblDepartment on tblemployee.DepartmentID = tblDepartment.ID
where tblemployee.DepartmentID is null
or tblDepartment.id is null 




create table tblEMP 
(EmployeeID int not null primary key,
 FName nvarchar(50) not null ,
 ManagerID int null  

)


SELECT * FROM tblEMP


insert into tblEMP
values
(1, 'Mike', 3),
(2, 'Rob', 1),
(3, 'Todd',NULL),
(4, 'Ben', 1),
(5, 'Sam', 1)



select E.FName, M.FName 
from      tblemp E
Left join tblEmp M
on M.EmployeeID = E.ManagerID



select E.FName, M.FName 
from      tblemp E
inner join tblEmp M
on M.EmployeeID = E.ManagerID


select E.FName as Employee , M.Fname as Manager
from        tblemp E
cross join  tblemp M






	select a.Fname as Employee , isnull( b.Fname, 'No Managar') as Manager 
	from      tblEMP a
	left join tblEMP b
	on a.ManagerID = b.EmployeeID




	select COALESCE (null, 'No MANAGER') as manager


	

	select a.Fname as Employee ,  COALESCE (b.Fname, 'No MANAGER') as manager
	from      tblEMP a
	left join tblEMP b
	on a.ManagerID = b.EmployeeID

	case when b.fname is null then 'NO MANAGER' else b.Fname END


select a.Fname as Employee ,
case when b.fname is null then 'NO MANAGER' else b.Fname END
	from      tblEMP a
	left join tblEMP b
	on a.ManagerID = b.EmployeeID


	COALESCE () Function returns the firls NOT null value

	select ID, COALESCE (FirstNAME, MIDDLENAME, LASTNAME ) as NAME from tblEMP



	CREATE PROCEDURE spGETTABLEEMP
	AS
	BEGIN
	   SELECT * FROM tblEMP
	END


    Alter procedure spGetEMPNAME
	@Employee int,
	@FName nvarchar(50)
	with encryption
	as 
	BEGIN
	Select EmployeeID, Fname from tblEMP where EmployeeID = @employee 
	and Fname = @FName
	END


	sp_helptext spGetEMPNAME 1, 'mike'

	drop proc spGetEMPNAMEE



	Create table tblSPEmployee
(
ID int primary key,
Name nvarchar(50),
Gender nvarchar(50),
Salary int,
DepartmentId int foreign key references tblDepartment(Id)
)
Go

Insert into tblSPEmployee values (1, 'Tom', 'Male', 4000, 1)
Insert into tblSPEmployee values (2, 'Pam', 'Female', 3000, 3)
Insert into tblSPEmployee values (3, 'John', 'Male', 3500, 1)
Insert into tblSPEmployee values (4, 'Sam', 'Male', 4500, 2)
Insert into tblSPEmployee values (5, 'Todd', 'Male', 2800, 2)
Insert into tblSPEmployee values (6, 'Ben', 'Male', 7000, 1)
Insert into tblSPEmployee values (7, 'Sara', 'Female', 4800, 3)
Insert into tblSPEmployee values (8, 'Valarie', 'Female', 5500, 1)
Insert into tblSPEmployee values (9, 'James', 'Male', 6500, NULL)
Insert into tblSPEmployee values (10, 'Russell', 'Male', 8800, NULL)
Go


create proc spSPEmployee
as
BEGIN
Select * from tblSPEmployee
END


create proc spgivesempcountbygender
@gender nvarchar(20),
@EmployeeCount int output 
as
BEGIN
     select @EmployeeCount = count(ID) from tblSPEmployee where gender = @gender
END


declare @Total int
execute spgivesempcountbygender 'male', @total output
if (@total) is null 
print 'Total is null'
else
print '@total is not null'
print @total




create proc spgettotalcountofemployees 
@totalcount int output
as
BEGIN
 Select @totalcount = COUNT(ID) from tblspemployee
END


declare @total int
execute spgettotalcountofemployees @total output

print @total





create procedure spgettotalnoofemployees2
as
BEGIN
   return(Select COUNT(ID) from tblSPemployee)
END

declare @tital int
execute @tital = spgettotalnoofemployees2
print @tital





--CTE Common Table expression


with ctename (column1, column 2, .....)
as
(
      Select Column1, COUNT(*) as column2 from tblEMP
      group by Column1
)

Select columnx, column1 from tblPerson
join ctename
on tblperson.columnx = ctename.column1 
order by column1








select * from tblPerson 
select * from tblDepartment

Alter table tblperson
add
Age int,
City nvarchar(50)


Insert into tblperson (Age, City)
Values
(23, 'London'


)







---ANSWERS
--1.

select distinct id, departmentName, Location from tblDepartment	
--Disctinct statement is used to remove repeated values.
select * from tblDepartment	

--2

CREATE TABLE tblStudent
(
rollNumber INT,
studentName VARCHAR(50),
address VARCHAR(50)
)

create proc sptblStudent
as
BEGIN
( Select * from tblStudent)
END 


insert into tblStudent
Values
(1, 'a', 'add1'),
(1, 'A', 'add1'),
(2, 'b', 'add2'),
(3, 'c', 'add3'),
(4, 'd', 'add4')

select Distinct rollnumber, count(*) as noofduplicates 
from tblStudent
group by rollnumber

 sptblStudent
 
 go
with cte 
as
(select *, ROW_NUMBER() over ( Partition by rollnumber order by rollnumber ) as RN
from tblStudent
)
Delete from cte where RN<>1
go
sptblStudent

---3


CREATE TABLE [dbo].[Orders]
(
    [orderid] INT,
    [Orderdate] DATE,
    [CustomerName] VARCHAR(100),
    [Customercity] VARCHAR(100), 
    [Orderamount] MONEY
)

INSERT [dbo].[Orders]  VALUES (216090, CAST(N'1826-12-19' AS Date), N'Edward', N'Phoenix', 4713.8900)
GO
INSERT [dbo].[Orders]  VALUES (508220, CAST(N'1826-12-09' AS Date), N'Aria', N'San Francisco', 9832.7200)
GO

select * from orders

truncate table orders -- with truncate the data/ all the columns and rows are removed.
drop table orders --- with drop - whole table is removed.
delete from orders where orderdate = '1826-12-19' -- delete is used to remove specific data/row from the table.


---4 

update orders
set
    customername = 'ZACK'

where 
	Orderid = 216090


	
	EXEC sp_rename 'orders.orderdate' , 'Olderdate'

----5 find 2nd max
	--using sub query
select * from tblSPEmployee	order by salary desc

select max(salary) from tblSPEmployee


select  max(salary) [as 2nd max Salary] from tblSPEmployee 
where salary <  (select max(Salary) from tblSPEmployee) 




select * from tblSPEmployee



select  top 1 salary 
from
(select distinct top 2 salary 
from tblSPEmployee 
order by Salary desc) result
order by salary 



           --OR

select * from tblSPEmployee
go

with cte as
(
select id, Name, gender, salary, departmentid, dense_rank() over (order by salary desc)
as baga 
from tblSPEmployee
)
select id, name, gender, departmentid, salary from cte where baga = 5



---6

select  distinct top 3 salary 
from tblSPEmployee 
order by Salary desc


---7 Quest

create table entries ( 
name varchar(20),
address varchar(20),
email varchar(20),
floor int,
resources varchar(10));

insert into entries
values 
('A','Bangalore','A@gmail.com',1,'CPU'),
('A','Bangalore','A1@gmail.com',1,'CPU'),
('A','Bangalore','A2@gmail.com',2,'DESKTOP'),
('B','Bangalore','B@gmail.com',2,'DESKTOP'),
('B','Bangalore','B1@gmail.com',2,'DESKTOP'),
('B','Bangalore','B2@gmail.com',1,'MONITOR')

select * from entries

create proc spentries
as
BEGIN
select * from entries
END
----
spentries
----
with totalvisitors 
as
(select distinct name, floor, resources, count(floor) over (Partition by name order by name) as baga
		     from entries
			 )
 select distinct name, baga from totalvisitors
 ---
-- select Distinct name, count(*) as noofduplicates 
--from entries
--group by name
---

SELECT count(floor) AS visits
FROM entries
WHERE floor = 1
GROUP BY floor
ORDER BY visits DESC 

select * from entries

go


with totalvisitors 
as
(select distinct name, floor, resources, count(floor) over (Partition by name order by name) as baga
from entries)

 select distinct top 1 name, baga as total_visits, count (floor) as woho from totalvisitors
 group by floor, name , baga
 order by name, baga, count(floor) desc

 -------try new

 with totalvisitors 
as
(select distinct name, floor, resources, count(floor) over (Partition by name order by name) as baga
from entries)

 select distinct top 2 name, baga as total_visits, 
 count (floor) over (partition by floor order by name) as
 most_visited_floor from totalvisitors
 group by floor, name , baga
 order by name, baga, most_visited_floor desc
 
 
 select name,email from entries



update  entries
set floor =1
where email='A1@gmail.com'















 
with totalvisitors 
as
(select name, floor, resources, count(floor) over 
(Partition by floor order by floor) as baga
from entries)

 select distinct top 1 name, baga as total_visits from totalvisitors
 group by name , baga
 order by count(floor) desc



 select floor
 from entries 
 group by floor 
 order by count(*) desc



 select		top 1 name
 from		 entries
 group by	 name
 order by	count(floor) desc

















 ----try new



 select * from entries

 go

select top 2 name,
count(floor) over (partition by floor) 
as countt 
from entries
order by 
row_number() over 
(partition by name
order by name )



















select top 3 name, max(floor)






with maxxi
as
(
select top 3 floor from entries
order by floor 
)
select max(floor)
from maxxi

select * from entries

update entries
set floor=2
where email='b@gmail.com'



select * from entries

select distinct name, 
count(floor) over 
(Partition by floor order by floor)
as total_visits,
floor as [most visited floor]
from entries

group by name,floor
having count(floor) >1


select distinct name, ( resources) from entries
group by name, resources
order by name



SELECT 
   SS.name,
   STUFF((SELECT '; ' + US.resources 
          FROM entries. US
          WHERE US.name = SS.name
          ORDER BY name
         FOR XML PATH('')), 1, 1, '') [SECTORS/USERS]
GROUP BY SS.name, SS.resources
order by 1


SELECT 
   SS.resources, 
   US.resources
FROM entries SS 
INNER JOIN entries US ON US.resources = SS.resources
ORDER BY 1, 2 
FOR XML PATH('')



SELECT 
   SS.name, 
   (SELECT
   SS.resources, 
   US.resources
FROM entries SS 
INNER JOIN entries US ON US.resources = SS.resources
ORDER BY 1, 2 
FOR XML PATH('')) monitor
FROM entries SS
GROUP BY SS.name, SS.name
ORDER BY 1




Select resources, name from entries


 with cte
 as
 (select distinct name, resources from entries
group by name, resources)

Select distinct COALESCE ( resources + resources) as baga
        From cte
		Select distinct resources
	
	select  resources from cte




	SELECT name, concat_wm (',', resources, resources) FROM entries GROUP BY name, resources





	concat















SELECT name,
COUNT(name) total_visits,
mode() WITHIN GROUP (ORDER BY floor) most_visited_floor,
STRING_AGG(distinct resources,',' ORDER BY resources) resources_used
FROM entries GROUP BY name




USE [master]
GO
-- SQL Server 2012
ALTER DATABASE sarvar_elite SET COMPATIBILITY_LEVEL = 110
GO








