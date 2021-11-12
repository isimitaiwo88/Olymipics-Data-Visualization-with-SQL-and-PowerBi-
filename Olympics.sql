/*Select * FROM olympic_games.dbo.athletes_event_results 

Select distinct ID, Name FROM olympic_games.dbo.athletes_event_results
*/

SELECT 
[ID], [Name] As 'Competitor Name',
CASE WHEN SEX = 'M' THEN 'Male' ELSE 'Female' END AS Sex,
Age,
	CASE WHEN Age < 18 THEN 'Under 18'
	WHEN Age Between 18 And 25 THEN '18-25'
	WHEN Age Between 25 AND 30 THEN '25-30'
	WHEN Age > 30 THEN 'Over 30'
	END AS [Age Grouping],
Height,
Weight,
NOC AS 'Nation Code',
	LEFT(Games, CHARINDEX(' ',Games) -1) AS 'Year',
	Right(Games, CHARINDEX(' ',REVERSE(Games)) -1) AS 'Season',
Games,
Sport,
Event,
CASE WHEN Medal = 'NA' THEN 'Not Registered' ELSE Medal END AS Medal
FROM olympic_games.dbo.athletes_event_results
WHERE Right(Games, CHARINDEX(' ',REVERSE(Games)) -1) = 'Summer'


SELECT * FROM olympic_games.dbo.athletes_event_results
WHERE Medal = 'Gold'

