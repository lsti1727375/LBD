create database [pepapig]
USE [pepapig]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 08/28/2017 21:55:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_1]') AND type in (N'U'))
DROP TABLE [dbo].[Table_1]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 08/28/2017 21:55:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Table_1](
	[id_cliente] [int] NULL
) ON [PRIMARY]
END
GO
