#task 1
 select count(*) from payment;
#task 2 
 select customer_id, count(payment_id)number_of_payments 
 from payment group by customer_id ;
#task 3 
 select customer_id, count(payment_id)number_of_payments
 from  payment group by customer_id
 having number_of_payments >=5;
#task 4 
 select year_no, month_no, rank() over(order by (tot_sales)desc) sales_rank ,tot_sales
from sales_fact;
#task 5
select year_no, month_no, rank() over(partition by (year_no) order by (tot_sales)desc) ,tot_sales
from sales_fact;
#task 6 
select year_no, month_no,tot_sales, lag( tot_sales ,1)
over (order by year_no, month_no)previous_month from sales_fact; 
