use homework;

create table employees(
ID int,
Name varchar(30),
Department varchar(30),
Salary int,
City varchar(20));

select * from employees;

insert into employees
values(1,'Alice','HR',50000,'New York'),(2,'Bob','IT',70000,'San Diego'),(3,'Charlie','HR',55000,'New York'),(4,'David','IT',80000,'Boston')
			,(5,'Eva','Finance',60000,'San Diego'),(6,'Frank','IT',75000,'San Jose'),(7,'Grace','Finance',65000,'New York'),(8,'Hannah','HR',52000,'Boston');

select * from employees;
drop table employees;

select count(Department), Department from employees group by Department;

select avg(Salary), Department from employees group by Department;

Select * from employees order by Salary desc;

select * from employees order by Department, Salary asc;