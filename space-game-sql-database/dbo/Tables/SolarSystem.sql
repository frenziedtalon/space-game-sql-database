﻿CREATE TABLE [dbo].[SolarSystem] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [Name]            VARCHAR (50)  NOT NULL,
    [UniverseId]      INT           NOT NULL,
    [CreatedBy]       INT           NOT NULL,
    [CreatedDateUtc]  DATETIME2 (7) NOT NULL,
    [ModifiedBy]      INT           NOT NULL,
    [ModifiedDateUtc] DATETIME2 (7) NOT NULL,
    CONSTRAINT [PK_SolarSystem] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SolarSystem_CreatedBy] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[Users] ([Id]),
    CONSTRAINT [FK_SolarSystem_ModifiedBy] FOREIGN KEY ([ModifiedBy]) REFERENCES [dbo].[Users] ([Id]),
    CONSTRAINT [FK_SolarSystem_Universe] FOREIGN KEY ([UniverseId]) REFERENCES [dbo].[Universe] ([Id])
);

