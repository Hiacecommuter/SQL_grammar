-- case when then
-- exam triangle side length
select a, b, c,
case
  when a+b<=c or a+c<=b or b+c<=a then "Not A Triangle"
  when a=b and a=c and b=c then "Equilateral"
  when a=b or a=c or b=c then "Isosceles"
  else "Scalene"
end
from triangles;

select
case
  when a+b<=c or a+c<=b or b+c<=a then "Not A Triangle"
  when a=b and a=c and b=c then "Equilateral"
  when a=b or a=c or b=c then "Isosceles"
  else "Scalene"
end
from triangles;

-- case with aggregate functions
select case when year = 'FR' then 'FR'
        else 'Not FR' end as year_group,
        count(1) as count
from the_table
group by case when year='FR' then 'FR'
          else 'Not FR' end;

