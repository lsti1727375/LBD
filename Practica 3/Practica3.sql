USE [Semana 7]
GO
/****** Object:  Table [dbo].[Ventas_]    Script Date: 18/09/2017 09:35:30 p.m. ******/
DROP TABLE [dbo].[Ventas_]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 18/09/2017 09:35:30 p.m. ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[InventarioAlmacenProductos1]    Script Date: 18/09/2017 09:35:30 p.m. ******/
DROP TABLE [dbo].[InventarioAlmacenProductos1]
GO
/****** Object:  Table [dbo].[EstatusVenta]    Script Date: 18/09/2017 09:35:30 p.m. ******/
DROP TABLE [dbo].[EstatusVenta]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 18/09/2017 09:35:30 p.m. ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[DetalleVentaIAP]    Script Date: 18/09/2017 09:35:30 p.m. ******/
DROP TABLE [dbo].[DetalleVentaIAP]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 18/09/2017 09:35:30 p.m. ******/
DROP TABLE [dbo].[Almacen]
GO
USE [master]
GO
/****** Object:  Database [Semana 7]    Script Date: 18/09/2017 09:35:30 p.m. ******/
DROP DATABASE [Semana 7]
GO
/****** Object:  Database [Semana 7]    Script Date: 18/09/2017 09:35:30 p.m. ******/
CREATE DATABASE [Semana 7]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Semana 7', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Semana 7.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Semana 7_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Semana 7_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Semana 7] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Semana 7].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Semana 7] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Semana 7] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Semana 7] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Semana 7] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Semana 7] SET ARITHABORT OFF 
GO
ALTER DATABASE [Semana 7] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Semana 7] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Semana 7] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Semana 7] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Semana 7] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Semana 7] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Semana 7] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Semana 7] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Semana 7] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Semana 7] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Semana 7] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Semana 7] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Semana 7] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Semana 7] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Semana 7] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Semana 7] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Semana 7] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Semana 7] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Semana 7] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Semana 7] SET  MULTI_USER 
GO
ALTER DATABASE [Semana 7] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Semana 7] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Semana 7] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Semana 7] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Semana 7]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 18/09/2017 09:35:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Almacen](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Almacen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetalleVentaIAP]    Script Date: 18/09/2017 09:35:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVentaIAP](
	[Id] [int] NOT NULL,
	[IdVenta] [int] NOT NULL,
	[IdIAP] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioUnitario] [int] NOT NULL,
	[Subtotal] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 18/09/2017 09:35:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[Id] [int] NOT NULL,
	[NumeroEmpleado] [int] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[FechaDeNaimiento] [date] NOT NULL,
	[Edad] [int] NULL,
	[FechaDeIngreso] [date] NULL,
	[DiasAntiguedad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstatusVenta]    Script Date: 18/09/2017 09:35:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstatusVenta](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_EstatusVenta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InventarioAlmacenProductos1]    Script Date: 18/09/2017 09:35:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventarioAlmacenProductos1](
	[Id] [int] NOT NULL,
	[IdAlmacen] [int] NULL,
	[IdProducto] [int] NULL,
	[Cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productos]    Script Date: 18/09/2017 09:35:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[Id] [int] NOT NULL,
	[CodigoBarras] [varchar](100) NULL,
	[Nombre] [varchar](50) NULL,
	[PrecioBase] [float] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ventas_]    Script Date: 18/09/2017 09:35:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas_](
	[Id] [int] NOT NULL,
	[IdEmpleado] [int] NULL,
	[IdStatus] [int] NULL,
	[Folio] [int] NULL,
	[Subtotal] [int] NULL,
	[IVA] [float] NULL,
	[Total] [int] NULL,
	[FechaHora] [timestamp] NULL,
 CONSTRAINT [PK_Ventas_] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [Semana 7] SET  READ_WRITE 
GO
