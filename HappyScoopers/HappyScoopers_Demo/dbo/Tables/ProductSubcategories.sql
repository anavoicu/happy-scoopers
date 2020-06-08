CREATE TABLE [dbo].[ProductSubcategories] (
    [ProductSubcategoryID]   INT            IDENTITY (1, 1) NOT NULL,
    [ProductCategoryID]      INT            NOT NULL,
    [SubcategoryName]        NVARCHAR (200) NOT NULL,
    [SubcategoryDescription] NVARCHAR (200) NOT NULL,
    [ModifiedDate]           DATETIME       CONSTRAINT [DF_ProductSubcategories_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ProductSubcategories] PRIMARY KEY CLUSTERED ([ProductSubcategoryID] ASC)
);

