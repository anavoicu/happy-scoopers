CREATE TABLE [dbo].[Staging_Employee] (
    [Employee Key]            INT            IDENTITY (1, 1) NOT NULL,
    [_Source Key]             NVARCHAR (50)  NOT NULL,
    [Location Key]            NVARCHAR (50)  NOT NULL,
    [Last Name]               NVARCHAR (100) NOT NULL,
    [First Name]              NVARCHAR (100) NOT NULL,
    [Title]                   NVARCHAR (30)  NOT NULL,
    [Birth Date]              DATETIME       NOT NULL,
    [Gender]                  NCHAR (10)     NOT NULL,
    [Hire Date]               DATETIME       NOT NULL,
    [Job Title]               NVARCHAR (100) NOT NULL,
    [Address Line]            NVARCHAR (100) NULL,
    [City]                    NVARCHAR (100) NULL,
    [Country]                 NVARCHAR (100) NULL,
    [Manager Key]             NVARCHAR (50)  NULL,
    [Employee Modified Date]  DATETIME       NOT NULL,
    [Addresses Modified Date] DATETIME       NOT NULL,
    [Valid From]              DATETIME       NOT NULL,
    [Valid To]                DATETIME       NOT NULL
);



