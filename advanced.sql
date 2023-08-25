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
