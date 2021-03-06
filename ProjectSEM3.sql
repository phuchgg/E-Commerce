USE [master]
GO
/****** Object:  Database [ProjectSEM3]    Script Date: 11/26/2020 12:57:46 PM ******/
CREATE DATABASE [ProjectSEM3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectSEM3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ProjectSEM3.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProjectSEM3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ProjectSEM3_log.ldf' , SIZE = 2304KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProjectSEM3] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectSEM3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectSEM3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectSEM3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectSEM3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectSEM3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectSEM3] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectSEM3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectSEM3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectSEM3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectSEM3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectSEM3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectSEM3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectSEM3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectSEM3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectSEM3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectSEM3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectSEM3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectSEM3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectSEM3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectSEM3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectSEM3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectSEM3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectSEM3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectSEM3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectSEM3] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectSEM3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectSEM3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectSEM3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectSEM3] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ProjectSEM3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectSEM3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProjectSEM3', N'ON'
GO
ALTER DATABASE [ProjectSEM3] SET QUERY_STORE = OFF
GO
USE [ProjectSEM3]
GO
/****** Object:  Table [dbo].[Business]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Business](
	[ID] [varchar](60) NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Business] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[ContentCategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModyfiedDate] [datetime] NULL,
	[ModyfiedBy] [varchar](50) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NOT NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentCategory]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](50) NULL,
	[DisplayOrder] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModyfiedDate] [datetime] NULL,
	[ModyfiedBy] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_ContentCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Content] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrantPermission]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrantPermission](
	[PermissionID] [bigint] NOT NULL,
	[GroupUserID] [bigint] NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_GrantPermission] PRIMARY KEY CLUSTERED 
(
	[PermissionID] ASC,
	[GroupUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupUser]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupUser](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Desciption] [nvarchar](500) NULL,
 CONSTRAINT [PK_GroupUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NULL,
	[ShipName] [nvarchar](60) NULL,
	[ShipPhone] [nvarchar](20) NULL,
	[ShipAddress] [nvarchar](500) NULL,
	[ShipCreateDate] [datetime] NULL,
	[ShipEmail] [nvarchar](50) NULL,
	[PaymentID] [bigint] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ProductID] [bigint] NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PermissionName] [varchar](260) NULL,
	[Desciption] [nvarchar](250) NULL,
	[BusinessID] [varchar](60) NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Price]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Price] [decimal](18, 0) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ProductID] [bigint] NULL,
 CONSTRAINT [PK_Price] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[MetaTitle] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModyfiedDate] [datetime] NULL,
	[ModyfiedBy] [varchar](50) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Producer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Code] [varchar](10) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [ntext] NULL,
	[Image] [nvarchar](250) NULL,
	[MoreImage] [xml] NULL,
	[Quantity] [int] NULL,
	[ProductCategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[TopHot] [date] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateBy] [varchar](50) NULL,
	[ModyfiedDate] [datetime] NULL,
	[ModyfiedBy] [varchar](50) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NOT NULL,
	[ViewCount] [int] NULL,
	[ProducerID] [bigint] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](50) NULL,
	[DisplayOrder] [int] NULL,
	[SeoTiltle] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModyfiedDate] [datetime] NULL,
	[ModyfiedBy] [varchar](50) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Price] [decimal](18, 0) NULL,
	[BeginDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[ProductID] [bigint] NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[Image] [nvarchar](200) NULL,
	[Status] [bit] NULL,
	[TypeID] [bigint] NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SlideType]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlideType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_SlideType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/26/2020 12:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](52) NULL,
	[Name] [nvarchar](50) NULL,
	[Avatar] [varchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[Email] [nvarchar](50) NULL,
	[Genre] [nvarchar](5) NULL,
	[BirthDay] [date] NULL,
	[Phone] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[GroupUserID] [bigint] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModyfiedDate] [datetime] NULL,
	[ModyfiedBy] [varchar](50) NULL,
	[Active] [bit] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_CreateDate_1]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_Status_1]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_ViewCount_1]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[ContentCategory] ADD  CONSTRAINT [DF_ContentCategory_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[ContentCategory] ADD  CONSTRAINT [DF_ContentCategory_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[ContentCategory] ADD  CONSTRAINT [DF_ContentCategory_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Quantity_1]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreateDate_1]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Status_1]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_ViewCount_1]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_DisplayOrder_1]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_CreateDate_1]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_Status_1]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Avatar]  DEFAULT ('/Data/images/Avatar/avatar_default.png') FOR [Avatar]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreateDate_1]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Content]  WITH CHECK ADD  CONSTRAINT [FK_Content_ContentCategory] FOREIGN KEY([ContentCategoryID])
REFERENCES [dbo].[ContentCategory] ([ID])
GO
ALTER TABLE [dbo].[Content] CHECK CONSTRAINT [FK_Content_ContentCategory]
GO
ALTER TABLE [dbo].[GrantPermission]  WITH CHECK ADD  CONSTRAINT [FK_GrantPermission_GroupUser] FOREIGN KEY([GroupUserID])
REFERENCES [dbo].[GroupUser] ([ID])
GO
ALTER TABLE [dbo].[GrantPermission] CHECK CONSTRAINT [FK_GrantPermission_GroupUser]
GO
ALTER TABLE [dbo].[GrantPermission]  WITH CHECK ADD  CONSTRAINT [FK_GrantPermission_Permission] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[Permission] ([ID])
GO
ALTER TABLE [dbo].[GrantPermission] CHECK CONSTRAINT [FK_GrantPermission_Permission]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Payment] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payment] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Payment]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Permission]  WITH CHECK ADD  CONSTRAINT [FK_Permission_Business] FOREIGN KEY([BusinessID])
REFERENCES [dbo].[Business] ([ID])
GO
ALTER TABLE [dbo].[Permission] CHECK CONSTRAINT [FK_Permission_Business]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [FK_Price_Product1] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [FK_Price_Product1]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Producer] FOREIGN KEY([ProducerID])
REFERENCES [dbo].[Producer] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Producer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[ProductCategory] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Product1] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [FK_Sales_Product1]
GO
ALTER TABLE [dbo].[Slide]  WITH CHECK ADD  CONSTRAINT [FK_Slide_SlideType] FOREIGN KEY([TypeID])
REFERENCES [dbo].[SlideType] ([ID])
GO
ALTER TABLE [dbo].[Slide] CHECK CONSTRAINT [FK_Slide_SlideType]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_GroupUser] FOREIGN KEY([GroupUserID])
REFERENCES [dbo].[GroupUser] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_GroupUser]
GO
USE [master]
GO
ALTER DATABASE [ProjectSEM3] SET  READ_WRITE 
GO
