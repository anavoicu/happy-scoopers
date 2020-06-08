CREATE TABLE [dbo].[Employees] (
    [EmployeeID]   INT            IDENTITY (1, 1) NOT NULL,
    [LastName]     NVARCHAR (100) NOT NULL,
    [FirstName]    NVARCHAR (100) NOT NULL,
    [Title]        NVARCHAR (25)  NOT NULL,
    [BirthDate]    DATETIME       NOT NULL,
    [Gender]       NCHAR (10)     NOT NULL,
    [HireDate]     DATETIME       NOT NULL,
    [JobTitle]     NVARCHAR (100) NOT NULL,
    [AddressID]    INT            NOT NULL,
    [ManagerID]    INT            NULL,
    [ModifiedDate] DATETIME       CONSTRAINT [DF_Employees_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([EmployeeID] ASC)
);

