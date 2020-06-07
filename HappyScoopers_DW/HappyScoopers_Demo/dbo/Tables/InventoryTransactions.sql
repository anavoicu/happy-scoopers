CREATE TABLE [dbo].[InventoryTransactions] (
    [InventoryTransactionID] INT             IDENTITY (1, 1) NOT NULL,
    [InventoryItemID]        INT             NOT NULL,
    [CustomerID]             INT             NULL,
    [OrderID]                INT             NULL,
    [TransactionDate]        DATETIME2 (7)   NOT NULL,
    [Quantity]               DECIMAL (18, 3) NOT NULL,
    [ModifiedDate]           DATETIME        CONSTRAINT [DF_InventoryTransactions_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_InventoryTransactions] PRIMARY KEY CLUSTERED ([InventoryTransactionID] ASC)
);

