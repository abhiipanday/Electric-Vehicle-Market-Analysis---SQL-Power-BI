CREATE DATABASE EV_Analysis;
USE EV_Analysis;




CREATE TABLE electric_vehicles (
    vin VARCHAR(50),
    county VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(10),
    postal_code FLOAT,
    model_year INT,
    make VARCHAR(50),
    model VARCHAR(100),
    electric_vehicle_type VARCHAR(100),
    cafv_eligibility VARCHAR(100),
    electric_range INT,
    base_msrp INT,
    legislative_district FLOAT,
    dol_vehicle_id INT,
    vehicle_location VARCHAR(100),
    electric_utility VARCHAR(255),
    census_tract FLOAT
);

SELECT * FROM electric_vehicles LIMIT 10;

# 1. Total Number of Electric Vehicles

SELECT COUNT(*) AS total_vehicles 
FROM  electric_vehicles;

# 2. Total Vehicles by Model Year

SELECT model_year, COUNT(*) AS total_vehicles 
FROM electric_vehicles
WHERE model_year >= 2010
GROUP BY model_year
ORDER BY model_year;

# 3. Total Vehicles by State

SELECT state, COUNT(*) AS total_vehicles
FROM electric_vehicles
GROUP BY state
ORDER BY total_vehicles DESC
LIMIT 10;



# 4. Top 10 Electric Vehicle Makes 

SELECT make, COUNT(*) AS total_vehicles
FROM electric_vehicles
GROUP BY make
ORDER BY total_vehicles DESC
LIMIT 10;


# 5. BEV vs PHEV Market Share

SELECT 
    electric_vehicle_type, 
    COUNT(*) AS total_vehicles, 
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM electric_vehicles), 2) AS percentage
FROM electric_vehicles
GROUP BY electric_vehicle_type;

# 6. Top 10 Most Popular EV Models

SELECT model, COUNT(*) AS total_vehicles
FROM electric_vehicles
GROUP BY model
ORDER BY total_vehicles DESC
LIMIT 10;

# 7. Vehicles Eligible for CAFV Incentives

SELECT 
    cafv_eligibility, 
    COUNT(*) AS total_vehicles
FROM electric_vehicles
GROUP BY cafv_eligibility;



 select * from electric_vehicles;










