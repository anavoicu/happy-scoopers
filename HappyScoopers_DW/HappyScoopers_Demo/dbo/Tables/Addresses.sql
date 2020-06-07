CREATE TABLE [dbo].[Addresses] (
    [AddressID]    INT           IDENTITY (1, 1) NOT NULL,
    [AddressLine1] NVARCHAR (60) NOT NULL,
    [AddressLine2] NVARCHAR (60) NULL,
    [CityID]       INT           NOT NULL,
    [PostalCode]   NVARCHAR (15) NOT NULL,
    [ModifiedDate] DATETIME      CONSTRAINT [DF_Addresses_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED ([AddressID] ASC)
);

