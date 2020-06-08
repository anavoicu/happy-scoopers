CREATE TABLE [dbo].[Fact_Sales] (
    [Sale Key]              BIGINT          IDENTITY (1, 1) NOT NULL,
    [Customer Key]          INT             NOT NULL,
    [Employee Key]          INT             NOT NULL,
    [Product Key]           INT             NOT NULL,
    [Payment Type Key]      INT             NOT NULL,
    [Order Date Key]        INT             NOT NULL,
    [Delivery Date Key]     INT             NULL,
    [Delivery Location Key] INT             NULL,
    [Promotion Key]         INT             NOT NULL,
    [Description]           NVARCHAR (100)  NOT NULL,
    [Package]               NVARCHAR (50)   NOT NULL,
    [Quantity]              INT             NULL,
    [Unit Price]            DECIMAL (18, 2) NULL,
    [VAT Rate]              DECIMAL (18, 3) NULL,
    [Total Excluding VAT]   DECIMAL (18, 2) NULL,
    [VAT Amount]            DECIMAL (18, 2) NULL,
    [Total Including VAT]   DECIMAL (18, 2) NULL,
    [_SourceOrder]          NVARCHAR (50)   NOT NULL,
    [_SourceOrderLine]      NVARCHAR (50)   NOT NULL,
    [Lineage Key]           INT             NOT NULL
	--,
    --CONSTRAINT [FK_Fact_Sales_Dim_Customer] FOREIGN KEY ([Customer Key]) REFERENCES [dbo].[Dim_Customer] ([Customer Key]),
    --CONSTRAINT [FK_Fact_Sales_Dim_Date] FOREIGN KEY ([Delivery Date Key]) REFERENCES [dbo].[Dim_Date] ([Date Key]),
    --CONSTRAINT [FK_Fact_Sales_Dim_Date1] FOREIGN KEY ([Order Date Key]) REFERENCES [dbo].[Dim_Date] ([Date Key]),
    --CONSTRAINT [FK_Fact_Sales_Dim_Employee] FOREIGN KEY ([Employee Key]) REFERENCES [dbo].[Dim_Employee] ([Employee Key]),
    --CONSTRAINT [FK_Fact_Sales_Dim_Location] FOREIGN KEY ([Delivery Location Key]) REFERENCES [dbo].[Dim_Location] ([Location Key]),
    --CONSTRAINT [FK_Fact_Sales_Dim_PaymentType] FOREIGN KEY ([Payment Type Key]) REFERENCES [dbo].[Dim_PaymentType] ([Payment Type Key]),
    --CONSTRAINT [FK_Fact_Sales_Dim_Product] FOREIGN KEY ([Product Key]) REFERENCES [dbo].[Dim_Product] ([Product Key]),
    --CONSTRAINT [FK_Fact_Sales_Dim_Promotion] FOREIGN KEY ([Promotion Key]) REFERENCES [dbo].[Dim_Promotion] ([Promotion Key])
);





