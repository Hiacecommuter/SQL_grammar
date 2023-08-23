-- There is a table STATION
-- which has column [ID, CITY, STATE]

-- select all
select * from station;

-- Query a list of CITY names from STATION for cities that have an even ID number. 
-- Print the results in any order, but exclude duplicates from the answer.
select distinct city from station where id%2=0;

-- Find the difference between the total number of CITY entries in the table 
-- and the number of distinct CITY entries in the table.
select count(city) - count(distinct city) from station;
select ( ( select count(city) from station ) - ( select count(distinct city) from station) ) as diff;

-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). 
-- If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
select ( select city from station where length(city) = ( select max(length(city)) from station) order by city asc limit 1), ( select max(length(city)) from station);
select ( select city from station where length(city) = ( select min(length(city)) from station) order by city asc limit 1), ( select min(length(city)) from station);

-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
select distinct city from station where substring(city, 1, 1) in ('a', 'e', 'i', 'o', 'u');

-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
select distinct city from station where substring(city, -1, 1) in ('a', 'e', 'i', 'o', 'u');

-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
select distinct city from station where substring(city, -1, 1) not in ('a', 'e', 'i', 'o', 'u');

