SELECT * FROM vehicle_booking_app.trip_info;
desc trip_info;

select monthname(trip_date) as month_name, start_from as city, count(trip_id) as num_of_trips
from trip_info group by monthname(trip_date), start_from;

select week(trip_date) from trip_info order by week(trip_date);
select trip_date,dayname(trip_date) from trip_info order by trip_date asc;

-- day wise bookings
SELECT 
    DAYNAME(trip_date) AS day_name,
    COUNT(trip_id) AS num_of_trips
FROM
    trip_info
    where month(trip_date) =4
GROUP BY DAYNAME(trip_date);

-- num of trips monthly
delimiter $$
create procedure monthly_bookings_trip()
begin
select month(trip_date), count(trip_id) as num_of_trips from trip_info
group by month(trip_date);
end $$
delimiter ;
 call monthly_bookings_trip ;
 
 -- ----------------------------------------------------------
 
 -- city based trips
 delimiter $$
 create procedure city_wise_trips(in city_name varchar(25))
 begin 
 select start_from , count(trip_id) as num_of_trips from trip_info
 where start_from = city_name ;
 end$$
 delimiter ;

 call city_wise_trips('Delhi');
-- -----------------------------------------------------------------------------
-- monthly trips by customer
delimiter $$
create procedure num_of_trips_by_customer(in month_num int)
begin 
 select customer_id, count(customer_id) as num_of_trips from trip_info
 where month(trip_date) = month_num
 group by 1;
 end $$
 delimiter ;
 
 call num_of_trips_by_customer(03);
 
 -- -------------------------------------------------------------------
 
 -- Monthly trips by driver
 delimiter $$
create procedure num_of_trips_by_driver(in month_num int)
begin 
 select driver_id, count(driver_id) as num_of_trips from trip_info
 where month(trip_date) = month_num
 group by 1;
 end $$
 delimiter ;
 drop procedure num_of_trips_by_driver;
 call num_of_trips_by_driver(03);
 
 -- ----------------------------------------------
 
 -- monthly num_of_trips by vehicles
 
  delimiter $$
create procedure num_of_trips_by_vehicle(in month_num int)
begin 
 select vehicle_id, count(vehicle_id) as num_of_trips from trip_info
 where month(trip_date) = month_num
 group by 1;
 end $$
 delimiter ;
 
 call num_of_trips_by_vehicle(03);
 
 -- -----------------------------------
 
 -- type of fare
 
 select type_of_fare, count(trip_id) as num_of_trips
 from trip_info group by 1;
 
 select type_of_fare, start_from
 , count(trip_id) as num_of_payments from trip_info 
 group by 1,2
 order by 1,2;
 
 -- -------------------------------------------------------------------------
 -- trips between cities (monthly)
 
 delimiter $$ 
 create procedure trip_between_cities(in start varchar(15), end varchar (15), month_name int)
 begin
  with trip as(
 select start_from, end_from, (case when start_from= start and end_from = end then 1 else 2
 end) between_city from trip_info where month(trip_date)= month_name)
 select start_from, end_from ,count(between_city) as num_of_trips from trip where between_city = 1;
 end $$
 delimiter ;
drop procedure trip_between_cities;
call  trip_between_cities('Delhi', 'Agra',4);
call  trip_between_cities('Delhi', 'Lucknow',4);
 -- ------------------------------------------------------------------------------------
 -- date wise trips or bookings
 
 SELECT 
    trip_date, COUNT(trip_id) AS num_of_trips
FROM
    trip_info
GROUP BY 1
ORDER BY 1;
-- -----------------------------------------------------------------------

-- customer preferences over type fuel of engine when they booking

create view  count_fuel as(
SELECT 
    t.trip_id, t.customer_id, v.type_of_fuel
FROM
    trip_info AS t
        INNER JOIN
    vehicle_info AS v USING (vehicle_id));

delimiter $$
create procedure fuel_preferences(in fuel varchar(10))
begin
SELECT 
    t.trip_id, t.customer_id, v.type_of_fuel
FROM
    trip_info AS t
        INNER JOIN
    vehicle_info AS v USING (vehicle_id)
    where v.type_of_fuel = fuel;
    
select count(* ) from count_fuel where type_of_fuel = fuel;
end $$ 
delimiter ;

call  fuel_preferences('cng');



