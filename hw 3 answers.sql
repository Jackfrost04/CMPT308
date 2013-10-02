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

--Question 4.

select distinct  o2.pid 
from  Orders o1, orders o2, Customers
where o1.cid = customers.cid 
and   o1.aid = o2.aid
and   customers.city = 'Kyoto'



	
	