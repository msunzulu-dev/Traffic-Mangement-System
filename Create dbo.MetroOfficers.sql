USE [aspnet-TrafficManagementSystem-20240828113625]
GO

/****** Object: Table [dbo].[MetroOfficers] Script Date: 10/12/2024 7:08:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MetroOfficers] (
    [MetroOfficerId]     INT            IDENTITY (1, 1) NOT NULL,
    [UserId]             NVARCHAR (MAX) NULL,
    [Email]              NVARCHAR (MAX) NOT NULL,
    [FirstName]          NVARCHAR (MAX) NOT NULL,
    [LastName]           NVARCHAR (MAX) NOT NULL,
    [Phone]              NVARCHAR (MAX) NOT NULL,
    [Picture]            NVARCHAR (MAX) NOT NULL,
    [ApplicationUser_Id] NVARCHAR (128) NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_ApplicationUser_Id]
    ON [dbo].[MetroOfficers]([ApplicationUser_Id] ASC);


GO
ALTER TABLE [dbo].[MetroOfficers]
    ADD CONSTRAINT [PK_dbo.MetroOfficers] PRIMARY KEY CLUSTERED ([MetroOfficerId] ASC);


GO
ALTER TABLE [dbo].[MetroOfficers]
    ADD CONSTRAINT [FK_dbo.MetroOfficers_dbo.AspNetUsers_ApplicationUser_Id] FOREIGN KEY ([ApplicationUser_Id]) REFERENCES [dbo].[AspNetUsers] ([Id]);

			SELECT *
FROM [dbo].[MetroOfficers];
GO

DELETE FROM [dbo].[MetroOfficers];
GO
