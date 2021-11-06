use sakila;
#task 1 
select c.first_name, c.last_name, a.address, ct.city 
from customer c 
inner join address a on c.address_id=a.address_id
inner join city ct on ct.city_id=a.city_id
where a.district='california';
#task 2 
select a.first_name, a.last_name, f.title  
from actor a
inner join film_actor fa on fa.actor_id=a.actor_id
inner join film f on f.film_id=fa.film_id 
where a.first_name='john';
#task 3 
select a.address, b.address, a.city_id, b.city_id
from address a 
inner join address b on a.city_id=b.city_id 
where a.address<>b.address;