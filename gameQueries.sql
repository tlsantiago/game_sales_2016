-- Select all

SELECT * FROM dbo.vgsales2016

-- Sales by Title (in milions)

SELECT Name, SUM(CAST(Global_Sales as float)) as G_Sales_Title,
SUM(CAST(NA_Sales as float)) as NA_Title,
SUM(CAST(EU_Sales as float)) as EU_Title,
SUM(CAST(JP_Sales as float)) as JP_Title,
SUM(CAST(Other_Sales as float)) as Other_Title
FROM dbo.vgsales2016
GROUP BY Name
ORDER BY G_Sales_Title desc

-- Sales by Platform (in milions)

SELECT Platform, SUM(CAST(Global_Sales as float)) as G_Sales_Platform
FROM dbo.vgsales2016
GROUP BY Platform
ORDER BY G_Sales_Platform desc

-- Sales by genre (in milions)

SELECT Genre, SUM(CAST(Global_Sales as float)) as G_Sales_Genre
FROM dbo.vgsales2016
GROUP BY Genre
ORDER BY G_Sales_Genre desc

-- Sales by publisher (in milions)

SELECT Publisher, SUM(CAST(Global_Sales as float)) as G_Sales_Publisher,
SUM(CAST(NA_Sales as float)) as NA_Publisher,
SUM(CAST(EU_Sales as float)) as EU_Publisher,
SUM(CAST(JP_Sales as float)) as JP_Publisher,
SUM(CAST(Other_Sales as float)) as Other_Publisher

FROM dbo.vgsales2016
GROUP BY Publisher
ORDER BY G_Sales_Publisher desc


----------------------- Region evaluation ------------------------------

-- Sales by platform for each region

SELECT 
Platform, 
SUM(CAST(NA_Sales as float)) as NA_Sales_Platform,
SUM(CAST(EU_Sales as float)) as EU_Sales_Platform,
SUM(CAST(JP_Sales as float)) as JP_Sales_Platform,
SUM(CAST(Other_Sales as float)) as Other_Sales_Platform

FROM dbo.vgsales2016

GROUP BY Platform
ORDER BY Platform


-- Sales by Genre for each region


SELECT 
Genre, 
SUM(CAST(NA_Sales as float)) as NA_Sales_Genre,
SUM(CAST(EU_Sales as float)) as EU_Sales_Genre,
SUM(CAST(JP_Sales as float)) as JP_Sales_Genre,
SUM(CAST(Other_Sales as float)) as Other_Sales_Genre

FROM dbo.vgsales2016

GROUP BY Genre
ORDER BY Genre


-- Overall sales per region


SELECT 
SUM(CAST(NA_Sales as float)) as Overall_NA_Sales,
SUM(CAST(EU_Sales as float)) as Overall_EU_Sales,
SUM(CAST(JP_Sales as float)) as Overall_JP_Sales,
SUM(CAST(Other_Sales as float)) as Overall_Other_Sales

FROM dbo.vgsales2016