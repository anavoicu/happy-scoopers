CREATE TABLE [dbo].[Countries] (
    [CountryID]    INT           IDENTITY (1, 1) NOT NULL,
    [CountryName]  NVARCHAR (60) NOT NULL,
    [FormalName]   NVARCHAR (60) NOT NULL,
    [CountryCode]  NVARCHAR (3)  NULL,
    [Population]   BIGINT        NULL,
    [Continent]    NVARCHAR (30) NOT NULL,
    [Region]       NVARCHAR (30) NOT NULL,
    [Subregion]    NVARCHAR (30) NOT NULL,
    [ModifiedDate] DATETIME      CONSTRAINT [DF_Countries_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED ([CountryID] ASC)
);

