CREATE TABLE [dbo].[UnitsOfMeasure] (
    [UnitOfMeasureID] INT           IDENTITY (1, 1) NOT NULL,
    [UnitMeasureCode] NCHAR (3)     NOT NULL,
    [Name]            NVARCHAR (50) NOT NULL,
    [ModifiedDate]    DATETIME      CONSTRAINT [DF_UnitsOfMeasure_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_UnitsOfMeasure] PRIMARY KEY CLUSTERED ([UnitOfMeasureID] ASC)
);

