with shortestcity as (
 select CITY , LENGTH(CITY) as len from STATION
    where LENGTH(CITY) = (select min(length(CITY)) from STATION) 
    order by CITY LIMIT 1
),
longestcity as (
 select CITY , LENGTH(CITY) as len from STATION
    where LENGTH(CITY) = (select max(length(CITY)) from STATION)
    order by CITY LIMIT 1
)

select * from shortestcity
UNION all
select * from longestcity



used with clouse.........
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described as follows:
