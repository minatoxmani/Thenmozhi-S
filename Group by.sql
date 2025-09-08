use homework;

select * from employees where emname like 'a%';

select * from employees where city like 'san%';

select * from employees where emname like 'a%';

select Department, count(ID) from employees
group by Department having count(ID)>2
order by avg(Salary)desc;