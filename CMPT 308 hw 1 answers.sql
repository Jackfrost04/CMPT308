--Mason Crane
--9/10/13
--Queries Homework 1

--Question 1.

SELECT
customers.*

FROM
public.customers;


--Question 2.

SELECT
agents.name,
agents.city

FROM

public.agents

WHERE
agents.name = 'Smith';


--Question 3.


SELECT 
  products.pid, 
  products.name, 
  products.quantity
FROM 
  public.products

WHERE 
products.priceUSD > 1.25;


--Question 4.

SELECT 
  orders.ordno, 
  orders.aid
FROM 
  public.orders;

  
--Question 5.

SELECT 
  customers.name, 
  customers.city
FROM 
  public.customers

WHERE

customers.city != 'Dallas';


--Question 6.

SELECT 
  agents.name
FROM 
  public.agents
WHERE 
  agents.city =  'New York' OR 
  agents.city =  'Newark';

  
 --Question 7.
 
 SELECT 
  products.*
FROM 
  public.products

WHERE

products.city != 'New York' AND
products.city != 'Newark' AND
products.priceusd < 1.00;


--Question 8.


SELECT 
  orders.*
FROM 
  public.orders

WHERE 

orders.mon != 'feb' AND
orders.mon != 'apr'  AND
orders.mon != 'may' AND
orders.mon != 'jun' AND
orders.mon != 'jul' AND
orders.mon != 'aug' AND
orders.mon != 'sep' AND
orders.mon != 'oct' AND
orders.mon != 'nov' AND
orders.mon != 'dec';



--Question 9.


SELECT 
  orders.*
FROM 
  public.orders

WHERE

orders.mon = 'feb' AND
orders.dollars < 100.00;


--Question 10.

SELECT 
  orders.*
FROM 
  public.orders

WHERE 

orders.cid = 'c005';



