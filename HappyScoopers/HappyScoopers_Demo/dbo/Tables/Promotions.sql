CREATE TABLE [dbo].[Promotions] (
    [PromotionID]        INT             IDENTITY (1, 1) NOT NULL,
    [DealDescription]    NVARCHAR (30)   NOT NULL,
    [StartDate]          DATE            NOT NULL,
    [EndDate]            DATE            NOT NULL,
    [DiscountAmount]     DECIMAL (18, 2) NULL,
    [DiscountPercentage] DECIMAL (18, 3) NULL,
    [ModifiedDate]       DATETIME        CONSTRAINT [DF_Promotions_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Promotions] PRIMARY KEY CLUSTERED ([PromotionID] ASC)
);

