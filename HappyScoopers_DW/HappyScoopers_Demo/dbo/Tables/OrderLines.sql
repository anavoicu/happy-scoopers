CREATE TABLE [dbo].[OrderLines] (
    [OrderLineID]     INT             IDENTITY (1, 1) NOT NULL,
    [OrderID]         INT             NOT NULL,
    [ProductID]       INT             NOT NULL,
    [PackageTypeID]   INT             NOT NULL,
    [PromotionID]     INT             NULL,
    [InventoryItemID] INT             NULL,
    [UnitPrice]       DECIMAL (18, 2) NOT NULL,
    [Description]     NVARCHAR (200)  NOT NULL,
    [Quantity]        INT             NOT NULL,
    [Discount]        DECIMAL (18, 2) NOT NULL,
    [ModifiedDate]    DATETIME        CONSTRAINT [DF_OrderLines_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    [LineNumber]      NVARCHAR (10)   NULL,
    [VATRate]         DECIMAL (18, 2) NULL
);

