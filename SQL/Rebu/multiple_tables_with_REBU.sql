-- checking db contents
SELECT * FROM trips;
SELECT * FROM riders;
SELECT * FROM cars;
SELECT * FROM riders2;

-- playing with joins
select * from trips
left join riders on
trips.rider_id = riders.id;


select * from trips 
inner join cars on
trips.car_id = cars.id;

-- converting 2 table results into 1
select * from riders
union
select * from riders2;

-- checking average cost price
select round(avg(cost),2) from trips;

/* finding not very involved clients in 2 tables*/ 
select * from riders
where total_trips < 500
union 
select * from riders2
where total_trips < 500;

-- finding working cars
select count(*) from cars
where status = 'active';

-- finding the most user car
select * from cars
order by trips_completed desc
limit 2;
