--Mason Crane
--Question set 2.
--9/22/13


--Question One

select distinct city 
from Agents
where aid in 
	(select aid
	from Orders
	where cid = 'c002'

	)

--Question Two

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



--Question Three

select distinct cid, name
from Customers
where cid not in 
	(select cid
	from Orders 
	where aid in

	(select aid 
	from Orders
	where aid = 'a03')
	)


-- Question Four   


select distinct cid, name
from Customers 
where cid in 
	(select cid
	from Orders o1
	where pid = 'p07'
	AND cid in 


	(select cid 
	from Orders o2
	where pid = 'p01')
	)
	





-- Question Five   



	select pid
	from Orders o1
	where cid in

	(select cid
	from Orders o2
	where aid ='a03')




--Question Six


select distinct name, discount
from Customers
where cid in
	(select cid
	from Orders
	where aid in

	(select aid 
	from Agents
	where city = 'Duluth'
	OR city = 'Dallas')
	)






--Question Seven    


select  name
from Customers c1
where discount in

(select discount
from Customers c2
where city = 'Kyoto'
OR    city = 'Dallas')





