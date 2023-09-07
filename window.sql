select * from employee;

select dept_name, max(salary) as max_salary
from employee
group by dept_name;

-- over() treat max() as a window function, not aggregate function
-- over() create one window to all of the table
select e.*
  max(salary) over() as max_salary  
from employee e;

-- an extra column is added
select e.*
max(salary) over(partition by dept_name) as max_salary
from employee e;

-- row_number()
select e.*, row_number() over() as rn
from employee;

select e.*, row_number(partition by dept_name order by emp_id) over() as rn
from employee e;

-- rank()
-- if n1=n2 <n3, rank(n1)=rank(n2), rank(n3) = rank(n1)+ 2
select *  from (
  select e.*, rank() over(partition by dept_name order by salary desc) as rk
  ) x
where x.rk=1;

-- dense_rank()
-- if n1=n2 <n3, rank(n1)=rank(n2), rank(n3) = rank(n1)+ 1
select *  from (
  select e.*, _dense_rank() over(partition by dept_name order by salary desc) as drk
  ) x
where x.drk=1;

-- lag(column, rows, default_val) record for previous row
select e.*, 
  lag(salary, 2, 0) over(partition by dept_name order by emp_id) as pre_emp_salary
frm employee e;

-- lead() similar to lag()
