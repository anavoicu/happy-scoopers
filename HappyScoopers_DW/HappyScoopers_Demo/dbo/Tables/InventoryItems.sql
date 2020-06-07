CREATE TABLE [dbo].[InventoryItems] (
    [InventoryItemID]        INT             IDENTITY (1, 1) NOT NULL,
    [ProductID]              INT             NULL,
    [IngredientID]           INT             NULL,
    [PackageTypeID]          INT             NOT NULL,
    [UnitOfMeasureID]        INT             NOT NULL,
    [Quantity]               DECIMAL (18, 2) NOT NULL,
    [Barcode]                NVARCHAR (50)   NULL,
    [VATRate]                DECIMAL (18, 3) NOT NULL,
    [UnitPrice]              DECIMAL (18, 2) NOT NULL,
    [RecommendedRetailPrice] DECIMAL (18, 2) NULL,
    [TypicalWeightPerUnit]   DECIMAL (18, 3) NOT NULL,
    [ModifiedDate]           DATETIME        CONSTRAINT [DF_InventoryItems_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_InventoryItems] PRIMARY KEY CLUSTERED ([InventoryItemID] ASC)
);

