--Mason Crane 
--HW question set 3


--Question 1. Get	the	cities	of	agents	booking	an	order	for	customer	c002. Use a subquery.

select distinct city 
from Agents
where aid in 
	(select aid
	from Orders
	where cid = 'c002'

	)
	
--Question 2.	Get	the	cities	of	agents	booking	an	order	for	customer c002. This time use joins;	

select distinct city
from Agents, orders
where agents.aid = orders.aid
and   orders.cid = 'c002'

--Question 3. Get the pids of	products ordered through any agent who makes at	least one order for	a customer in Kyoto. Use	subqueries.


select distinct pid
from Products
where pid in
	(select pid
	from Orders
	where aid in

	(select aid 
	from Orders
	where aid in

	(select aid
	from Agents
	where cid in

	(select cid
	from Customers
	where city = 'Kyoto')
	)
	)
	)

--Question 4. Get the pids of products ordered through any agent who makes at least	one	order for a	customer in	Kyoto.	Use	joins thos time;

select distinct  o2.pid 
from  Orders o1, orders o2, Customers
where o1.cid = customers.cid 
and   o1.aid = o2.aid
and   customers.city = 'Kyoto'


--Question 5. Get the names	of customers who have never	placed	an	order.	Use	a subquery.

select distinct name 
from customers
where cid not in
   (select cid
    from orders
    )

--Question 6. Get the names	of customers who have never	placed	an	order. Use an outer	join

select distinct c.name
from  orders o right outer join customers c
     on c.cid = o.cid 
     where o.cid is null 
	 
	 
--question 7. Get the names of customers who placed	at	least	one	order	through	an agent in	their city,	along with those agent(s)names

select distinct c.name, a.name
from customers c, orders o, agents a
where o.cid = c.cid 
and   o.aid = a.aid
and   c.city = a.city 

--Question 8. Get the names of customers and agents	in	the	same city, along with the name of the city,	regardless	of	whether	or	not	the	customer has ever placed an	order with	that agent.

select distinct c.name, a.name, c.city, a.city 
from customers c, orders o, agents a
where c.city = a.city
and   o.aid  = a.aid

--Question 9. Get the name and city	of customers who live in the city where	the	least number of	products are made.

select c.name, c.city
from customers c
where city in 

(select city
from products
Group by city
ORDER BY COUNT(city) asc
limit 1)


--Question 10. Get	the	name and city of customers	who	live in	a	city where	the	most number	of	products are made


--CHECK THIS ANSWER
select c.name, c.city
from customers c
where city in 

(select city 
from products 
Group by city
order by count(city) desc
limit 1)

--Question 11. Get	the	name and city of customers	who	live in	any	city where	the most number	of	products are	made.

















	
	