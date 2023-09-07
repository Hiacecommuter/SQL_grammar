-- group by
-- collapse the result
select gender, count(gender)
  from the_table
  group by gender;


-- partition by
-- not collapse the result, add an extra column
select first_name, gender, count(gender) over(partition by gender) as total gender
from the_table;
