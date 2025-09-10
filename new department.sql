use honey;

select * from departments;

delimiter $$
create procedure updatedepartment_name2(in departmentid int, in newdepartmentname varchar(50),  out message varchar(50))
begin
	declare currentdepartment_name varchar(30);
    SELECT department_name into currentdepartment_name from departments where department_id = departmentid;
    
    if currentdepartment_name is not null then
    update departments set department_name = newdepartmentname where department_id = departmentid;
    set message = 'Department update successfully';
    else
    set message = 'Enter new Department name';
    end if;
end $$
delimiter ;
drop procedure updatedepartment_name2;
set @msg = '';
call updatedepartment_name2(20,'IT',@msg);
select @msg as updatedepartment_name2;