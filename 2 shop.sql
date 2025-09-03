create database homework;

use homework;

create table shop1(
number int,
vegetable varchar(30),
price int);

select * from shop1;

insert into shop1
values(1,'potato',40),(2,'tomato',30),(3,'bitter gourd',35),(4,'beetroot',50),(5,'cauliflower',40);

select * from shop1;

create table shop2(
number int,
vegetable varchar(30),
price int);

insert into shop2
values(1,'potato',35),(2,'radish',40),(3,'tomato',35),(4,'brocoli',40),(5,'cauliflower',40);

select * from shop2;

select s1.*, s2.*
from shop1 s1 join shop2 s2
on s1.price = s2.price;

select s1.*, s2.*
from shop1 s1 left join shop2 s2
on s1.price = s2.price

union
select s1.*, s2.*
from shop1 s1 right join shop2 s2
on s1.price = s2.price

union all
select s1.*, s2.*
from shop1 s1 right join shop2 s2
on s1.price = s2.price;