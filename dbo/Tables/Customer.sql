CREATE TABLE [dbo].[Customer] (
    [CustomerId]   INT           IDENTITY (1, 1) NOT NULL,
    [LastName]     NVARCHAR (50) NULL,
    [FirstName]    NVARCHAR (50) NULL,
    [EmailAddress] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([CustomerId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Customer_LastName]
    ON [dbo].[Customer]([LastName] ASC);

