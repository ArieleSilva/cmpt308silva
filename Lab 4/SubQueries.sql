/* Ariele Silva
   Database Management
   Prof. Labouseur
   25 September 2017
   Lab 4 */
   
/* 1 */   
select city
from Agents
where aid in (select aid
			  from Orders
			  where cid = 'c006');
	
/* 2 */
select pid
from Orders
where cid in (select cid
			  from Customers
			  where city = 'Beijing')
			  order by pid ASC;
		
/* 3 */
select cid, name
from Customers
Where cid not in (select cid
				  from Orders
				  where aid = 'a03');
		
/* 4 */
select distinct cid
from Orders
where cid in (select cid
			  from Orders
			  where pid = 'p01')
			  and cid in (select cid
						  from Orders
						  where pid = 'p07'); 
	
/* 5 */
select distinct pid
from Orders
where pid not in (select pid
				  from Orders
				  where aid = 'a02' or aid = 'a03')
				  order by pid DESC;
		
/* 6 */
select name, city, discountPct
from Customers
where cid in (select cid
			  from Orders
			  where aid in (select aid
							from Agents
							where city= 'New York'));
		
/* 7 */
select *
from customers
where DiscountPct in (select discountPct
					  from customers
					  where city = 'Duluth' or city = 'London');
					  
					  
/* 8 

Check constraints are basically parameters set to limit the amount 
of values within one or more columns. They are good for narrowing 
down the options for a particular answer, by using check constraints
 against other tables / columns / rows we can get a more specific 
 answer than a broad one. The advantages of putting check constraints 
 inside databases is that it will make writing subqueries easier by being
 more specific. It also makes sure that we are precise when writing our 
 queries. A good use of check constraints would be to make sure that all
 of the queries written are consistent in it’s case sensitivity. A bad 
 example would be that since check constraints are in place, it will not
 accept negative values and if there is a case sensitive typo, the output
 will not be accurate. 
 */
		

		

	
