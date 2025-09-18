use homework;

create table students_details(
RegNo int primary key,
Name varchar(30),
subjects varchar(30));

 select * from students_details;

insert into students_details
values(1,'Honey','Tamil'),(2,'Thenu','English'),(3,'Gokul','Maths'),(4,'Bala Murugan','Tamil'),(5,'vel Murugan','English');
 
 
select subjects,group_concat(name ) as studentname
from students_details group by subjects;

insert into students_details
values(6,'Hakash','Maths  '),(7,'  Mani','Tamil'),(8,' Jana ', 'English ');
select trim(name) from students_details;

select *,ntile(3) over (order by name) as grp from students_details;

select replace('this is so godo','godo','good') as result;

select lpad(1,3,0), rpad(1,3,'*') as id;

select substring('Honey',1,3) as result;