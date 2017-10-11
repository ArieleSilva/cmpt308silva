/* Ariele Silva
   Database Management
   Prof. Labouseur
   10 October 2017
   Lab 5 */
   
/* 1 */
select distinct agents.city
from agents
inner join orders on orders.aid = agents.aid
where cid = 'c006';

/* 2 */
select x.pid
from orders o join orders x  on o.aid = x.aid
              inner join customers on customers.cid = o.cid
              where customers.city = 'Beijing'
              order by pid DESC;

/* 3 */
select customers.name
from customers
where cid not in (select cid
			      from orders);  
	
/* 4 */
select customers.name
from customers
full outer join orders on customers.cid = orders.cid
where orders.cid is NULL;

/* 5 */
select distinct customers.name, agents.name
from customers
inner join orders on orders.cid = customers.cid
inner join agents on agents.aid = orders.aid
where customers.city = agents.city;

/* 6 */
select customers.name, customers.city, agents.name, agents.city
from customers
inner join agents on agents.city = customers.city;

/* 7 */
 select city, count(city)
 from Products
 GROUP BY city
 order by count(city) ASC
 limit  1;




