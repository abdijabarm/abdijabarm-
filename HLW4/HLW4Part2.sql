use sakila;
#Task 1
select actor_id, first_name,Last_name from actor order by last_name, First_name; 
#Task2
select actor_id, first_name,Last_name from actor where last_name='Williams' or last_name='dAVIS';
#Task3
select*from rental;
select c.customer_id, c.first_name, c.last_name,c.email, r.rental_id,date(r.rental_date)
from customer as c
join rental as r on r.customer_id=c.customer_id 
where date(r.rental_date)='2005-07-05' 
order by c.customer_id ;
#extension task
#1)r 2)r.rental_id 3)date(r.rental_date) desc 4)c.email