CREATE PROCEDURE SelectAllEmployees
AS
begin
select * from employees
union all
select * from employeeDep
end