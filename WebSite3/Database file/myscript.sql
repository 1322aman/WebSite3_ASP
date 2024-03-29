USE [master]
GO
/****** Object:  Database [AmanpreetPort]    Script Date: 10/21/2019 11:39:36 AM ******/
CREATE DATABASE [AmanpreetPort]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AmanpreetPort', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AmanpreetPort.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AmanpreetPort_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AmanpreetPort_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AmanpreetPort] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AmanpreetPort].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AmanpreetPort] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AmanpreetPort] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AmanpreetPort] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AmanpreetPort] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AmanpreetPort] SET ARITHABORT OFF 
GO
ALTER DATABASE [AmanpreetPort] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AmanpreetPort] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AmanpreetPort] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AmanpreetPort] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AmanpreetPort] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AmanpreetPort] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AmanpreetPort] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AmanpreetPort] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AmanpreetPort] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AmanpreetPort] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AmanpreetPort] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AmanpreetPort] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AmanpreetPort] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AmanpreetPort] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AmanpreetPort] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AmanpreetPort] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AmanpreetPort] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AmanpreetPort] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AmanpreetPort] SET  MULTI_USER 
GO
ALTER DATABASE [AmanpreetPort] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AmanpreetPort] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AmanpreetPort] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AmanpreetPort] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AmanpreetPort] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AmanpreetPort] SET QUERY_STORE = OFF
GO
USE [AmanpreetPort]
GO
/****** Object:  Table [dbo].[BannerInfo]    Script Date: 10/21/2019 11:39:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BannerInfo](
	[BannerID] [int] IDENTITY(1,1) NOT NULL,
	[BannerName] [varchar](100) NULL,
	[BannerExtension] [varchar](100) NULL,
	[BannerSize] [int] NULL,
	[BannerType] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[BannerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryInfo]    Script Date: 10/21/2019 11:39:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryInfo](
	[categoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageInfo]    Script Date: 10/21/2019 11:39:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageInfo](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [varchar](100) NULL,
	[ImageExtension] [varchar](100) NULL,
	[ImageSize] [int] NULL,
	[ImageType] [varchar](max) NULL,
	[Imagecaption] [varchar](100) NULL,
	[ImageDescription] [varchar](max) NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_ImageInfo] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginInfo]    Script Date: 10/21/2019 11:39:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginInfo](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[EmailID] [varchar](100) NULL,
	[SecurityQuestion] [varchar](max) NULL,
	[SecurityAnswer] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[videoYoutube]    Script Date: 10/21/2019 11:39:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[videoYoutube](
	[VideoYoutubeID] [int] IDENTITY(1,1) NOT NULL,
	[VideoSource] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[VideoYoutubeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BannerInfo] ON 

INSERT [dbo].[BannerInfo] ([BannerID], [BannerName], [BannerExtension], [BannerSize], [BannerType]) VALUES (1, N'21192a5961b4eea185bf981121320c2e.jpg', N'.jpg', 162932, N'image/jpeg')
INSERT [dbo].[BannerInfo] ([BannerID], [BannerName], [BannerExtension], [BannerSize], [BannerType]) VALUES (2, N'DSC09525-HDR-Edit-L.jpg', N'.jpg', 98061, N'image/jpeg')
INSERT [dbo].[BannerInfo] ([BannerID], [BannerName], [BannerExtension], [BannerSize], [BannerType]) VALUES (3, N'ed1d4227982409.56d17fc3368d1.jpg', N'.jpg', 288553, N'image/jpeg')
SET IDENTITY_INSERT [dbo].[BannerInfo] OFF
SET IDENTITY_INSERT [dbo].[CategoryInfo] ON 

INSERT [dbo].[CategoryInfo] ([categoryId], [CategoryName]) VALUES (1, N'Nature')
INSERT [dbo].[CategoryInfo] ([categoryId], [CategoryName]) VALUES (4, N'Cloths Brands')
INSERT [dbo].[CategoryInfo] ([categoryId], [CategoryName]) VALUES (5, N'Cars')
SET IDENTITY_INSERT [dbo].[CategoryInfo] OFF
SET IDENTITY_INSERT [dbo].[ImageInfo] ON 

INSERT [dbo].[ImageInfo] ([ImageID], [ImageName], [ImageExtension], [ImageSize], [ImageType], [Imagecaption], [ImageDescription], [CategoryId]) VALUES (1, N'Header-2.jpg', N'.jpg', 210944, N'image/jpeg', N'New Zealand Nature beauty', N'Beautiful  Nature', 1)
INSERT [dbo].[ImageInfo] ([ImageID], [ImageName], [ImageExtension], [ImageSize], [ImageType], [Imagecaption], [ImageDescription], [CategoryId]) VALUES (2, N'LakeWakatipuNewZealand.jpg', N'.jpg', 1695293, N'image/jpeg', N'New Zealand Nature beauty', N'Beautiful  Nature', 1)
INSERT [dbo].[ImageInfo] ([ImageID], [ImageName], [ImageExtension], [ImageSize], [ImageType], [Imagecaption], [ImageDescription], [CategoryId]) VALUES (3, N'NZ-Nature-page.jpg', N'.jpg', 260357, N'image/jpeg', N'New Zealand Nature beauty', N'Beautiful  Nature', 1)
INSERT [dbo].[ImageInfo] ([ImageID], [ImageName], [ImageExtension], [ImageSize], [ImageType], [Imagecaption], [ImageDescription], [CategoryId]) VALUES (4, N'001061413.jpg', N'.jpg', 25334, N'image/jpeg', N'Most Popular Brands', N'Adidas,Nike', 4)
INSERT [dbo].[ImageInfo] ([ImageID], [ImageName], [ImageExtension], [ImageSize], [ImageType], [Imagecaption], [ImageDescription], [CategoryId]) VALUES (5, N'64437aa2-acb9-11e7-9cb1-5f6b75e2d8b2_1280x720_142643.jpg', N'.jpg', 670880, N'image/jpeg', N'Most Popular Cars In NZ', N'Famous Cars', 5)
INSERT [dbo].[ImageInfo] ([ImageID], [ImageName], [ImageExtension], [ImageSize], [ImageType], [Imagecaption], [ImageDescription], [CategoryId]) VALUES (6, N'1489049823425.jpg', N'.jpg', 44905, N'image/jpeg', N'Most Popular Cars In NZ', N'Famous Cars', 5)
INSERT [dbo].[ImageInfo] ([ImageID], [ImageName], [ImageExtension], [ImageSize], [ImageType], [Imagecaption], [ImageDescription], [CategoryId]) VALUES (7, N'1523311009720.jpg', N'.jpg', 133674, N'image/jpeg', N'Most Popular Cars In NZ', N'Famous Cars', 5)
SET IDENTITY_INSERT [dbo].[ImageInfo] OFF
SET IDENTITY_INSERT [dbo].[LoginInfo] ON 

INSERT [dbo].[LoginInfo] ([UserID], [UserName], [Password], [EmailID], [SecurityQuestion], [SecurityAnswer]) VALUES (1, N'admin', N'admin@123', N'admin@gmail.com', N'Fav. color', N'Blue')
SET IDENTITY_INSERT [dbo].[LoginInfo] OFF
SET IDENTITY_INSERT [dbo].[videoYoutube] ON 

INSERT [dbo].[videoYoutube] ([VideoYoutubeID], [VideoSource]) VALUES (1, N'C0vSLFqx4L4')
INSERT [dbo].[videoYoutube] ([VideoYoutubeID], [VideoSource]) VALUES (2, N'SEseUN_qnyE')
SET IDENTITY_INSERT [dbo].[videoYoutube] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__LoginInf__7ED91AEECC0964E5]    Script Date: 10/21/2019 11:39:37 AM ******/
ALTER TABLE [dbo].[LoginInfo] ADD UNIQUE NONCLUSTERED 
(
	[EmailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__LoginInf__C9F2845630D508B9]    Script Date: 10/21/2019 11:39:37 AM ******/
ALTER TABLE [dbo].[LoginInfo] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ImageInfo]  WITH CHECK ADD  CONSTRAINT [fkct] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[CategoryInfo] ([categoryId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImageInfo] CHECK CONSTRAINT [fkct]
GO
USE [master]
GO
ALTER DATABASE [AmanpreetPort] SET  READ_WRITE 
GO
