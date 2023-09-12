-- col_a a, b, c, a, b, c
-- col_b 1, 2, 1, 1, 3, 2

select distinct col_a from the_table;
-- a, b, c

select distinct col_b from the_table;
--1, 2, 3

select distinct col_a, col_b from the_table
-- a, b, c, b, c
-- 1, 2, 1, 3, 2
