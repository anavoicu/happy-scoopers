





CREATE VIEW [dbo].[vw_Products]
AS

SELECT 
	 CONVERT(nvarchar(200),'')								AS [_SourceKey]
	,CONVERT(nvarchar(200),'N/A')							AS [Product Name]
	,CONVERT(nvarchar(200),'N/A')							AS [Product Code]
	,CONVERT(nvarchar(200),'N/A')							AS [Product Description]
	,CONVERT(nvarchar(200),'N/A')							AS [Subcategory]
	,CONVERT(nvarchar(200),'N/A')							AS [Category]
	,CONVERT(nvarchar(200),'N/A')							AS [Department]
	,CONVERT(nvarchar(200),'N/A')							AS [Unit of measure Code]
	,CONVERT(nvarchar(200),'N/A')							AS [Unit of measure Name]
	,CONVERT(decimal(18,2),-1)								AS [Unit Price]
	,CONVERT(nvarchar(200),'N/A')							AS [Discontinued] 
	,CONVERT(datetime, '1753-01-01')						AS [ValidFrom]
	,CONVERT(datetime, '9999-12-31')						AS [ValidTo]
	,CONVERT(int, -1)										AS [LineageKey]


UNION ALL

SELECT 
	 'HSD|' + CONVERT(NVARCHAR, prod.[ProductID])			AS [_SourceKey]
	,CONVERT(nvarchar(200), prod.[ProductName])				AS [Product Name]
	,CONVERT(nvarchar(50), prod.[ProductCode])				AS [Product Code]
	,CONVERT(nvarchar(200), prod.[ProductDescription])		AS [Product Description]
	,CONVERT(nvarchar(200), subcat.[SubcategoryName])		AS [Subcategory]
	,CONVERT(nvarchar(200), cat.[CategoryName])				AS [Category]
	,CONVERT(nvarchar(200), dep.[Name])						AS [Department]
	,CONVERT(nvarchar(10), um.[UnitMeasureCode])			AS [Unit of measure Code]
	,CONVERT(nvarchar(50), um.[Name])						AS [Unit of measure Name]
	,CONVERT(decimal(18,2), prod.[UnitPrice])				AS [Unit Price]
	,CONVERT(nvarchar(10), CASE prod.[Discontinued]
		WHEN 1 THEN 'Yes'
		ELSE 'No'
	 END)													AS [Discontinued] 
	,CONVERT(datetime, prod.ModifiedDate)					AS [ValidFrom]
	,CONVERT(datetime, '9999-12-31')						AS [ValidTo]
	,CONVERT(int, -1)										AS [LineageKey]

FROM [$(HappyScoopers_Demo)].[dbo].[Products] prod
LEFT JOIN [$(HappyScoopers_Demo)].[dbo].[ProductSubcategories] subcat ON prod.SubcategoryID = subcat.ProductSubcategoryID
LEFT JOIN [$(HappyScoopers_Demo)].[dbo].[ProductCategories] cat ON subcat.ProductCategoryID = cat.CategoryID
LEFT JOIN [$(HappyScoopers_Demo)].[dbo].[ProductDepartments] dep ON cat.DepartmentID = dep.DepartmentID
LEFT JOIN [$(HappyScoopers_Demo)].[dbo].[UnitsOfMeasure] um ON prod.UnitOfMeasureID = um.UnitOfMeasureID