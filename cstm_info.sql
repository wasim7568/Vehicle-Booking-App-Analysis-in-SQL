SELECT * FROM vehicle_booking_app.customer_info;
desc customer_info;
select distinct city from customer_info;
select gender, count(customer_id) num_of_customer from customer_info
group by gender;

select gender,count(customer_id) as 'greaater_than_avg_age' from customer_info
where age> (select avg(age) from customer_info)
group by gender;

select city, count(*) num_of_customers from customer_info
group by city
order by city;


select city, gender, count(customer_id) as num_of_customers
from customer_info
group by 1,2
order by 1,2;