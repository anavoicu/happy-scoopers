CREATE TABLE [dbo].[PaymentTypes] (
    [PaymentTypeID]   INT           IDENTITY (1, 1) NOT NULL,
    [PaymentTypeName] NVARCHAR (50) NOT NULL,
    [ModifiedDate]    DATETIME      CONSTRAINT [DF_PaymentTypes_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_PaymentTypes] PRIMARY KEY CLUSTERED ([PaymentTypeID] ASC)
);

