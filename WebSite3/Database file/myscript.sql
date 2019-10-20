create database AmanpreetPort
go

USE [AmanpreetPort]
GO
/****** Object:  Table [dbo].[BannerInfo]    Script Date: 14-10-2019 2.06.17 PM ******/
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
/****** Object:  Table [dbo].[CategoryInfo]    Script Date: 14-10-2019 2.06.17 PM ******/
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
/****** Object:  Table [dbo].[ImageInfo]    Script Date: 14-10-2019 2.06.17 PM ******/
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
/****** Object:  Table [dbo].[LoginInfo]    Script Date: 14-10-2019 2.06.17 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[EmailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[videoYoutube]    Script Date: 14-10-2019 2.06.17 PM ******/
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
ALTER TABLE [dbo].[ImageInfo]  WITH CHECK ADD  CONSTRAINT [fkct] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[CategoryInfo] ([categoryId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImageInfo] CHECK CONSTRAINT [fkct]
GO

insert into logininfo values('admin','admin@123','admin@gmail.com','Fav. color','Blue')