CREATE TABLE [dbo].[Cities] (
    [CityID]       INT           IDENTITY (1, 1) NOT NULL,
    [CityName]     NVARCHAR (50) NOT NULL,
    [ProvinceID]   INT           NOT NULL,
    [Population]   BIGINT        NULL,
    [ModifiedDate] DATETIME      CONSTRAINT [DF_Cities_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED ([CityID] ASC),
);

