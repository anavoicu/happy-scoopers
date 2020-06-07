CREATE TABLE [dbo].[Products] (
    [ProductID]          INT             IDENTITY (1, 1) NOT NULL,
    [ProductName]        NVARCHAR (40)   NOT NULL,
    [ProductCode]        NVARCHAR (10)   NOT NULL,
    [ProductDescription] NVARCHAR (200)  NOT NULL,
    [SubcategoryID]      INT             NOT NULL,
    [UnitOfMeasureID]    INT             NOT NULL,
    [UnitPrice]          DECIMAL (18, 2) NOT NULL,
    [Discontinued]       BIT             NOT NULL,
    [ModifiedDate]       DATETIME        CONSTRAINT [DF_Products2_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Products2] PRIMARY KEY CLUSTERED ([ProductID] ASC)
);

