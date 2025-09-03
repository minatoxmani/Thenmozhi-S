use homework;

delimiter $$ 
create function average(m1 int, m2 int, m3 int)
returns int
deterministic
begin
return(m1+m2+m3)/4;
end $$
delimiter ;

select average(93,42,59)