-- comparison
-- =, != (<>), >, < >=, <=

-- like, case sensitive
-- ilike, non case sensitive
-- %, match any character or set of characters
-- _, matcher one character
select * 
from occupations
where occupation like 'act%'

-- in
select * 
from the_table
where year_rank in (1, 2, 3);

-- between, include borders
select * 
from the_table
where year_rank between 5 and 10;

-- is null

-- and, or, not

-- order by desc
