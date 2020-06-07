CREATE TABLE [dbo].[ProductCategories] (
    [CategoryID]          INT            IDENTITY (1, 1) NOT NULL,
    [CategoryName]        NVARCHAR (15)  NOT NULL,
    [CategoryDescription] NVARCHAR (200) NOT NULL,
    [DepartmentID]        INT            NOT NULL,
    [ModifiedDate]        DATETIME       CONSTRAINT [DF_ProductCategories_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryID] ASC)
);

