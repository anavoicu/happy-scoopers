CREATE TABLE [dbo].[ProductDepartments] (
    [DepartmentID] INT            IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (50)  NOT NULL,
    [Description]  NVARCHAR (200) NOT NULL,
    [ModifiedDate] DATETIME       CONSTRAINT [DF_ProductDepartments_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ProductDepartments] PRIMARY KEY CLUSTERED ([DepartmentID] ASC)
);

