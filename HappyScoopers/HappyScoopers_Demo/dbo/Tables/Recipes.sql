CREATE TABLE [dbo].[Recipes] (
    [RecipeID]     INT             IDENTITY (1, 1) NOT NULL,
    [ProductID]    INT             NOT NULL,
    [IngredientID] INT             NOT NULL,
    [Quantity]     DECIMAL (18, 2) NOT NULL,
    [Comments]     NVARCHAR (2000) NOT NULL,
    [ModifiedDate] DATETIME        CONSTRAINT [DF_Recipes_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    [ValidFrom]    DATETIME2 (0)   NOT NULL,
    [ValidTo]      DATETIME2 (0)   NOT NULL,
    CONSTRAINT [PK_Recipes] PRIMARY KEY CLUSTERED ([RecipeID] ASC)
);

