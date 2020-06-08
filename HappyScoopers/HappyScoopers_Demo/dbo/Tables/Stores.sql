CREATE TABLE [dbo].[Stores] (
    [StoreID]      INT            IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (200) NOT NULL,
    [ManagerID]    INT            NULL,
    [AddressID]    INT            NOT NULL,
    [ModifiedDate] DATETIME       CONSTRAINT [DF_Stores_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Stores] PRIMARY KEY CLUSTERED ([StoreID] ASC)
);

