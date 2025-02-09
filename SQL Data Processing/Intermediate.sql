-- Calculate the average financial loss per wildfire.
select avg(Estimated_Financial_Loss_in_Millions) as Average_Financial_Loss
from california_wildfire_data;

-- Retrieve the top 5 most destructive wildfires in terms of area burned.
select ï»¿Incident_ID, Date, Location, Area_Burned_Acres
from california_wildfire_data
order by Area_Burned_Acres desc
limit 5;

-- List all wildfires where more than 500 homes were destroyed and more than 10 fatalities occurred.
select ï»¿Incident_ID, Date, Location, Homes_Destroyed, Fatalities from california_wildfire_data
where Homes_Destroyed>500 and Fatalities>10;

-- Find the total number of homes, businesses, and vehicles destroyed for each location.
select Location,sum(Homes_Destroyed) as Total_Homes_Destroyed, 
	   sum(Vehicles_Damaged) as Total_Vehicles_Damaged, 
       sum(Businesses_Destroyed) as Total_BUsinesses_Destroyed
from california_wildfire_data
group by Location;

-- Find the wildfire that caused the highest financial loss
select *
from california_wildfire_data
order by Estimated_Financial_Loss_in_Millions desc
limit 1;



