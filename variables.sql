set @c1=(select count(name) from occupations where occupation='Doctor');
set @c2=(select count(name) from occupations where occupation='Professor');
set @c3=(select count(name) from occupations where occupation='Singer');
set @c4=(select count(name) from occupations where occupation='Actor');

set @c5=(select max(column_0) from (values row(@c1), row(@c2), row(@c3), row(@c4)) as tb);
select @c1, @c2, @c3, @c4, @c5;

set @c6:=@c5;
