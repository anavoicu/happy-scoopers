CREATE TABLE [dbo].[Orders] (
    [OrderID]           INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID]        INT            NULL,
    [EmployeeID]        INT            NOT NULL,
    [DeliveryAddressID] INT            NOT NULL,
    [PaymentTypeID]     INT            NOT NULL,
    [OrderDate]         DATETIME       NOT NULL,
    [DeliveryDate]      DATETIME       NOT NULL,
    [Comments]          NVARCHAR (MAX) NULL,
    [Status]            INT            NULL,
    [ModifiedDate]      DATETIME       CONSTRAINT [DF_Orders_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([OrderID] ASC)
);

