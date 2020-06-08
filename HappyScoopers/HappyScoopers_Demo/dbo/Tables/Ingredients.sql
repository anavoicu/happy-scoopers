CREATE TABLE [dbo].[Ingredients] (
    [IngredientID]    INT            IDENTITY (1, 1) NOT NULL,
    [IngredientName]  NVARCHAR (200) NULL,
    [UnitOfMeasureID] INT            NULL,
    [ModifiedDate]    DATETIME       CONSTRAINT [DF_Ingredients_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Ingredients] PRIMARY KEY CLUSTERED ([IngredientID] ASC)
);

