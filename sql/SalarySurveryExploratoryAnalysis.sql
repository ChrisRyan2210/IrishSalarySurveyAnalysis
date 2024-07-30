--Exploratory Analysis
USE DevilEireSalarySurvey;

--Changing column type to int for analysis
BEGIN TRANSACTION;
ALTER TABLE [SurveyResults_2024]
ALTER COLUMN [Total_Comp] FLOAT;
GO
--Checking for errors
SELECT *
FROM SurveyResults_2024;
GO
COMMIT;

--Analysis
SELECT Age_Bracket, ROUND(AVG(Total_Comp), 0) AS Avg_Comp, COUNT(*) AS NumberOfEntries
FROM SurveyResults_2024
GROUP BY Age_Bracket
ORDER BY Avg_Comp ASC;

SELECT Education_Level, ROUND(AVG(Total_Comp), 0) AS Avg_Comp, COUNT(*) AS NumberOfEntries
FROM SurveyResults_2024
GROUP BY Education_Level
ORDER BY Avg_Comp ASC;

SELECT Region, ROUND(AVG(Total_Comp), 0) AS Avg_Comp, COUNT(*) AS NumberOfEntries
FROM SurveyResults_2024
GROUP BY Region
ORDER BY Avg_Comp ASC;

SELECT Seniority_Level, ROUND(AVG(Total_Comp), 0) AS Avg_Comp, COUNT(*) AS NumberOfEntries
FROM SurveyResults_2024
GROUP BY Seniority_Level
ORDER BY Avg_Comp ASC;