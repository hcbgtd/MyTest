
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/28/2016 10:11:52
-- Generated from EDMX file: D:\Contracts\Projects\Fun\FunApp\Fun.Entities.Designer\FunEntities.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Fun];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_TrainingKnowlogyTrainingTerm]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrainingKnowlogies] DROP CONSTRAINT [FK_TrainingKnowlogyTrainingTerm];
GO
IF OBJECT_ID(N'[dbo].[FK_TrainingKnowlogyTrainingTermCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrainingKnowlogies] DROP CONSTRAINT [FK_TrainingKnowlogyTrainingTermCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_TrainingTermFeatureTrainingTerm]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrainingTermFeatures] DROP CONSTRAINT [FK_TrainingTermFeatureTrainingTerm];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[TrainingTermFeatures]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TrainingTermFeatures];
GO
IF OBJECT_ID(N'[dbo].[TrainingTerms]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TrainingTerms];
GO
IF OBJECT_ID(N'[dbo].[TrainingTermCategories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TrainingTermCategories];
GO
IF OBJECT_ID(N'[dbo].[TrainingKnowlogies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TrainingKnowlogies];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'TrainingTermFeatures'
CREATE TABLE [dbo].[TrainingTermFeatures] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Letter] nvarchar(max)  NOT NULL,
    [Count] nvarchar(max)  NOT NULL,
    [IsFirstLetter] nvarchar(max)  NOT NULL,
    [TrainingTermId] int  NOT NULL
);
GO

-- Creating table 'TrainingTerms'
CREATE TABLE [dbo].[TrainingTerms] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Word] nvarchar(max)  NOT NULL,
    [Length] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TrainingTermCategories'
CREATE TABLE [dbo].[TrainingTermCategories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TrainingKnowlogies'
CREATE TABLE [dbo].[TrainingKnowlogies] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Order] nvarchar(max)  NOT NULL,
    [TrainingTermId] int  NOT NULL,
    [TrainingTermCategoryId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'TrainingTermFeatures'
ALTER TABLE [dbo].[TrainingTermFeatures]
ADD CONSTRAINT [PK_TrainingTermFeatures]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TrainingTerms'
ALTER TABLE [dbo].[TrainingTerms]
ADD CONSTRAINT [PK_TrainingTerms]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TrainingTermCategories'
ALTER TABLE [dbo].[TrainingTermCategories]
ADD CONSTRAINT [PK_TrainingTermCategories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TrainingKnowlogies'
ALTER TABLE [dbo].[TrainingKnowlogies]
ADD CONSTRAINT [PK_TrainingKnowlogies]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [TrainingTermId] in table 'TrainingKnowlogies'
ALTER TABLE [dbo].[TrainingKnowlogies]
ADD CONSTRAINT [FK_TrainingKnowlogyTrainingTerm]
    FOREIGN KEY ([TrainingTermId])
    REFERENCES [dbo].[TrainingTerms]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TrainingKnowlogyTrainingTerm'
CREATE INDEX [IX_FK_TrainingKnowlogyTrainingTerm]
ON [dbo].[TrainingKnowlogies]
    ([TrainingTermId]);
GO

-- Creating foreign key on [TrainingTermCategoryId] in table 'TrainingKnowlogies'
ALTER TABLE [dbo].[TrainingKnowlogies]
ADD CONSTRAINT [FK_TrainingKnowlogyTrainingTermCategory]
    FOREIGN KEY ([TrainingTermCategoryId])
    REFERENCES [dbo].[TrainingTermCategories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TrainingKnowlogyTrainingTermCategory'
CREATE INDEX [IX_FK_TrainingKnowlogyTrainingTermCategory]
ON [dbo].[TrainingKnowlogies]
    ([TrainingTermCategoryId]);
GO

-- Creating foreign key on [TrainingTermId] in table 'TrainingTermFeatures'
ALTER TABLE [dbo].[TrainingTermFeatures]
ADD CONSTRAINT [FK_TrainingTermFeatureTrainingTerm]
    FOREIGN KEY ([TrainingTermId])
    REFERENCES [dbo].[TrainingTerms]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TrainingTermFeatureTrainingTerm'
CREATE INDEX [IX_FK_TrainingTermFeatureTrainingTerm]
ON [dbo].[TrainingTermFeatures]
    ([TrainingTermId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------