CREATE TABLE [dbo].[Staging_Promotion] (
    [Promotion Key]       INT             IDENTITY (1, 1) NOT NULL,
    [_Source Key]         NVARCHAR (50)   NOT NULL,
    [Deal Description]    NVARCHAR (30)   NOT NULL,
    [Start Date]          DATE            NOT NULL,
    [End Date]            DATE            NOT NULL,
    [Discount Amount]     DECIMAL (18, 2) NULL,
    [Discount Percentage] DECIMAL (18, 3) NULL,
    [Modified Date]       DATETIME        NOT NULL,
    [Valid From]          DATETIME        NOT NULL,
    [Valid To]            DATETIME        NOT NULL
);

