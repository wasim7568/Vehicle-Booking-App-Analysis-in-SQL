SELECT * FROM vehicle_booking_app.vehicle_info;
desc vehicle_info;

select type_of_vehicle, count(*) as  number_of_veh from vehicle_info
group by 1;

select air_condition, count(*) as num_of_veh from vehicle_info
group by 1;

select type_of_fuel, count(*) from vehicle_info
group by 1;

select vehicle_id, vehicle_condition,
(case when vehicle_condition <=3 then 'New'
when vehicle_condition <=6 then 'old'
else 'vintage' end) car_condition from vehicle_info
limit 10;