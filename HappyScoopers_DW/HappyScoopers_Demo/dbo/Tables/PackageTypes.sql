CREATE TABLE [dbo].[PackageTypes] (
    [PackageTypeID]   INT           IDENTITY (1, 1) NOT NULL,
    [PackageTypeName] NVARCHAR (50) NOT NULL,
    [ModifiedDate]    DATETIME      CONSTRAINT [DF_PackageTypes_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_PackageTypes] PRIMARY KEY CLUSTERED ([PackageTypeID] ASC)
);

