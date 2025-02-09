-- Find the total number of wildfires recorded in the dataset.
select count(*) as total_wildfires from california_wildfire_data;

-- List distinct wildfire causes.
select distinct(Cause) from california_wildfire_data;

-- Retrieve all data for wildfires that occurred in "Sonoma County."
select * from california_wildfire_data
where Location = "Sonoma County";

-- Retrieve the details of wildfires that resulted in more than 10 fatalities.
select * from california_wildfire_data
where Fatalities > 10;

