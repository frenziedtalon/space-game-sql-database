﻿CREATE TABLE [dbo].[Universe] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [Name]            VARCHAR (50)  NOT NULL,
    [CreatedBy]       INT           NOT NULL,
    [CreatedDateUtc]  DATETIME2 (7) NOT NULL,
    [ModifiedBy]      INT           NOT NULL,
    [ModifiedDateUtc] DATETIME2 (7) NOT NULL,
    CONSTRAINT [PK_Universe] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Universe_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[Users] ([Id]),
    CONSTRAINT [FK_Universe_ModifiedBy] FOREIGN KEY ([ModifiedBy]) REFERENCES [dbo].[Users] ([Id])
);

