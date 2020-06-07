CREATE TABLE [dbo].[Provinces] (
    [ProvinceID]   INT            IDENTITY (1, 1) NOT NULL,
    [ProvinceCode] NVARCHAR (5)   NOT NULL,
    [ProvinceName] NVARCHAR (200) NOT NULL,
    [CountryID]    INT            NOT NULL,
    [Population]   BIGINT         NULL,
    [ModifiedDate] DATETIME       CONSTRAINT [DF_Provinces_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Provinces] PRIMARY KEY CLUSTERED ([ProvinceID] ASC)
);

