

CREATE VIEW [dbo].[vw_Employees]
AS

SELECT 
	 CONVERT(nvarchar(200),'')								AS [_SourceKey]
	,CONVERT(nvarchar(50),'')							    AS [Location Key]
	,CONVERT(nvarchar(100),'N/A')							AS [Last Name]
	,CONVERT(nvarchar(100),'N/A')							AS [First Name]
	,CONVERT(nvarchar(25),'N/A')							AS [Title]
	,CONVERT(date,'1753-01-01')							    AS [Birth Date]
	,CONVERT(nvarchar(10),'N/A')							AS [Gender]
	,CONVERT(date,'1753-01-01')							    AS [Hire Date]
	,CONVERT(nvarchar(100),'N/A')							AS [Job Title]
	,CONVERT(nvarchar(100),'N/A')							AS [Address Line]
	,CONVERT(nvarchar(100),'N/A')							AS [City]
	,CONVERT(nvarchar(100),'N/A')							AS [Country]
	,CONVERT(nvarchar(50),'')						        AS [Manager Key]
	,CONVERT(datetime, '1753-01-01')						AS [Valid From]
	,CONVERT(datetime, '9999-12-31')						AS [Valid To]
	,CONVERT(int, -1)										AS [Lineage Key]


UNION ALL

SELECT 
	 'HSD|' + CONVERT(NVARCHAR, emp.[EmployeeID])			AS [_SourceKey]
	,	CONCAT_WS('|', 'HSD', 
		CONVERT(nvarchar(5), ISNULL(cou.CountryID, 0)),
		CONVERT(nvarchar(5), ISNULL(prv.ProvinceID, 0)),
		CONVERT(nvarchar(5), ISNULL(cit.CityID, 0)), 
		CONVERT(nvarchar(5), ISNULL(adr.AddressID, 0)))		AS [Location Key]
	,CONVERT(nvarchar(100),emp.LastName)					AS [Last Name]
	,CONVERT(nvarchar(100),emp.FirstName)					AS [First Name]
	,CONVERT(nvarchar(25),emp.Title)						AS [Title]
	,CONVERT(date,emp.BirthDate)						    AS [Birth Date]
	,CONVERT(nvarchar(10),emp.Gender)						AS [Gender]
	,CONVERT(date,emp.HireDate)							    AS [Hire Date]
	,CONVERT(nvarchar(100),emp.JobTitle)					AS [Job Title]
	,CONVERT(nvarchar(100),adr.AddressLine1)				AS [Address Line]
	,CONVERT(nvarchar(100),cit.CityName)					AS [City]
	,CONVERT(nvarchar(100),cou.CountryName)					AS [Country]
	,'HSD|' + CONVERT(NVARCHAR, emp.ManagerID)		        AS [Manager Key]
	,CONVERT(datetime, '1753-01-01')						AS [Valid From]
	,CONVERT(datetime, '9999-12-31')						AS [Valid To]
	,CONVERT(int, -1)										AS [Lineage Key]
FROM [$(HappyScoopers_Demo)].[dbo].[Employees] emp
LEFT JOIN [$(HappyScoopers_Demo)].[dbo].[Addresses] adr ON emp.AddressID = adr.AddressID
LEFT JOIN [$(HappyScoopers_Demo)].[dbo].Cities cit ON adr.CityID = cit.CityID
LEFT JOIN [$(HappyScoopers_Demo)].[dbo].Provinces prv ON cit.ProvinceID = prv.ProvinceID
LEFT JOIN [$(HappyScoopers_Demo)].[dbo].Countries cou ON prv.CountryID = cou.CountryID