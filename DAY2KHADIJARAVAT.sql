# task 1 Using count, get the number of cities in the USA​

USE world; 

select COUNT(*) from city where countrycode = "USA"

Select count(*) from country where name= "USA"; 
Select count(*) from city where name= "USA" ;

# TASK 2 Find out what the population and average life expectancy for people in Argentina (ARG) is.​

SELECT population, LifeExpectancy
from country
where Name = "Argentina";

SELECT population, LifeExpectancy
from country
where Code = "Arg" ;

#TASK 3 Using ORDER BY, LIMIT, what country has the highest life expectancy?​

Select * from country
order by LifeExpectancy desc
limit 1; 

#TASK 4  Select 25 cities around the world that start with the letter 'F' in a single SQL query.​

SELECT Name FROM city 
where Name like "F%"
limit 25; 

#TASK 5 Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.​

SELECT Id, Name, Population from city
limit 10; 

# TASK 6 Create a SQL statement to find only those cities from city table whose population is larger than 2000000.​

SELECT * from city where population > 2000000 ;

#TASK 7 Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.​

SELECT * from city where Name like "Be%" ; 

#task 8 Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.​

Select * from city where Population between 500000 and 1000000 ; 

#task 9 Create a SQL statement to find a city with the lowest population in the city table.​


SELECT min(Population) from city; 

SELECT Name
from city 
where population = (SELECT min(Population) from city);



