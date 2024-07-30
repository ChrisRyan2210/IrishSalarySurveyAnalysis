USE DevilEireSalarySurvey

SELECT *
FROM [SurveyResults_2024]

--Updating Total_Comp column to change from bracket to the mid range of the bracket. Will allow easier use of data in Tableau. 
UPDATE SurveyResults_2024
SET [Total_Comp] = CASE
					WHEN [Total_Comp] LIKE '%26%' THEN 26000
					WHEN [Total_Comp] LIKE '27%' THEN 30000
					WHEN [Total_Comp] LIKE '34%' THEN 37000
					WHEN [Total_Comp] LIKE '41%' THEN 45000
					WHEN [Total_Comp] LIKE '51%' THEN 55000
					WHEN [Total_Comp] LIKE '61%' THEN 65000
					WHEN [Total_Comp] LIKE '71%' THEN 75000
					WHEN [Total_Comp] LIKE '81%' THEN 85000
					WHEN [Total_Comp] LIKE '91%' THEN 95000
					WHEN [Total_Comp] LIKE '101%' THEN 105000
					WHEN [Total_Comp] LIKE '111%' THEN 115000
					WHEN [Total_Comp] LIKE '121%' THEN 125000
					WHEN [Total_Comp] LIKE '131%' THEN 135000
					WHEN [Total_Comp] LIKE '141%' THEN 150000
					WHEN [Total_Comp] LIKE '161%' THEN 170000
					WHEN [Total_Comp] LIKE '181%' THEN 190000
					WHEN [Total_Comp] LIKE '201%' THEN 250000
					WHEN [Total_Comp] LIKE '301%' THEN 350000
					WHEN [Total_Comp] LIKE '400k+' THEN 400000
					END;

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

--Removing unemployed as it salaries will inaccurately skew data (most were removed in excel earlier but missed some so fixing here)
DELETE FROM [SurveyResults_2024]
WHERE [#_of_companies_worked_for] IS NULL;

--Finding and deleting obvious fake entries
SELECT * 
FROM [SurveyResults_2024]
WHERE Total_Comp >= 200000;

SELECT * 
FROM [SurveyResults_2024]
WHERE Total_Comp >= 400000;

DELETE FROM [SurveyResults_2024]
WHERE Total_Comp >= 400000 
AND Age_Bracket = '<18';

GO 
-- Creating view to import to Tableau
CREATE VIEW Survey_Results_2024 AS (
	
	SELECT * FROM 
	[SurveyResults_2024]
)
