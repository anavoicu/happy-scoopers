CREATE TABLE [dbo].[Dim_Customer] (
    [Customer Key]          INT            IDENTITY (1, 1) NOT NULL,
    [_Source Key]           NVARCHAR (50)  NOT NULL,
    [First Name]            NVARCHAR (100) NOT NULL,
    [Last Name]             NVARCHAR (100) NOT NULL,
    [Full Name]             AS             (([First Name]+' ')+[Last Name]),
    [Title]                 NVARCHAR (30)  NOT NULL,
    [Delivery Location Key] NVARCHAR (50)  NOT NULL,
    [Billing Location Key]  NVARCHAR (50)  NOT NULL,
    [Phone Number]          NVARCHAR (24)  NOT NULL,
    [Email]                 NVARCHAR (100) NULL,
    [Valid From]            DATETIME       NOT NULL,
    [Valid To]              DATETIME       NOT NULL,
    [Lineage Key]           INT            NOT NULL,
    CONSTRAINT [PK_Dim_Customer] PRIMARY KEY CLUSTERED ([Customer Key] ASC)
);





