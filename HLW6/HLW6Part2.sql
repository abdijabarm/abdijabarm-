#task 1 
drop view if exists film_ctgry_actor;
create view film_ctgry_actor as (
select a.actor_id,a.first_name,a.last_name,fa.film_id,
f.title,fc.category_id,c.name category_name
from actor a 
join film_actor fa on fa.actor_id=a.actor_id
join film f on f.film_id=fa.film_id
join film_category fc on fc.film_id=f.film_id
join category c on c.category_id=fc.category_id
order by 2,3,6
);
select * from film_ctgry_actor;

#task 2 
drop view if exists country_payments;
create view country_payments as ( 
select c.country_id,c.country,ci.city_id,a.address_id,cu.customer_id, p.tot_payment
from (select customer_id, sum(amount)tot_payment from payment
group by customer_id) p
join customer cu on cu.customer_id= p.customer_id 
join address a on a.address_id= cu.address_id 
join city ci on ci.city_id= a.city_id 
join country c on c.country_id=ci.country_id
);
select*from country_payments;
#Create another view to query total payment for each country 
drop view if exists tot_cntry_payments;
create view tot_cntry_payments as ( 
select country, sum(tot_payment)total_payments 
from country_payments group by country 
order by country);
select * from tot_cntry_payments;

