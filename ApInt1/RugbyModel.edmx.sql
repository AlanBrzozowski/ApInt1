
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/24/2017 12:58:45
-- Generated from EDMX file: D:\Użytkownicy\Alan\Desktop\Zlogowaniem\ApInt1-work\ApInt1\RugbyModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Rugby];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Sedzia_na_mecz3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sedzia_na_mecz] DROP CONSTRAINT [FK_Sedzia_na_mecz3];
GO
IF OBJECT_ID(N'[dbo].[FK_Gospodarz]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Meczs] DROP CONSTRAINT [FK_Gospodarz];
GO
IF OBJECT_ID(N'[dbo].[FK_Gość]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Meczs] DROP CONSTRAINT [FK_Gość];
GO
IF OBJECT_ID(N'[dbo].[FK_Sklad_na_mecz3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sklad_na_mecz] DROP CONSTRAINT [FK_Sklad_na_mecz3];
GO
IF OBJECT_ID(N'[dbo].[FK_Relationship_3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Zdarzenies] DROP CONSTRAINT [FK_Relationship_3];
GO
IF OBJECT_ID(N'[dbo].[FK_Relationship_7]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Meczs] DROP CONSTRAINT [FK_Relationship_7];
GO
IF OBJECT_ID(N'[dbo].[FK_Sedzia_na_mecz2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sedzia_na_mecz] DROP CONSTRAINT [FK_Sedzia_na_mecz2];
GO
IF OBJECT_ID(N'[dbo].[FK_Sklad_na_mecz2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sklad_na_mecz] DROP CONSTRAINT [FK_Sklad_na_mecz2];
GO
IF OBJECT_ID(N'[dbo].[FK_Sklad_na_mecz4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sklad_na_mecz] DROP CONSTRAINT [FK_Sklad_na_mecz4];
GO
IF OBJECT_ID(N'[dbo].[FK_Sedzia_na_mecz]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sedzia_na_mecz] DROP CONSTRAINT [FK_Sedzia_na_mecz];
GO
IF OBJECT_ID(N'[dbo].[FK_Sklad_na_mecz]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sklad_na_mecz] DROP CONSTRAINT [FK_Sklad_na_mecz];
GO
IF OBJECT_ID(N'[dbo].[FK_Relationship_5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Zdarzenies] DROP CONSTRAINT [FK_Relationship_5];
GO
IF OBJECT_ID(N'[dbo].[FK_Relationship_4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Zdarzenies] DROP CONSTRAINT [FK_Relationship_4];
GO
IF OBJECT_ID(N'[dbo].[FK_Sezon_rogrywki_KLUB]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sezon_rogrywki] DROP CONSTRAINT [FK_Sezon_rogrywki_KLUB];
GO
IF OBJECT_ID(N'[dbo].[FK_Sezon_rogrywki_Sezon]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sezon_rogrywki] DROP CONSTRAINT [FK_Sezon_rogrywki_Sezon];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Funkcja_sedziowska]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Funkcja_sedziowska];
GO
IF OBJECT_ID(N'[dbo].[KLUBs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KLUBs];
GO
IF OBJECT_ID(N'[dbo].[Meczs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Meczs];
GO
IF OBJECT_ID(N'[dbo].[Rodzaj_pozycji]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Rodzaj_pozycji];
GO
IF OBJECT_ID(N'[dbo].[Sedzias]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sedzias];
GO
IF OBJECT_ID(N'[dbo].[Sedzia_na_mecz]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sedzia_na_mecz];
GO
IF OBJECT_ID(N'[dbo].[Sezons]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sezons];
GO
IF OBJECT_ID(N'[dbo].[Sklad_na_mecz]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sklad_na_mecz];
GO
IF OBJECT_ID(N'[dbo].[Stadions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Stadions];
GO
IF OBJECT_ID(N'[dbo].[Typ_zdarzenia]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Typ_zdarzenia];
GO
IF OBJECT_ID(N'[dbo].[Zawodniks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Zawodniks];
GO
IF OBJECT_ID(N'[dbo].[Zdarzenies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Zdarzenies];
GO
IF OBJECT_ID(N'[dbo].[Sezon_rogrywki]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sezon_rogrywki];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Funkcja_sedziowska'
CREATE TABLE [dbo].[Funkcja_sedziowska] (
    [ID_FUNKCJI] int  NOT NULL,
    [NAZWA] varchar(100)  NULL
);
GO

-- Creating table 'KLUBs'
CREATE TABLE [dbo].[KLUBs] (
    [ID_KLUB] int  NOT NULL,
    [NAZWA_KLUBU] varchar(256)  NULL,
    [ROK_ZALOZENIA] int  NULL
);
GO

-- Creating table 'Meczs'
CREATE TABLE [dbo].[Meczs] (
    [ID_MECZ] int  NOT NULL,
    [ID_KLUB] int  NOT NULL,
    [ID_STADIONU] int  NULL,
    [KLU_ID_KLUB] int  NULL,
    [DATA_MECZU] datetime  NULL,
    [MIEJSCOWOSC] varchar(256)  NULL
);
GO

-- Creating table 'Rodzaj_pozycji'
CREATE TABLE [dbo].[Rodzaj_pozycji] (
    [ID_POZYCJI] int  NOT NULL,
    [NAZWA] varchar(100)  NULL
);
GO

-- Creating table 'Sedzias'
CREATE TABLE [dbo].[Sedzias] (
    [ID_OSOBA] int  NOT NULL,
    [WIEK] int  NULL,
    [NAZWISKO] varchar(100)  NULL,
    [IMIE] char(50)  NULL,
    [KRAJ] char(100)  NULL
);
GO

-- Creating table 'Sedzia_na_mecz'
CREATE TABLE [dbo].[Sedzia_na_mecz] (
    [ID_OSOBA] int  NOT NULL,
    [ID_MECZ] int  NOT NULL,
    [ID_FUNKCJI] int  NOT NULL
);
GO

-- Creating table 'Sezons'
CREATE TABLE [dbo].[Sezons] (
    [ID_SEZONU] int  NOT NULL,
    [NAZWA] varchar(100)  NULL
);
GO

-- Creating table 'Sklad_na_mecz'
CREATE TABLE [dbo].[Sklad_na_mecz] (
    [ID_OSOBA] int  NOT NULL,
    [ID_MECZ] int  NOT NULL,
    [ID_KLUB] int  NOT NULL,
    [ID_POZYCJI] int  NOT NULL,
    [NUMER] int  NULL
);
GO

-- Creating table 'Stadions'
CREATE TABLE [dbo].[Stadions] (
    [ID_STADIONU] int  NOT NULL,
    [NAZWA_STADIONU] varchar(250)  NULL,
    [ROK_WYBUDOWANIA] datetime  NULL,
    [POJEMNOSC] int  NULL
);
GO

-- Creating table 'Typ_zdarzenia'
CREATE TABLE [dbo].[Typ_zdarzenia] (
    [ID_TYPU_ZDARZENIA] int  NOT NULL,
    [NAZWA] varchar(100)  NULL
);
GO

-- Creating table 'Zawodniks'
CREATE TABLE [dbo].[Zawodniks] (
    [ID_OSOBA] int  NOT NULL,
    [WIEK] int  NULL,
    [NAZWISKO] varchar(100)  NULL,
    [IMIE] char(50)  NULL,
    [KRAJ] char(100)  NULL
);
GO

-- Creating table 'Zdarzenies'
CREATE TABLE [dbo].[Zdarzenies] (
    [ID_ZDARZENIA] int  NOT NULL,
    [ID_MECZ] int  NULL,
    [ID_TYPU_ZDARZENIA] int  NOT NULL,
    [ID_OSOBA] int  NULL,
    [CZAS] time  NULL
);
GO

-- Creating table 'Sezon_rogrywki'
CREATE TABLE [dbo].[Sezon_rogrywki] (
    [KLUBs_ID_KLUB] int  NOT NULL,
    [Sezons_ID_SEZONU] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID_FUNKCJI] in table 'Funkcja_sedziowska'
ALTER TABLE [dbo].[Funkcja_sedziowska]
ADD CONSTRAINT [PK_Funkcja_sedziowska]
    PRIMARY KEY CLUSTERED ([ID_FUNKCJI] ASC);
GO

-- Creating primary key on [ID_KLUB] in table 'KLUBs'
ALTER TABLE [dbo].[KLUBs]
ADD CONSTRAINT [PK_KLUBs]
    PRIMARY KEY CLUSTERED ([ID_KLUB] ASC);
GO

-- Creating primary key on [ID_MECZ] in table 'Meczs'
ALTER TABLE [dbo].[Meczs]
ADD CONSTRAINT [PK_Meczs]
    PRIMARY KEY CLUSTERED ([ID_MECZ] ASC);
GO

-- Creating primary key on [ID_POZYCJI] in table 'Rodzaj_pozycji'
ALTER TABLE [dbo].[Rodzaj_pozycji]
ADD CONSTRAINT [PK_Rodzaj_pozycji]
    PRIMARY KEY CLUSTERED ([ID_POZYCJI] ASC);
GO

-- Creating primary key on [ID_OSOBA] in table 'Sedzias'
ALTER TABLE [dbo].[Sedzias]
ADD CONSTRAINT [PK_Sedzias]
    PRIMARY KEY CLUSTERED ([ID_OSOBA] ASC);
GO

-- Creating primary key on [ID_OSOBA], [ID_MECZ], [ID_FUNKCJI] in table 'Sedzia_na_mecz'
ALTER TABLE [dbo].[Sedzia_na_mecz]
ADD CONSTRAINT [PK_Sedzia_na_mecz]
    PRIMARY KEY CLUSTERED ([ID_OSOBA], [ID_MECZ], [ID_FUNKCJI] ASC);
GO

-- Creating primary key on [ID_SEZONU] in table 'Sezons'
ALTER TABLE [dbo].[Sezons]
ADD CONSTRAINT [PK_Sezons]
    PRIMARY KEY CLUSTERED ([ID_SEZONU] ASC);
GO

-- Creating primary key on [ID_OSOBA], [ID_MECZ], [ID_KLUB], [ID_POZYCJI] in table 'Sklad_na_mecz'
ALTER TABLE [dbo].[Sklad_na_mecz]
ADD CONSTRAINT [PK_Sklad_na_mecz]
    PRIMARY KEY CLUSTERED ([ID_OSOBA], [ID_MECZ], [ID_KLUB], [ID_POZYCJI] ASC);
GO

-- Creating primary key on [ID_STADIONU] in table 'Stadions'
ALTER TABLE [dbo].[Stadions]
ADD CONSTRAINT [PK_Stadions]
    PRIMARY KEY CLUSTERED ([ID_STADIONU] ASC);
GO

-- Creating primary key on [ID_TYPU_ZDARZENIA] in table 'Typ_zdarzenia'
ALTER TABLE [dbo].[Typ_zdarzenia]
ADD CONSTRAINT [PK_Typ_zdarzenia]
    PRIMARY KEY CLUSTERED ([ID_TYPU_ZDARZENIA] ASC);
GO

-- Creating primary key on [ID_OSOBA] in table 'Zawodniks'
ALTER TABLE [dbo].[Zawodniks]
ADD CONSTRAINT [PK_Zawodniks]
    PRIMARY KEY CLUSTERED ([ID_OSOBA] ASC);
GO

-- Creating primary key on [ID_ZDARZENIA] in table 'Zdarzenies'
ALTER TABLE [dbo].[Zdarzenies]
ADD CONSTRAINT [PK_Zdarzenies]
    PRIMARY KEY CLUSTERED ([ID_ZDARZENIA] ASC);
GO

-- Creating primary key on [KLUBs_ID_KLUB], [Sezons_ID_SEZONU] in table 'Sezon_rogrywki'
ALTER TABLE [dbo].[Sezon_rogrywki]
ADD CONSTRAINT [PK_Sezon_rogrywki]
    PRIMARY KEY CLUSTERED ([KLUBs_ID_KLUB], [Sezons_ID_SEZONU] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ID_FUNKCJI] in table 'Sedzia_na_mecz'
ALTER TABLE [dbo].[Sedzia_na_mecz]
ADD CONSTRAINT [FK_Sedzia_na_mecz3]
    FOREIGN KEY ([ID_FUNKCJI])
    REFERENCES [dbo].[Funkcja_sedziowska]
        ([ID_FUNKCJI])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Sedzia_na_mecz3'
CREATE INDEX [IX_FK_Sedzia_na_mecz3]
ON [dbo].[Sedzia_na_mecz]
    ([ID_FUNKCJI]);
GO

-- Creating foreign key on [ID_KLUB] in table 'Meczs'
ALTER TABLE [dbo].[Meczs]
ADD CONSTRAINT [FK_Gospodarz]
    FOREIGN KEY ([ID_KLUB])
    REFERENCES [dbo].[KLUBs]
        ([ID_KLUB])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Gospodarz'
CREATE INDEX [IX_FK_Gospodarz]
ON [dbo].[Meczs]
    ([ID_KLUB]);
GO

-- Creating foreign key on [KLU_ID_KLUB] in table 'Meczs'
ALTER TABLE [dbo].[Meczs]
ADD CONSTRAINT [FK_Gość]
    FOREIGN KEY ([KLU_ID_KLUB])
    REFERENCES [dbo].[KLUBs]
        ([ID_KLUB])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Gość'
CREATE INDEX [IX_FK_Gość]
ON [dbo].[Meczs]
    ([KLU_ID_KLUB]);
GO

-- Creating foreign key on [ID_KLUB] in table 'Sklad_na_mecz'
ALTER TABLE [dbo].[Sklad_na_mecz]
ADD CONSTRAINT [FK_Sklad_na_mecz3]
    FOREIGN KEY ([ID_KLUB])
    REFERENCES [dbo].[KLUBs]
        ([ID_KLUB])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Sklad_na_mecz3'
CREATE INDEX [IX_FK_Sklad_na_mecz3]
ON [dbo].[Sklad_na_mecz]
    ([ID_KLUB]);
GO

-- Creating foreign key on [ID_MECZ] in table 'Zdarzenies'
ALTER TABLE [dbo].[Zdarzenies]
ADD CONSTRAINT [FK_Relationship_3]
    FOREIGN KEY ([ID_MECZ])
    REFERENCES [dbo].[Meczs]
        ([ID_MECZ])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Relationship_3'
CREATE INDEX [IX_FK_Relationship_3]
ON [dbo].[Zdarzenies]
    ([ID_MECZ]);
GO

-- Creating foreign key on [ID_STADIONU] in table 'Meczs'
ALTER TABLE [dbo].[Meczs]
ADD CONSTRAINT [FK_Relationship_7]
    FOREIGN KEY ([ID_STADIONU])
    REFERENCES [dbo].[Stadions]
        ([ID_STADIONU])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Relationship_7'
CREATE INDEX [IX_FK_Relationship_7]
ON [dbo].[Meczs]
    ([ID_STADIONU]);
GO

-- Creating foreign key on [ID_MECZ] in table 'Sedzia_na_mecz'
ALTER TABLE [dbo].[Sedzia_na_mecz]
ADD CONSTRAINT [FK_Sedzia_na_mecz2]
    FOREIGN KEY ([ID_MECZ])
    REFERENCES [dbo].[Meczs]
        ([ID_MECZ])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Sedzia_na_mecz2'
CREATE INDEX [IX_FK_Sedzia_na_mecz2]
ON [dbo].[Sedzia_na_mecz]
    ([ID_MECZ]);
GO

-- Creating foreign key on [ID_MECZ] in table 'Sklad_na_mecz'
ALTER TABLE [dbo].[Sklad_na_mecz]
ADD CONSTRAINT [FK_Sklad_na_mecz2]
    FOREIGN KEY ([ID_MECZ])
    REFERENCES [dbo].[Meczs]
        ([ID_MECZ])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Sklad_na_mecz2'
CREATE INDEX [IX_FK_Sklad_na_mecz2]
ON [dbo].[Sklad_na_mecz]
    ([ID_MECZ]);
GO

-- Creating foreign key on [ID_POZYCJI] in table 'Sklad_na_mecz'
ALTER TABLE [dbo].[Sklad_na_mecz]
ADD CONSTRAINT [FK_Sklad_na_mecz4]
    FOREIGN KEY ([ID_POZYCJI])
    REFERENCES [dbo].[Rodzaj_pozycji]
        ([ID_POZYCJI])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Sklad_na_mecz4'
CREATE INDEX [IX_FK_Sklad_na_mecz4]
ON [dbo].[Sklad_na_mecz]
    ([ID_POZYCJI]);
GO

-- Creating foreign key on [ID_OSOBA] in table 'Sedzia_na_mecz'
ALTER TABLE [dbo].[Sedzia_na_mecz]
ADD CONSTRAINT [FK_Sedzia_na_mecz]
    FOREIGN KEY ([ID_OSOBA])
    REFERENCES [dbo].[Sedzias]
        ([ID_OSOBA])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID_OSOBA] in table 'Sklad_na_mecz'
ALTER TABLE [dbo].[Sklad_na_mecz]
ADD CONSTRAINT [FK_Sklad_na_mecz]
    FOREIGN KEY ([ID_OSOBA])
    REFERENCES [dbo].[Zawodniks]
        ([ID_OSOBA])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID_TYPU_ZDARZENIA] in table 'Zdarzenies'
ALTER TABLE [dbo].[Zdarzenies]
ADD CONSTRAINT [FK_Relationship_5]
    FOREIGN KEY ([ID_TYPU_ZDARZENIA])
    REFERENCES [dbo].[Typ_zdarzenia]
        ([ID_TYPU_ZDARZENIA])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Relationship_5'
CREATE INDEX [IX_FK_Relationship_5]
ON [dbo].[Zdarzenies]
    ([ID_TYPU_ZDARZENIA]);
GO

-- Creating foreign key on [ID_OSOBA] in table 'Zdarzenies'
ALTER TABLE [dbo].[Zdarzenies]
ADD CONSTRAINT [FK_Relationship_4]
    FOREIGN KEY ([ID_OSOBA])
    REFERENCES [dbo].[Zawodniks]
        ([ID_OSOBA])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Relationship_4'
CREATE INDEX [IX_FK_Relationship_4]
ON [dbo].[Zdarzenies]
    ([ID_OSOBA]);
GO

-- Creating foreign key on [KLUBs_ID_KLUB] in table 'Sezon_rogrywki'
ALTER TABLE [dbo].[Sezon_rogrywki]
ADD CONSTRAINT [FK_Sezon_rogrywki_KLUB]
    FOREIGN KEY ([KLUBs_ID_KLUB])
    REFERENCES [dbo].[KLUBs]
        ([ID_KLUB])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Sezons_ID_SEZONU] in table 'Sezon_rogrywki'
ALTER TABLE [dbo].[Sezon_rogrywki]
ADD CONSTRAINT [FK_Sezon_rogrywki_Sezon]
    FOREIGN KEY ([Sezons_ID_SEZONU])
    REFERENCES [dbo].[Sezons]
        ([ID_SEZONU])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Sezon_rogrywki_Sezon'
CREATE INDEX [IX_FK_Sezon_rogrywki_Sezon]
ON [dbo].[Sezon_rogrywki]
    ([Sezons_ID_SEZONU]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------