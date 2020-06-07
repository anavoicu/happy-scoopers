CREATE TABLE [dbo].[Customers] (
    [CustomerID]        INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]         NVARCHAR (50)  NOT NULL,
    [LastName]          NVARCHAR (100) NOT NULL,
    [FullName]          AS             (([FirstName]+' ')+[LastName]),
    [Title]             NVARCHAR (30)  NOT NULL,
    [DeliveryAddressID] INT            NOT NULL,
    [BillingAddressID]  INT            NOT NULL,
    [PhoneNumber]       NVARCHAR (24)  NOT NULL,
    [Email]             NVARCHAR (100) NULL,
    [ModifiedDate]      DATETIME       CONSTRAINT [DF_Customers_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);

