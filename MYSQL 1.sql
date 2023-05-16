#QUERY 1 
USE sql_store;

SELECT * FROM CUSTOMERS
-- WHERE CUSTOMER_ID=1​
order by first_name;

#QUERY 2
SELECT last_name, first_name, points, points+10
FROM customers;

#TASK 1 
SELECT last_name, first_name, points, (points+10)*100
FROM customers;

SELECT last_name, first_name, points, (points+10)*100 AS discount_factor
FROM customers;

#TASK 2 
SELECT * FROM products

SELECT name, unit_price, (unit_price * 1.1 ) as new_price
FROM products

#TASK 3 

SELECT *
FROM customers
where birth_date>"1990-01-01"; 

#TASK 4
USE sql_inventory;

SELECT * FROM products
ORDER BY quantity_in_stock desc
limit 1;

select name from products
where quantity_in_stock = (select max(quantity_in_stock) from products);

#TASK 5 Write a query to find out the name of the most expensive product.​

select name from products
where unit_price = (select max(unit_price) from products);

SELECT * FROM products
ORDER BY unit_price desc
limit 1;




#TASK 6 Write a query to find out the first name, last name, address and the birthdate of the oldest customer.​
use sql_store;

SELECT first_name, last_name, birth_date from customers
order by birth_date asc
limit 1;

SELECT first_name, last_name, address, birth_date
from customers
where birth_date = (select min(birth_date) from customers)

