--Joins and crap 

--min, max, avg, sum, count 





select*
from customers
where cid in (select cid
		from orders)

  


--
select*
from customers
where cid not in (select cid
		from orders)
--


select * --distinct o.cid 
from customers c, 
        orders o
where o.cid = c.cid 

order by o.cid




select * --distinct o.cid         --outer joins tend to create nulls
from customers c right outer join  orders o   -- or left outer join  left reads left ot right.. right reads right to left in comparision to the tables chosen   ALSO "full outer joins"
   on o.cid = c.cid 


order by c.cid












-- customers in the same city.

select c1.name, 
       c2.name
from customers  c1,
     customers  c2
where c1.city = c2.city
   and c1.cid <> c2.cid      --    <> not equal 
   and c1.cid >  c2.cid


















--DATA + CONTEXT = information 


select*      --VERSION 1.  Alan likes V1 over V2
from   orders o,
     products p,
     agents a,
     customers c 
     
where o.pid = p.pid
  and o.aid = a.aid
  and o.cid = c.cid



select*      --VERSION 2
from   orders o inner join products p  on o.pid = p.pid
                inner join agents a    on o.aid = a.aid
                inner join customers c on o.cid = c.cid
   







select p.name,         --inner joins, matching of values from one table to another where the values match.  VERSION 1.
       avg(dollars)
		
from orders o,
   products p
   where o.pid = p.pid

group by p.name
having avg (dollars) > (select avg(dollars)
			from orders)

order by p.name asc



select p.name,         --inner joins, matching of values from one table to another where the values match. VERSION 2.
       avg(dollars)
		
from orders o inner join products p
         on o.pid = p.pid

group by p.name
having avg (dollars) > (select avg(dollars)
			from orders)

order by p.name asc



select pid as "Product ID",
		avg(dollars)
from orders
group by pid
having avg (dollars) > (select avg(dollars)
			from orders)

order by pid asc















