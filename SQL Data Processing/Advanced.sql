-- Determine the month in which the highest number of wildfires occurred
SELECT 
    Month_Name, 
    COUNT(*) AS Wildfire_Count
FROM california_wildfire_data
GROUP BY Month_Name
ORDER BY Wildfire_Count DESC
LIMIT 1;

-- Rank wildfires by financial loss within each location
SELECT 
    Location, ï»¿Incident_ID,
    Estimated_Financial_Loss_in_Millions,
    RANK() OVER (PARTITION BY Location ORDER BY Estimated_Financial_Loss_in_Millions DESC) AS rank_loc_finance
FROM california_wildfire_data;

-- Find the cumulative financial loss for each location over time
SELECT 
    Location, 
    Date, 
    Estimated_Financial_Loss_in_Millions,
    SUM(Estimated_Financial_Loss_in_Millions) OVER (PARTITION BY Location ORDER BY Date) AS Cumulative_Loss
FROM california_wildfire_data;

-- Identify the correlation between wildfire causes and the number of fatalities
SELECT 
    Cause, 
    AVG(Fatalities) AS Avg_Fatalities,
    COUNT(*) AS Wildfire_Count
FROM california_wildfire_data
GROUP BY Cause
ORDER BY Avg_Fatalities DESC;

-- Compare the total area burned across years
SELECT 
    Year, 
    SUM(Area_Burned_Acres) AS Total_Area_Burned
FROM california_wildfire_data
GROUP BY Year
ORDER BY Year;




