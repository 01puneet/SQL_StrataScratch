/*if i just fetch max salary one of the use cases fail because one record is such which has highest salary but
but department is different, so need to find the max department as well 
*/
select 
id,first_name,
last_name,
max(department_id),
max(salary) as salary

from ms_employee_salary
group by 1,2,3
order by id