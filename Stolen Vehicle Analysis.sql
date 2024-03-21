SELECT * FROM youtube.locations;
SELECT region FROM youtube.locations;
ALTER TABLE youtube.locations RENAME COLUMN ï»¿location_id TO location_id;
ALTER TABLE youtube.make_details RENAME COLUMN `ï»¿make_id` TO make_id;

# count of vehicle stolen
select count(vehicle_type) from youtube.stolen_vehicles

#count of vehicle stolen by region
SELECT region, count(vehicle_type) from youtube.stolen_vehicles AS sv INNER JOIN youtube.locations AS lo on sv.location_id = lo.location_id
GROUP BY region

#count of vehicle stolen by model year and location
SELECT model_year, sv.location_id, count(vehicle_type) from youtube.stolen_vehicles AS sv INNER JOIN youtube.locations AS lo on sv.location_id = lo.location_id
group by model_year,sv.location_id

#count of vehicle stolen by make id
SELECT vehicle_type, make_id, count(make_id) from youtube.stolen_vehicles AS sv INNER JOIN youtube.locations AS lo on sv.location_id = lo.location_id
group by vehicle_type,make_id

#count of vehicle stolen by color
SELECT vehicle_type, color, count(make_id) from youtube.stolen_vehicles AS sv INNER JOIN youtube.locations AS lo on sv.location_id = lo.location_id
group by vehicle_type,color

#COUNT OF STOLEN VEHICLE BY COLOUR
SELECT color, count(make_id) from youtube.stolen_vehicles AS sv INNER JOIN youtube.locations AS lo on sv.location_id = lo.location_id
group by color

#AVERAGE OF STOLEN BIKE
SELECT AVG(vehicle_id) average  FROM youtube.stolen_vehicles

# vehicle stolen by date
SELECT vehicle_type,date_stolen from youtube.stolen_vehicles AS sv INNER JOIN youtube.locations AS lo on sv.location_id = lo.location_id
group by vehicle_type,date_stolen

# count of vehicle stolen by date and type
SELECT vehicle_type,date_stolen,count(vehicle_id) from youtube.stolen_vehicles AS sv INNER JOIN youtube.locations AS lo on sv.location_id = lo.location_id
group by vehicle_type,date_stolen

#count of vehicle stolen by make id and before 2015
SELECT model_year,md.make_id,count(vehicle_id) from youtube.stolen_vehicles AS sv INNER JOIN youtube.make_details AS md on sv.make_id = md.make_id
group by model_year,md.make_id
having model_year < 2015

# COUNT OF STOLEN VEHICLE NAME WISE AND MODEL YEAR
SELECT model_year,md.make_name,count(vehicle_id) from youtube.stolen_vehicles AS sv INNER JOIN youtube.make_details AS md on sv.make_id = md.make_id
group by model_year,md.make_name 

#COUNT OF STOLEN VEHICLE BY MAKING TYPE
SELECT make_type,count(vehicle_id) from youtube.stolen_vehicles AS sv INNER JOIN youtube.make_details AS md on sv.make_id = md.make_id
group by make_type

