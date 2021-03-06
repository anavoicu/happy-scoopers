﻿CREATE TABLE [dbo].[Staging_Sales] (
    [Staging Sale Key]           BIGINT          IDENTITY (1, 1) NOT NULL,
    [Customer Key]               INT             NULL,
    [Employee Key]               INT             NULL,
    [Product Key]                INT             NULL,
    [Payment Type Key]           INT             NULL,
    [Order Date Key]             INT             NULL,
    [Delivery Date Key]          INT             NULL,
    [Delivery Location Key]      INT             NULL,
    [Promotion Key]              INT             NULL,
    [Description]                NVARCHAR (100)  NULL,
    [Package]                    NVARCHAR (50)   NULL,
    [Quantity]                   INT             NULL,
    [Unit Price]                 DECIMAL (18, 2) NULL,
    [VAT Rate]                   DECIMAL (18, 3) NULL,
    [Total Excluding VAT]        DECIMAL (18, 2) NULL,
    [VAT Amount]                 DECIMAL (18, 2) NULL,
    [Total Including VAT]        DECIMAL (18, 2) NULL,
    [ModifiedDate]               DATETIME        NULL,
    [_SourceOrder]               NVARCHAR (50)   NULL,
    [_SourceOrderLine]           NVARCHAR (50)   NULL,
    [_SourceCustomerKey]         INT             NULL,
    [_SourceEmployeeKey]         INT             NULL,
    [_SourceProductKey]          INT             NULL,
    [_SourcePaymentTypeKey]      INT             NULL,
    [_SourceOrderDateKey]        DATE            NULL,
    [_SourceDeliveryDateKey]     DATE            NULL,
    [_SourceDeliveryCountryKey]  INT             NULL,
    [_SourceDeliveryProvinceKey] INT             NULL,
    [_SourceDeliveryCityKey]     INT             NULL,
    [_SourceDeliveryAddressKey]  INT             NULL,
    [_SourceDeliveryLocationKey] NVARCHAR (50)   NULL,
    [_SourcePromotionKey]        INT             NULL
);



