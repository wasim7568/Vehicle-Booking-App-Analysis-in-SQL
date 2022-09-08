SELECT * FROM vehicle_booking_app.feedback_info;

desc feedback_info;

-- overall trip status by customer feedback

delimiter $$
create procedure overall_trip_status( in trip_status varchar(15),rating int, driver_behavior varchar(15),vehicle_comfort varchar(15))
begin
select trip_id, customer_id from feedback_info
where trip_status = trip_status and trip_rating = rating
and driver_behavior = driver_behavior and vehicle_comfort = vehicle_comfort;
end $$
delimiter ;

call overall_trip_status('enjoy', 2,'Good', 'good');

-- ----------------------------------------------------------------------------
-- drivers behavior analysis
with tab1 as (
select d.driver_id,f.driver_behavior, count(f.driver_behavior) as behavior
from feedback_info as f inner join trip_info as t
on f.customer_id = t.customer_id and
f.trip_id = t.trip_id
inner join driver_info as d 
using (driver_id)
group by 1,2) , 
tab2 as (
select driver_id,sum(behavior) as total_trip from tab1 group by driver_id)
select tab1.*, total_trip from tab2 inner join tab1 using (driver_id) order by 1;

-- ---------------------------------------------------------------------------------------------
-- trip feedback analysis for driver_behavior

delimiter $$
create procedure trip_feedback_driver(in driver varchar(10))
begin
select f.trip_status, count(t.driver_id) as num_of_rides from 
feedback_info as f inner join trip_info as t
on t.trip_id = f.trip_id and 
t.customer_id = f.customer_id
where driver_id = driver
group by 1;
end $$
delimiter ;

call trip_feedback_driver('d_335');
drop procedure trip_feedback_driver;