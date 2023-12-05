Create database Car_Trade;
use car_trade;
Create table car_dekho( 
                        Car_name VARCHAR(100),
                        years int,
                        selling_price int,
                        km_driven int,
                        fuel varchar(20),
                        seller_type varchar(50),
                        transmission varchar(50),
                        owner varchar(50),
                        mileage varchar(20),
                        engine varchar(20),
                        max_power varchar(20),
                        torque varchar(50),
                        seats int);
select * from car_dekho;
-- READ THE DATA

-- 1. Total Cars : to get the count of total records.
     select count(*) from car_dekho;
     
-- 2. The manager asked the employee, how many cars will be available in 2023?
        select count(*) from car_dekho where years = '2023';
        
-- 3.How many cars is available for the 2020,2021,2022?
    select years,count(*) from car_dekho 
    where years IN (2020,2021,2022)
    group by years;
   
-- 4. Client asked to print the total of all cars by year. I don't see all the details--
        select years,count(*) from car_dekho
        group by years;
        
-- 5. How many CNG cars will be there in 2020?--
       select count(*) from car_dekho where years = '2020' AND fuel = 'CNG';
       
-- 6. How many Petrol cars will be there in 2018?--
     select count(*) from car_dekho where years = '2018' And Fuel = 'Petrol';
     
-- 7. Client requested a car dealer agent How many diesel cars will there be in 2021?
       select count(*) from car_dekho where years = '2021' and fuel = 'Diesel';

-- 8.  Print All the fuel cars ( petrol,diesel and CNG ) come by all year.
       select years, fuel,count(*) as fuel_cars from car_dekho where fuel IN ( 'petrol','diesel','CNG')
       group by years,fuel;

-- 9. Manager said there were more than 100 cars in a given year, which year had more than 100 cars?
      select years, COUNT(*) AS TotalCars
      from car_dekho
	  group by years
      having COUNT(*) > 100;

-- 10. The Manager said to the employee all cars count details between 2015 and 2023; we need a complete list.
        select years,count(*) from car_dekho where years between 2015 and 2023
        group by years;

                        
                        
