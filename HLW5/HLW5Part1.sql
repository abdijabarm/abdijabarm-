use sakila;
#task 1 filter out customerid 5 and amount under 8 or payment date 2005-08-23
select payment_id, customer_id,amount, date(payment_date) from payment 
where customer_id<>5 and (amount<8 or date(payment_date)='2005-08-23');
#task 2
select payment_id, customer_id,amount, date(payment_date) from payment 
where customer_id=5 and not (amount>6 or date(payment_date)='2005-06-19');
#task 3
select * From payment where amount in (1.98 ,7.98,9.98) order by amount desc;
#task 4
select c.last_name, p.payment_id,p.amount,date(p.payment_date)
from payment p 
join customer c on c.customer_id=p.payment_id 
where c.last_name like'_a%w%';