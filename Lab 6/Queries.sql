/* Ariele Silva
   Database Management
   Prof. Labouseur
   12 October 2017
   Lab 6 */

/* 1 */
select customers.city, customers.name
from customers
where customers.city in (select city
						 from (select city, rank() over (order by count (city) DESC) as rank
							   from products
							   group by city) as bar
							   where rank = 1);
										   
/* 2 */

select products.name, avg(products.priceUSD)
from products
group by products.name
order by products.name DESC

error

/* 3 */



/* 4 */

select customers.name, coalesce(sum(orders.totalUSD),0.00)
from customers
left join orders on customers.cid = orders.cid
group by customers.name
order by customers.name DESC

/* 5 */

select customers.name, agents.name, products.name
from customers,orders,agents, products
where customers.cid = orders.cid 
and agents.aid = orders.aid 
and agents.city = 'Newark'
and products.pid = orders.pid;

/* 6 */
select orders.quantity*products.priceUSD * (1-(customers.discountPct/100)), orders.totalUSD
from orders, products,agents, customers
where orders.pid = products.pid
and agents.aid=orders.aid
and customers.cid = orders.cid

/* 7 */
/* a left outer join retains all of the rows of the "left" table regardless of whether there 
is a row that matches on the "right" table. the right outer join is the same in escence the 
only difference being that it takes all of the rows of the "right" table regarless of whether
there is a row that matches on the "left" table. */