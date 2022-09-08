SELECT * FROM vehicle_booking_app.driver_info;
desc driver_info;

select gender, count(driver_id) as num_of_drivers from driver_info
group by gender;

select gender, round(avg(age),2) avg_age from driver_info group by 1;

select driver_id from driver_info
where driving_exp in (select max(driving_exp) from driver_info);

select driver_id from driver_info
where driving_exp > 6;
