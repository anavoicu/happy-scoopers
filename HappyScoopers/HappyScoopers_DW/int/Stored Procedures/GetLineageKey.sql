
CREATE   PROCEDURE [int].[GetLineageKey]
@TableName nvarchar(100),
@SourceMaxDate datetime

AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

-- The load for @TableName starts now 
DECLARE @StartLoadDate DATETIME2(7) = SYSDATETIME();

-- A new row is inserted into the Lineage table, with the starting date of the load and the table name
INSERT INTO [int].[Lineage](
	 [TableName]
	,[StartLoadDate]
	,[FinishLoadDate]
	,[Status]
	,[SourceMaxDate]
	)
VALUES (
	 @TableName
	,@StartLoadDate
	,NULL
	,'P'
	,@SourceMaxDate
	);

-- Select the key of the previously inserted row
SELECT MAX([LineageKey]) AS LineageKey
FROM [int].[Lineage]
WHERE 
	[TableName] = @TableName
	AND [StartLoadDate] = StartLoadDate
ORDER BY LineageKey DESC;    

RETURN 0;
END;