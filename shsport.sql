USE [SH_SPORT]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[PhoneNumber] [nchar](10) NULL,
	[Address] [nvarchar](max) NOT NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evaluates]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Rating] [int] NOT NULL,
	[ReviewDate] [datetime2](7) NOT NULL,
	[ProductId] [int] NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Evaluates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ProductId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[ShippingAddress] [nvarchar](max) NOT NULL,
	[Notes] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Size] [nvarchar](max) NULL,
	[Color] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_ProductDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Gender] [nvarchar](10) NULL,
	[CategoryId] [int] NOT NULL,
	[TradeMarkId] [int] NOT NULL,
	[PromotionId] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotions]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Order] [int] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[Discount] [float] NOT NULL,
 CONSTRAINT [PK_Promotions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCarts](
	[ProductId] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Color] [nvarchar](max) NULL,
	[Size] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TradeMarks]    Script Date: 12/05/2024 8:21:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TradeMarks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TradeMarks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240420154735_Initial', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240423075513_UpdateProduct', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240423081739_Initial', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240425084140_Updatedatabase', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240425084502_UpdateProduct', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240430125434_UpdateShoppingCart', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240430142137_UpdateShoppingCart', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240509094341_UpdateWareHouseDetail', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240509095652_UpdateWareHouseDetail', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240509102913_UpdateWareHouseDetail', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240509104522_UpdateWareHouse', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240510180712_UpdateWHDetail', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240511083558_UpdateWareHouseDetail', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240511084913_UpdateProductDetail', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240511110819_UpdateProductDetails', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240512114427_UpdateShoppingCarts', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240512115336_UpdateShoppingCartss', N'8.0.4')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'997df60d-003c-47b7-931c-6e39cbd22eba', N'Customer', N'CUSTOMER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'bad96036-98da-43c1-a83b-a199b5f094df', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f9133435-7565-4e39-bf05-2e3510b05486', N'Manager', N'MANAGER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'61951ee7-7ecc-48f3-94ed-938555adf6ac', N'997df60d-003c-47b7-931c-6e39cbd22eba')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'62381d23-6c66-4713-a233-b89bebb3d2f8', N'997df60d-003c-47b7-931c-6e39cbd22eba')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9e752bd8-0883-44ee-a887-5c7b032bd844', N'997df60d-003c-47b7-931c-6e39cbd22eba')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1aae76b4-a6cd-4e7d-a279-cf087fffd351', N'bad96036-98da-43c1-a83b-a199b5f094df')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'730c9856-4fbc-4110-9cd7-1ad9e50d1909', N'bad96036-98da-43c1-a83b-a199b5f094df')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f5fea03d-a98d-470e-b612-90860ccdef10', N'bad96036-98da-43c1-a83b-a199b5f094df')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [PasswordHash], [Email], [PhoneNumber], [Address], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1aae76b4-a6cd-4e7d-a279-cf087fffd351', N'2', N'admin1@gmail.com', N'AQAAAAIAAYagAAAAEEd2QMNFUq7ZuYNEsARWFA5LKu7WZPDEGw83lUkMNDZ8Vum8Z5hV4b+qYwG9N4shMg==', N'admin1@gmail.com', NULL, N'abc', N'ADMIN1@GMAIL.COM', N'ADMIN1@GMAIL.COM', 0, N'LFQ426GAE2AI5XFMRARDMTRTL4QMKI7E', N'da76aa97-5dba-4d4f-9007-88a3d454b41e', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [PasswordHash], [Email], [PhoneNumber], [Address], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'61951ee7-7ecc-48f3-94ed-938555adf6ac', N'NGUYỄN TẤN SANG', N'sang@gmail.com', N'AQAAAAIAAYagAAAAEBE1ovYQAH4IMXma/CvFaBVSbdo8XoDPaI964FCjLMgiT2LfjQxLaWyXx24sZJj5GA==', N'sang@gmail.com', NULL, N'188 NGUYỄN XÍ', N'SANG@GMAIL.COM', N'SANG@GMAIL.COM', 0, N'43WB3UZLXXQ5NDBACXQXL25APHPIK4QP', N'63e1af8d-b9c4-4bc3-b824-31b1c790b632', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [PasswordHash], [Email], [PhoneNumber], [Address], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'62381d23-6c66-4713-a233-b89bebb3d2f8', N'Sang', N'a@gmail.com', N'AQAAAAIAAYagAAAAEDr2KR31Hu5C/3SoVuba3nduXQdkkLJXRoQexgUl3P14GN1lpSLvgZe7Btnx7eVTCQ==', N'a@gmail.com', N'09292929  ', N'111', N'A@GMAIL.COM', N'A@GMAIL.COM', 0, N'QE3PXWMSFHBV3VW6WAFQW33K2CO7C25G', N'041b7d93-7886-404a-ae28-24ed7aa6bc70', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [PasswordHash], [Email], [PhoneNumber], [Address], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'730c9856-4fbc-4110-9cd7-1ad9e50d1909', N'Trần Thị Thu Sương', N'suong@gmail.com', N'AQAAAAIAAYagAAAAEH+547QdAb+sWImBoM9q8HvRG1ptfPPIzMG0MY/Lh0Ufu0mqLzPdQVjlv1//pH7DvQ==', N'suong@gmail.com', NULL, N'Tân Vinh, Tân Hòa Thành', N'SUONG@GMAIL.COM', N'SUONG@GMAIL.COM', 0, N'OSJLAPZGZPGVWQONYR2CBBYUAH5HYK2L', N'30b8b1e9-54cc-47b3-91d1-d964276a7575', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [PasswordHash], [Email], [PhoneNumber], [Address], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9e752bd8-0883-44ee-a887-5c7b032bd844', N'User1', N'user1@gmail.com', N'AQAAAAIAAYagAAAAENtBm1OfUe1+WLdYC6wJOlyDK755r23td0n9/O/6Dx9rZ4ao0iqngX1cq8mYV9j0Gg==', N'user1@gmail.com', N'0965801407', N'HCM', N'USER1@GMAIL.COM', N'USER1@GMAIL.COM', 0, N'VXSZT2KZDTL6YFZKSSNANV6UI3WMOEY2', N'382b9d57-e06e-4524-931d-6f4d6dbba4f6', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [PasswordHash], [Email], [PhoneNumber], [Address], [NormalizedUserName], [NormalizedEmail], [EmailConfirmed], [SecurityStamp], [ConcurrencyStamp], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f5fea03d-a98d-470e-b612-90860ccdef10', N'NGUYỄN VĂN QUANG', N'quang@gmail.com', N'AQAAAAIAAYagAAAAEP7Gr9ynXmFJji4ERgfV0J7K4m888E/Q6bW9XtbzHeN1h6+XnzS1sKMOFVuJJfDBLw==', N'quang@gmail.com', N'0824240909', N'Tiền Giang', N'QUANG@GMAIL.COM', N'QUANG@GMAIL.COM', 0, N'72BV5XU2GHU4ZFJQT27NA7MJN6NF23MO', N'3d418d53-5f0b-4eeb-899e-d5e55e7fbaa4', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Vợt cầu lông')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Giày cầu lông')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Phụ kiện cầu lông')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Vợt tennis')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Balo cầu lông')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Quần cầu lông ')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (7, N'Áo cầu lông')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
INSERT [dbo].[OrderDetails] ([ProductId], [OrderId], [Quantity], [Price]) VALUES (49, 13, 22, CAST(3915000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([ProductId], [OrderId], [Quantity], [Price]) VALUES (135, 13, 1, CAST(162000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([ProductId], [OrderId], [Quantity], [Price]) VALUES (47, 14, 2, CAST(3900000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([ProductId], [OrderId], [Quantity], [Price]) VALUES (135, 14, 1, CAST(162000.00 AS Decimal(18, 2)))
INSERT [dbo].[OrderDetails] ([ProductId], [OrderId], [Quantity], [Price]) VALUES (104, 15, 2, CAST(54000.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [TotalPrice], [ShippingAddress], [Notes]) VALUES (12, N'61951ee7-7ecc-48f3-94ed-938555adf6ac', CAST(N'2024-05-12T11:58:12.8568705' AS DateTime2), CAST(11700000.00 AS Decimal(18, 2)), N'3', N'3')
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [TotalPrice], [ShippingAddress], [Notes]) VALUES (13, N'61951ee7-7ecc-48f3-94ed-938555adf6ac', CAST(N'2024-05-12T12:05:15.1319729' AS DateTime2), CAST(86292000.00 AS Decimal(18, 2)), N'22', N'22')
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [TotalPrice], [ShippingAddress], [Notes]) VALUES (14, N'61951ee7-7ecc-48f3-94ed-938555adf6ac', CAST(N'2024-05-12T12:17:26.6617192' AS DateTime2), CAST(7962000.00 AS Decimal(18, 2)), N'2', N'2')
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate], [TotalPrice], [ShippingAddress], [Notes]) VALUES (15, N'61951ee7-7ecc-48f3-94ed-938555adf6ac', CAST(N'2024-05-12T12:28:42.7893160' AS DateTime2), CAST(108000.00 AS Decimal(18, 2)), N'2', N'2')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductDetails] ON 

INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (1, 47, N'3U', NULL, 25)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (2, 47, N'4U', NULL, 17)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (3, 48, N'4U', NULL, 30)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (4, 48, N'3U', NULL, 28)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (5, 49, N'4U', NULL, 25)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (6, 50, N'4U', NULL, 35)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (7, 50, N'3U', NULL, 30)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (8, 51, N'3U', NULL, 15)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (9, 52, N'3U', NULL, 15)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (10, 52, N'4U', NULL, 15)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (11, 53, N'3U', NULL, 15)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (12, 53, N'4U', NULL, 15)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (13, 54, N'3U', NULL, 15)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (14, 54, N'4U', NULL, 20)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (15, 55, N'4U', NULL, 20)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (16, 56, N'3U', NULL, 20)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (17, 56, N'4U', NULL, 20)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (18, 57, N'4U', NULL, 20)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (19, 58, N'4U', NULL, 20)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (20, 59, N'4U', NULL, 20)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (21, 60, N'4U', NULL, 20)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (22, 61, N'4U', NULL, 20)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (23, 62, N'4U', NULL, 20)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (24, 63, N'4U', NULL, 20)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (25, 64, N'4U', NULL, 20)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (26, 65, N'4U', NULL, 20)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (27, 66, N'4U', NULL, 20)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (48, 104, NULL, NULL, 48)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (52, 66, N'3U', NULL, 0)
INSERT [dbo].[ProductDetails] ([Id], [ProductId], [Size], [Color], [Quantity]) VALUES (53, 135, NULL, N'Xanh lá', 99)
SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (50, 149, N'2cca66db-8a0e-48d9-98f3-c6bff2a7e820.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (51, 151, N'bc62a97e-3e04-48bf-ae54-03f18ff1f9c6.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (52, 152, N'd8ffaf3e-0eef-4b20-84bf-a50ad9ddea18.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (53, 150, N'ee0e7b88-fe17-4017-9d0a-af1c86fc2add.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (54, 153, N'05e0aa1a-f812-4d08-908d-e6571fbccef1.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (55, 154, N'98746d16-59f2-4953-994d-db86c0bb9771.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (56, 148, N'f6e5e774-26d6-4499-9ecd-6c73fee351bc.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (57, 157, N'd87a91ba-4003-44fd-b47e-c7be18dcd631.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (58, 156, N'cb7be573-cfb8-430f-94d2-c26a3821e085.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (59, 155, N'2f02012c-8006-4bd4-8bc9-4a41da97b2a2.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (61, 133, N'c5bb6c76-ade4-41be-95db-7e3ecb60848c.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (62, 142, N'a515406f-88a7-4707-be41-3157cdaa4544.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (63, 143, N'928d15af-e084-4941-b49b-6ed487cae079.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (66, 145, N'e81e5447-a979-48ed-b7f3-99653900c0a1.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (67, 146, N'f1270a0c-6cda-459d-ae2a-e5b2b351656f.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (68, 132, N'cb897b74-812e-4fbd-a48e-3e9531bfb3c5.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (69, 147, N'843ba5e2-4980-480a-bb36-c91529aba14f.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (70, 144, N'9e379b3a-3ede-4c55-8d83-23623ffc29cb.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (71, 134, N'971c72cb-5f75-4646-abad-f83cb6ed9045.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (72, 141, N'ec53d3ea-1487-45af-90d0-05f448385797.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (73, 135, N'742a117f-19e0-4511-98aa-63d7846f5f8d.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (74, 130, N'b77bc5eb-0ddd-475b-b5b3-b2924958d656.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (75, 139, N'1340b619-fae9-45d1-8448-6eb3c43a10e1.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (76, 129, N'dfc4c6ee-9116-4dc6-ae28-3b6ac4e15d9a.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (77, 131, N'f4d5703d-b4c6-43b1-9d76-932e1b69b597.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (78, 137, N'3c93c6ad-1c44-4628-8dcd-ab6d74477be5.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (79, 136, N'f4e0dc6e-6777-4f98-890d-acc7db47fa88.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (80, 138, N'1e4e3f55-9f1a-4234-834f-6f5affded65b.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (81, 77, N'4eab8994-afc8-4f35-a8bb-15f3b33ef6ec.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (82, 77, N'f2c9f986-fee7-461a-a4f0-d7fb49c5f747.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (83, 81, N'aa7b7080-bab7-4df7-a4a0-5942918b11f8.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (84, 81, N'76ab81bb-7377-4cc7-b4c1-69b8e0142d27.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (85, 80, N'34f32e3a-2281-46fa-b743-89c018307714.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (86, 80, N'2fbc1303-67bc-48b4-b9fd-8dd67e3ef7c1.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (87, 78, N'be492780-cc19-4cf1-bc23-a74202072497.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (88, 78, N'f9234210-91db-464e-9bfe-902f54cb6687.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (89, 53, N'36d8b0f3-d1cb-442b-ad99-6b46beec1f1f.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (90, 53, N'52893eb6-4471-48f0-8783-613c3c2ae287.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (91, 53, N'c211625c-8ef3-4890-88c9-dbf5034359fe.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (92, 52, N'5b858387-f4d9-4ad3-8942-beab0811b042.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (93, 52, N'1fb74d3d-4a2e-4f22-96cd-d982f920a2c1.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (94, 52, N'35941c1f-c5db-4379-8af3-c72050b725a8.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (95, 49, N'75e1da6e-738d-4b76-9811-ceb3ebfa4611.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (96, 49, N'a17eb477-d4c5-4798-9022-4dc8667ee808.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (97, 49, N'2662405f-a24c-481c-90bd-959407dcab7b.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (98, 54, N'52e6d72c-db23-4232-92b0-707974c80105.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (99, 54, N'13bddf17-d7f5-4787-a688-6c7c5e804e21.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (100, 54, N'e6ce3cd5-2577-451a-9384-a313dfbe515a.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (101, 47, N'b46eab6c-da08-4a50-8259-e429d3c65b8c.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (102, 47, N'5cc74132-d1ba-4335-905f-feec43cba0ee.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (103, 47, N'0e846076-f02f-4b1a-ad85-4d47f0cb8d10.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (104, 50, N'70eaed92-e8fb-456c-b5c4-5636c3780f8d.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (105, 50, N'3cf06dda-e770-4b42-9720-f1348e8047a3.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (106, 50, N'7b1c98ce-f2a5-4ec1-a985-0c384ab2c72e.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (107, 57, N'49af37a1-b165-484b-89d1-dc6a169b713e.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (108, 57, N'5949f3c0-e6a7-48e0-9222-5d8bf430940c.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (109, 57, N'b3d13f8a-5845-4373-89d9-dd840d8a440c.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (110, 51, N'd840af86-90af-4ece-8954-5cecb52910c8.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (111, 51, N'109fa777-4953-4813-9080-797525233d6c.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (112, 51, N'9f5e09c4-64b6-4264-81bc-ffad3d57d352.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (113, 55, N'a44cea42-56b9-4741-ab89-79ff891d6e9f.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (114, 55, N'e284c640-2caa-4ade-a252-d1bfe9f25240.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (115, 55, N'b961e973-6260-46f9-93f0-81396d77a15b.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (116, 56, N'ac81a73e-93e1-4a73-94f3-b5783f522ced.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (117, 56, N'd734626b-bae5-484e-a86e-5483d5b6ada3.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (118, 56, N'ddcdfc80-ccc7-4d65-a3ff-8d4ff24ab10c.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (119, 61, N'444e2380-1fa8-4a05-98f9-e06f87f91be5.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (120, 61, N'c01a3cdf-6811-42e6-9171-1bddae83ef86.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (121, 58, N'c2f5ae02-42c9-4653-828c-a103f05867bf.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (122, 58, N'00d60a55-e132-4213-bad8-247c874f2f93.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (123, 58, N'44177c7f-ef4f-4eab-a9cc-f3eab0290c60.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (124, 59, N'81057e58-df25-4ca7-a605-eade94504fbd.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (125, 59, N'dd2d00c4-808f-4e3c-ac74-a31ee3fdeb7d.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (126, 59, N'02672936-8568-40f0-b206-18525c310177.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (127, 48, N'd4116fb5-ea10-43d3-8093-3bca31d372a1.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (128, 48, N'509dd346-5b46-4500-b4f8-8240dcf63186.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (129, 48, N'7c4f42e0-ba60-4c86-8f15-66e44d78d0a0.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (130, 60, N'fab3e581-c3d2-4ed7-9c82-ce05ac7f656d.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (131, 60, N'5ff14cd8-fbaf-4190-8b7d-10041b9d518c.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (132, 60, N'84a51411-0f80-4f51-a60a-3a8d7871b329.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (133, 79, N'0f5756f9-9b02-4c90-9e9a-465dedba1fa0.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (134, 79, N'70e0f012-ef6e-4813-8bf1-d6bc7d0a4d26.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (135, 72, N'488b638d-3157-4073-a621-130b3b14be58.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (136, 72, N'de21dec3-956b-4039-aa8a-695f63dd7d64.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (137, 72, N'0fd15a29-7f9d-4a2e-8e62-dda56fc85e93.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (138, 74, N'3e79e744-c8a0-4f39-9c5d-efe0b5620295.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (139, 74, N'b440b670-b6be-4801-965a-35bd2214259b.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (140, 74, N'f94641d1-8c7d-4d08-a1c8-a0fa4a0a9591.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (141, 75, N'cbaa249a-430d-4244-8757-44dcf68b3f24.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (142, 75, N'0dd037b1-e2f6-459b-900c-b0b1a8aa1242.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (143, 75, N'34fabe6e-87bf-4083-ba80-875de192bdeb.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (144, 76, N'469e5847-1d99-4d66-a0a1-1c7a715c2a31.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (145, 76, N'29cfc66c-d749-46b8-b113-6217f2789d2b.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (146, 76, N'da16a6e1-421a-41ea-b561-762f9ec26ad2.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (147, 140, N'566594c1-9192-4463-9e5d-c8e5749b8d08.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (148, 70, N'933c757d-67c2-49e4-a2f2-ce38b8b50984.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (149, 70, N'f459106a-f055-4200-b17a-ebfac16a62b3.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (150, 68, N'345c3f0e-6974-49c8-a84b-4111386f3593.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (151, 68, N'f7e0c1d9-269b-4d92-9288-fdeb47c0e29d.png')
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (152, 69, N'91ebd7da-8d07-487a-843c-9a23285c1e8c.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (153, 69, N'f1f80399-b64f-411d-a2fa-1c501e645a0b.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (154, 71, N'07840371-8a93-4e6d-ad7d-481027406fbf.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (155, 71, N'a73764b5-38be-4278-85f2-1138f4920dce.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (156, 85, N'17d6eb74-fa3e-4377-af8f-769a311acd82.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (157, 85, N'95a1505a-02e0-451b-80cf-90eee0157265.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (158, 85, N'b0e8f301-c4ce-40e1-906f-e8aa61226dda.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (159, 84, N'd106ffe2-3859-44a5-8fd1-0ddc56a2ca07.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (160, 84, N'd5a363c0-c621-49cc-99eb-9d61a9995197.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (161, 84, N'a456ba45-3052-475b-a66c-3892222a3353.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (162, 83, N'83549da7-fb77-444b-8e3b-857fd4dfbbc8.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (163, 83, N'c3b7cc81-727a-47e5-879a-e2c6b3719394.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (164, 83, N'a43cfe64-cf30-4a43-b3ca-b902139d27e5.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (165, 86, N'e0b8c01a-f8dc-48c1-b770-85b6a4f3c6d4.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (166, 86, N'c80d0f0f-316a-4b4c-af05-c8a15b0536b4.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (167, 86, N'2f231c4f-0700-4004-91d1-6de003d6b985.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (168, 82, N'71d56d58-1e3a-4549-b5e9-1567d8687deb.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (169, 82, N'4f3d9942-438f-4863-816b-6c06df57fdd4.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (170, 82, N'ad388d90-bbef-49ff-a1ff-09df8304d915.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (171, 73, N'accd1126-c075-4a60-a01f-64637f430c94.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (172, 73, N'97698abb-50d2-45c9-9a19-7f953acc0b3c.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (173, 73, N'60fcf0dd-e024-4822-8e25-125be25a9e93.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (174, 67, N'2e4bff94-bf51-4ccf-9de7-404485b59757.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (175, 67, N'f8383245-c41b-4eb4-bd72-fb73c3d03036.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (176, 64, N'768c02b7-4435-43cf-a2cb-06cb3ea621ca.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (177, 64, N'287e96f3-b9e9-45c2-9b6e-e02da3e6cc81.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (178, 64, N'12003a47-9ed1-4c2d-958e-8c0af2cb8868.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (179, 93, N'400e3d4d-1f39-43f3-a3f6-eaf5de229d1e.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (180, 98, N'0309a9b0-ff22-4062-8c9e-4329f7096e19.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (181, 98, N'd451a117-c108-4b93-9b00-308f088d54bf.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (182, 89, N'c59bf4fe-110e-42ef-a75e-e3d75a075bf8.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (183, 89, N'd7901ba0-f0d6-4c28-be3a-ddb13bc1f6f7.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (184, 100, N'f472ed67-e3ca-42be-b4ee-ce12fbb52a07.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (185, 96, N'505df755-e485-49eb-be66-912694c599a8.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (186, 96, N'7b4cc5c6-b8c4-4ae8-adce-250d2440dd80.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (187, 97, N'dec31955-a350-4278-9dbb-8bc84ee5d074.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (188, 97, N'd642c7b4-9fb0-4a60-bb3e-6b50a9bba641.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (189, 97, N'52d3f028-6578-44f3-8f3e-3414066c71dd.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (190, 97, N'835435bf-5249-41dc-834e-399ff6179972.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (191, 103, N'05b54ef1-0c4b-402a-b875-dc1f887c7547.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (192, 101, N'1bef54ab-d584-46d7-9dc0-45616eeb94af.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (193, 94, N'efcb530c-9c2e-4aa6-baf3-60ae0fb228db.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (194, 92, N'94462d2f-c0a8-4382-962a-96266e99dac3.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (195, 90, N'e1cc430d-6d2d-4149-9e08-bbfa15c8c1ac.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (196, 88, N'81a45403-6c2d-4221-b4ab-d07ea635f958.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (197, 87, N'bdb6b04d-98be-4f1d-a2dd-e10e3d65cbb3.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (198, 99, N'251ec0bc-d74e-429e-b278-4d862b5597b3.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (199, 102, N'aa41a0a7-5377-4233-a07c-499f7286c6de.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (200, 91, N'8933fd05-2e89-43df-a6ff-e4a3b1b47bf1.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (201, 115, N'1ffd96d5-1cda-446a-80a1-71a035d21d98.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (202, 113, N'0c802ff1-58d8-4deb-aeb7-b1fbdaf78cd1.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (203, 121, N'8effd867-7620-4c4b-b4d1-b0438b8b1b96.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (204, 112, N'13527c58-bd40-4eef-ae87-24f5b872eeb5.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (205, 114, N'118cd995-cfb5-4878-bdb8-d0aa24afa82d.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (206, 124, N'5b4a1380-6385-4cac-a48e-70c1fe945f00.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (207, 122, N'4def3b90-33ce-4c08-8b27-e92593f8d673.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (208, 125, N'8b3dd91e-75e9-4935-b2b9-aedebeb6e1e1.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (209, 127, N'20fb31dc-de31-4b93-84e6-ed835f632ed2.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (210, 123, N'5ca9c18b-4b98-4a3c-9ac7-647b5a0610e9.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (211, 126, N'37a768db-21cd-4cb3-8861-1aabe018c40d.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (212, 128, N'5b2a84e1-7c1c-49af-a732-42fa0a893804.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (213, 107, N'0c660311-b77c-420e-8d87-82c3af9610d8.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (214, 109, N'982dca84-a9b2-4b76-915e-9e88bb1cd13c.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (215, 105, N'35c70db3-4a66-4c88-8081-36c949d36db6.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (216, 105, N'9c281960-162d-4fa9-b173-7031c1b6f3c8.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (217, 105, N'067971db-4e67-4314-a469-d536515d6c9b.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (218, 111, N'221d2315-5dce-4760-a7d3-1f92728bd009.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (219, 106, N'9db759fc-6dbf-4f19-b838-8c990cbaabd5.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (220, 104, N'b5e86c46-d236-4497-bccb-64e5adbd3429.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (221, 110, N'ba0195ea-c571-4c8d-90e3-2387da516e52.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (222, 108, N'7027c909-c0d1-4234-a0a5-489b709b7c26.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (223, 66, N'091653fa-1a84-4223-ba54-cd3304b51316.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (224, 66, N'02bd240e-7b62-4e02-886e-20f34a513917.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (225, 66, N'945beee1-9463-4133-b43b-4f5b1bae0a67.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (226, 62, N'e9dba8a0-9bd7-4bd6-b120-c3d7f7c94458.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (227, 62, N'd727a211-7074-4632-a992-475ee75eb17a.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (228, 62, N'e75f5dc6-8d54-4815-a820-ba81bf337f54.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (229, 63, N'0eb50946-3742-47a1-a83b-d5028e698a07.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (230, 63, N'88ad47e4-6850-497b-9887-dd385b192a06.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (231, 63, N'09c96be5-0f97-4f30-afda-715b386c8732.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (232, 65, N'9340a33e-6003-4a4a-a389-c5a109b5b9c1.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (233, 65, N'9ced9137-cecb-4ddc-a17a-c37b713adeea.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (234, 65, N'a0139294-2493-4f6e-a974-e1d0dff6d9fc.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (235, 159, N'f7a9f498-70fc-45d8-8837-776cc0d6d34d.png')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Url]) VALUES (236, 158, N'1044fd51-e0cd-4f3f-b311-df0996fc9665.png')
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (47, N'Vợt cầu lông Yonex 88D Pro 2024', 3900000, N'Trong tháng 3 năm 2024, Yonex đã vừa cho ra mắt một phiên bản của dòng Astrox 88D Pro, tiếp nối thành công của dòng sản phẩm trước đó. Được thiết kế đặc biệt cho những người chơi cầu lông ưa chuộng phong cách tấn công, đặc biệt là ở vị trí cầu sau trong trận đấu đôi, với những cú đánh uy lực và mạnh mẽ.', NULL, 1, 2, NULL)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (48, N'Vợt cầu lông Mizuno Caliber S-Pro', 2800000, N'- Mizuno hiện là một trong những thương hiệu sản xuất vợt cầu lông tốt nhất trên Thế Giới và hiện đang được rất nhiều các lông thủ tin dùng. Một trong những sản phẩm tiêu biểu vừa được ra mắt trong tháng 10 năm 2021 hướng đến người chơi Phong Trào chính là Vợt cầu lông Mizuno Caliber S-Pro - Cho độ Ổn Đinh, Chính Xác cực cao trong mỗi Pha Cầu !- Cây vợt cầu lông Mizuno Caliber S-Pro với thông số trọng lượng 4U, điểm cân bằng Nặng Đầu, thân vợt có độ Cứng ở mức Trung Bình kết hợp cùng dòng vợt Caliber Series cho độ ổn định cùng chính xác cực cao trên từng đường cầu hoàn hảo dành cho những bạn có lối chơi công thủ toàn diện hơi thiên về tấn công nổi trội với những pha điều cầu, phông cầu bắn khiến đối thủ sân bạn gặp nhiều khó khăn.', NULL, 1, 3, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (49, N'Vợt cầu lông Yonex Astrox 100ZZ Kurenai - Đỏ New 2021', 4350000, N'- Siêu phẩm Vợt cầu lông Yonex Astrox 100ZZ Kurenia - Đỏ New 2021 khoác lên mình tông màu mới Kurenai (Màu Đỏ Thẫm) và sẽ được mở bán trên toàn Thế Giới vào đầu tháng 6 năm 2021.- Màu Đỏ Thẫm kết hợp thêm các chi tiết màu Trắng và Xanh Ngọc trên Yonex Astrox 100ZZ 2021 sẽ cho cái nhìn Mạnh Mẽ và Sang Trọng hơn so với phiên bản cũ giúp các lông thủ khi tham gia thi đấu sẽ Quyết Liệt và Máu Lửa hơn rất nhiều.- Đặc biệt, cây vợt Yonex Astrox 100ZZ 2021 sẽ được cải thiện thêm một ít thông số cho khả năng tấn công liên tục giúp người chơi có thể tạo ra được những cú ra vợt siêu mượt mà.', NULL, 1, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (50, N'Vợt cầu lông Victor TK-RYUGA II PRO', 3750000, N'- Vợt Cầu Lông Victor Thruster Ryuga II Pro là phiên bản nâng cấp mới nhất được cho ra mắt đầu năm 2024 của dòng Ryuga đang làm mưa làm gió trên thị trường hiện nay hướng đến người chơi phong trào, bán chuyên và chuyên nghiệp. - Kết hợp những tính năng tốt nhất TK-RYUGA II PRO đặt ra tiêu chuẩn mới về khả năng tấn công xuất sắc. Với các thông số kỹ thuật cao cấp, trọng lượng cú đánh tổng thể nặng hơn, cho phép người chơi có kỹ năng phát huy sức mạnh tấn công vượt trội của mình.', NULL, 1, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (51, N'Vợt Cầu Lông Victor DX-10METALLIC B', 3800000, N'- Vợt cầu lông Victor DriveX 10 Metallic chính hãng thuộc phân khúc cao cấp của nhà Victor, đây là dòng flagship mới nhất của hãng được công bố vào tháng 7 năm 2023 với công nghệ hoàn toàn mới gọi là Metallic, vì vậy mà nó được dùng để đặt làm tên cho dòng vợt siêu HOT này.- METALLIC - công nghệ phủ một lớp kim loại từ phần mũ chụp cho lên đến phần khớp nối chữ T. Lớp phủ này được hãng kiểm nghiệm và cho ra kết quả tích cực khi giúp tăng khả năng tấn công và độ chính xác trong từng đường cầu. Ngoài ra thì METALLIC còn giúp giảm triệt độ rung trong mỗi quả đánh, giúp lực truyền từ cánh tay vào quả cầu được hấp thụ tối đa.', NULL, 1, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (52, N'Vợt Cầu Lông Yonex Astrox 99 Pro Trắng', 4100000, N'- Vợt cầu lông Yonex Astrox 99 Pro trắng là mẫu vợt cao cấp bậc nhất của nhà Yonex sau sự thành công vang dội của phiên bản Astrox 99 Cam do VĐV số 1 thế giới Kento Momota sử dụng và đạt vô số danh hiệu vô địch các giải đấu lớn.Để cải tiến và tiếp nối sự thành công đó, nhà Yonex đã cho ra mắt siêu phẩm Yonex Astrox 99 Pro vào giữa tháng 9 năm 2021.', NULL, 1, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (53, N'Vợt Cầu Lông Yonex Nanoflare 1000Z', 4300000, N'- Vợt Cầu Lông Yonex Nanoflare 1000z là cây vợt sắp được nhà Yonex tung ra thị trường vào giữa tháng 6 năm 2023, có thể nói đây là một tin mừng cho những người chơi cầu lông, đặc biệt là những vận động viên thi đấu chuyên nghiệp khi đây chính là dòng cao cấp nhất với hàng loạt cải tiến so với phiên bản Nanoflare 800 trước đó cùng công nghệ hiện đại để cho ra mắt một siêu phẩm mới - Yonex Nanoflare 1000z.Yonex Nanoflare 1000z là cây vợt đầu nhẹ đầu tiên được thiết kế cho tốc độ đập được tăng lên đáng kể so với các mẫu nhẹ đầu khác. Tất cả khả năng cơ động mà bạn mong đợi từ NANOFLARE được điện khí hóa với lực đẩy kỉ lục và điểm ngọt tập trung giúp tận dụng tối đa mọi cú đánh để cho ra những pha vung vợt nhanh như sấm chớp và độ chính xác cực kỳ cao.', NULL, 1, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (54, N'Vợt Cầu Lông Yonex Arcsaber 11 Pro', 4150000, N'- Yonex Arcsaber 11 Pro đang là một trong những siêu phẩm vợt cầu lông cao cấp được săn đón nhiều nhất trên thị trường nổi trội cho lối chơi toàn diện, chính xác.Vợt Yonex Arcsaber 11 Pro được nhà Yonex phát hành với 2 phiên bản 3U và 4U cùng phối màu Grayish Pearl (Ngọc Trai Xám) được sơn nhám trên tổng thể vợt cho cái nhìn hiện đại và cứng cáp chắc chắn sẽ làm các lông thủ cực ưng ý ngay từ lần chạm mặt đầu tiên.', NULL, 1, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (55, N'Vợt Cầu Lông Victor Auraspeed 90K II', 2900000, N'- Vợt cầu lông Victor Auraspeed 90K II (ARS 90K II) chính hãng là mẫu vợt cầu lông cao cấp được Victor cho ra mắt với phiên bản nâng cấp từ vợt Auraspeed 90K hứa hẹn đem đến cho người chơi những trải nghiệm thú vị hơn.Nếu như phiên bản trước đã thực sự chinh phục được những người chơi khó tính nhất thì phiên bản lần này được xem là hoàn hảo hơn cả. Nó phù hợp cho những trận đấu đòi hỏi sự linh hoạt và đa dạng trong chiến thuật, đặc biệt là lối đánh nhanh, tốc độ.', NULL, 1, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (56, N'Vợt Cầu Lông Victor Auraspeed 100X TUC/AC Limited', 4900000, N'- Vợt cầu lông Victor Auraspeed 100X TUC/AC Limited là phiên bản đặc biệt được Victor cho ra mắt nhân dịp sự kiện khởi tranh BWF Thomas & Uber Cup Finals 2024 diễn ra 2 năm 1 lần.Victor ARS 100X TUC/AC thuộc dòng Auraspeed Series với sự nhanh nhẹn kết hợp tốc độ lẫn sức mạnh cực nổi trội, đặc biệt là với những pha cầu phản tạt và đập gõ rất hiểm hóc. Với thân vợt cứng vừa phải, khối lượng không quá nặng giúp cho những tình huống cầu nhanh, cầu trên lưới, chụp cầu cây vợt xử lí rất linh hoạt. Cùng với đầu vợt hơi nặng nên Victor ARS 100X giúp người chơi có được những cú vung vợt nhanh với độ chính xác cực kỳ cao.', NULL, 1, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (57, N'Vợt Cầu Lông Victor Thruster TTY – Tai Tzu Ying', 3350000, N'- Vợt Cầu Lông Victor Thruster TTY là sản phẩm được thiết kế ngoại hình nổi bật, công nghệ tiên tiến nhất dành riêng cho vận động viên chuyên nghiệp người Đài Loan - Tai Tzu Ying. Được thiết kế với tone màu trắng chủ đạo, điểm các họa tiết màu tím và vàng gold tạo nên ngoại hình thanh thoát không kém phần cá tính, thể hiện rõ lối chơi tốc độ và mạnh mẽ của VĐV Tai Tzu Ying.', NULL, 1, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (58, N'Vợt Cầu Lông Mizuno JPX RESERVE EDITION', 4990000, N'- Đây là mẫu vợt lần đầu tiên được Mizuno áp dụng công nghệ mới PBO – một loại vật liệu bền bỉ gấp 10 lần thép và gấp 2 lần Aramid (vật liệu chuyên dùng để làm găng tay và áo cứu hỏa, chịu nhiệt lên tới 400°C). Với chất liệu mới này, cây vợt cầu lông chính hãng JPX RESERVE EDITION hứa hẹn sẽ mang lại một độ bền bỉ vượt trội so với các mẫu vợt trước đây.Đặc biệt, mẫu vợt JPX RESERVE EDITION là phiên bản sản xuất hạn chế với chỉ 5,000 cây trên toàn Thế Giới và mỗi cây vợt sẽ có số seri riêng.', NULL, 1, 3, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (59, N'Vợt Cầu Lông Mizuno Fortius 11 Power', 4990000, N'- Vợt cầu lông Mizuno Fortius 11 Power chính hãng được tung ra thị trường vào dịp đầu năm 2022 nổi trội với điểm cân bằng vào khoảng 306mm, trọng lượng 4U cùng thân vợt cứng trung bình hỗ trợ hoàn hảo cho lối đánh Tấn Công Uy Lực, phù hợp cho những bạn yêu thích Đập Cầu.Tổng thể cây vợt Mizuno Fortius 11 Power được khoác lên mình cả hai nước sơn bóng và nhám với tông màu đen chủ đạo. Nước sơn bóng được tích hợp ở phần đầu vợt cùng đũa vợt được trang bị nước sơn nhám trông rất hiện đại kết hợp cùng các họa tiết decal màu đỏ và cam tạo cho người nhìn cảm giác rất mạnh mẽ, nhìn vào phát là biết ngay vợt tấn công đấy nhé!', NULL, 1, 3, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (60, N'Vợt Cầu Lông Mizuno Acrospeed 01 Focus', 4050000, N'- Vợt cầu lông Mizuno Acrospeed 01 Focus là mẫu vợt cầu lông cao cấp được cho ra mắt năm 2023 hướng đến đối tượng người chơi phong trào, bán chuyên và chuyên nghiệp.Mizuno Acrospeed 01 Focus được thiết kế dành cho những người chơi ưu tiên những cú đánh mạnh mẽ và tác động cầu nhanh, hướng đến những pha chơi bùng nổ trên sân.', NULL, 1, 3, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (61, N'Vợt Cầu Lông Mizuno Prototype X-3', 4080000, N'- Dòng vợt Prototype luôn mang tới sự bất ngờ và thú vị cho người chơi với những kết cấu hết sức độc đáo như khung vợt dạng sóng trên Prototype X-1, X-2, X-1.1. Với mẫu vợt mới nhất PROTOTYPE X-3, Mizuno tiếp tục mang tới một kết cấu đặc biệt, đó là khung vợt dạng kim cương “Diamond V-Frame”.Cấu trúc này giúp khung vợt bền vững và chắc chắn hơn, bên cạnh đó vợt cầu lông Mizuno PROTOTYPE X-3 2021 cũng là sản phẩm đầu tiên của dòng Prototype được trang bị công nghệ High Foam System, giúp vợt chống rung tốt hơn và tăng lực hơn cho từng cú đánh.', NULL, 1, 3, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (62, N'Vợt Cầu Lông Lining Axforce 100', 4600000, N'- Vợt cầu Lông Lining Axforce 100 Vàng Golden Kirin - Nội địa là sản phẩm chất lượng cao được thiết kế để đáp ứng nhu cầu của các vận động viên chuyên nghiệp. Với trọng lượng từ 3U đến 4U, khung cứng, vợt nặng đầu và đường kính mũ vợt siêu nhỏ 6.0mm, cây vợt này cho phép người chơi tạo ra những cú đánh mạnh và chính xác.', NULL, 1, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (63, N'Vợt Cầu Lông Lining Axforce 90 Đỏ Tiger Max', 5200000, N'- Vào mùa hè năm 2022, Lining đã ra mắt siêu phẩm vợt cầu lông cao cấp mới nhất của mình đó là "Vợt cầu lông Lining AxForce 90 Đỏ Tiger Max - Chúa Sơn Lâm Thị Uy Sức Mạnh. Đi cùng với Axforce 90 Đỏ Tiger Max thì Lining cũng cho ra thị trường phiên bản Axforce 90 Xanh Dragon Max, cho người chơi thêm lựa chọn nếu muốn sở hữu cho mình một cây vợt chuyên công chất lượng.', NULL, 1, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (64, N'Vợt Cầu Lông Lining Halbertec 9000', 5200000, N'- Vợt cầu lông Lining Halbertec 9000 chính hãng là siêu phẩm được ra mắt cuối năm 2023 sau sự thành công của các đàn anh Halbertec 7000 và Halbertec 8000 trước đó, ở phiên bản mới nhất lần này được nâng cấp toàn diện về cả công nghệ lẫn thiết kế bên ngoài. Thuộc phân khúc cao cấp nhất của thương hiệu LiningLining Halbertec 9000 khoác lên mình nước sơn bóng hiện đại, kết hợp giữa hai màu tím và xanh lá - bộ đôi màu sắc tạo cho cây vợt vẻ ngoài nổi bật, sự nguy hiểm pha lẫn chút huyền bí khiến bạn phải chú ý ngay từ cái nhìn đầu tiên.', NULL, 1, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (65, N'Vợt Cầu Lông Lining Bladex 900 Sun Max', 4320000, N'- Lấy ý tưởng hình ảnh mặt trời, được tích hợp nhiều công nghệ tiên tiến nổi bật, là sản phẩm cao cấp của dòng Bladex. Vợt cầu lông Lining Bladex 900 Sun Max được thiết kế màu vàng đồng kết hợp cùng họa tiết các đường vân màu cam và xanh than toát lên vẻ sang trọng và mạnh mẽ cho cây vợt.Đường kính đũa vợt mỏng 6.6mm kết hợp thân vợt với vật liệu Fiber M46 + ULTRA High Elastic Carbon Fiber siêu đàn hồi, cung cấp cho bạn độ chính xác và ổn định, thích hợp cho người chơi có lối đánh tấn công, áp đảo đối phương.', NULL, 1, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (66, N'Vợt Cầu Lông Li-Ning 3D CALIBAR 900B', 4600000, N'- Vợt cầu lông 3D CALIBAR-900B được xây dựng trên Nền tảng Công nghệ 3D Calibar và có thiết kế khung vợt cầu lông hình học, công nghệ cao giúp giảm đáng kể lực cản của không khí. Nó tạo ra tốc độ vung vợt nhanh hơn cho những cú đập lớn hơn và nhận được đánh giá nổi bật từ những người chơi mạnh mẽ đang tìm kiếm sức mạnh tối đa.Vợt cầu lông Li-Ning BOOST Series có điểm cân bằng vừa phải và trục vừa phải, phù hợp với những người chơi có kinh nghiệm và thể lực tốt.Vợt cầu lông 3D CALIBAR-900B được xây dựng trên Nền tảng Công nghệ 3D Calibar và có thiết kế khung vợt cầu lông hình học, công nghệ cao giúp giảm đáng kể lực cản của không khí. Nó tạo ra tốc độ vung vợt nhanh hơn cho những cú đập lớn hơn và nhận được đánh giá nổi bật từ những người chơi mạnh mẽ đang tìm kiếm sức mạnh tối đa.', NULL, 1, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (67, N'Giày Yonex Power Cushion Comfort Z3 Đỏ', 2500000, N'- Giày cầu lông Yonex Power Cushion Comfort Z3 Men là mẫu giày cầu lông cao cấp dành cho người chơi phong trào và chuyên nghiệp với ưu điểm nổi bật là mang lại sự êm ái tối đa cho người chơi.- Lớp da trên PU chống thấm nước hiệu quả và dễ dàng vệ sinh bụi bẩn bằng khăn ẩm. Bên cạnh đó thì lớp lưới mesh thoáng khí giúp đôi chân người chơi trở nên thông thoáng khi hoạt động trong khoảng thời gian dài.- Phần gót chân Yonex Power Cushion Comfort Z3 Men được áp dụng công nghệ Power Cushion + nâng cao sự êm ái tối ưu, đem lại sự êm ái trong từng bước di chuyển và bật nhảy trên sân.', N'Nam', 2, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (68, N'Giày Cầu Lông Yonex Eclipsion Z3 Xanh navy', 2590000, N'- Giày Cầu Lông Yonex Eclipsion Z3 Men - Xanh Navy là mẫu giày cầu lông cao cấp thuộc dòng Eclipsion thiên về độ ổn định và êm ái được nhiều người chơi tại Việt Nam cũng như là các người chơi chuyên nghiệp sử dụng phổ biển trên sân.- Được ra mắt vào tháng 3 năm 2023, Yonex Eclipsion Z3 Men hứa hẹn sẽ là vũ khí không thể thiếu dành cho những người chơi muốn tối ưu kĩ năng trên sân cầu. So với phiên bản Z2 thì phiên bản Z3 được thiết kế với bề ngoài thon gọn hơn, kiểu dáng cũng trẻ trung và hiện đại. Vì vậy mà trọng lượng được giảm đi đáng kể để giúp các bước di chuyển của người chơi nhanh hơn.', N'Nam', 2, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (69, N'Giày Cầu Lông Yonex Aerus Z2 Xanh ngọc', 2750000, N'- Giày cầu lông Yonex Aerus Z2 Lady 2023 - Xanh ngọc là siêu phẩm ra mắt năm 2023 được những nhiều người đón chờ bởi sự nhẹ nhàng và tốc độ mà nó mang lại cho người chơi trên sân ở các phiên bản cũ.- Ở phiên bản lần này, Yonex bổ sung thêm một số công nghệ mới, điển hình là công nghệ TOE ASSIST SHAPE giúp tăng sự vừa vặn giữa bàn chân và gót chân để mang lại cảm giác vừa vặn, ổn định. Ngoài ra hệ thống rảnh RADIAL BLADE thay thế hệ thống ROUND SOLE đem lại khả năng chống trượt tốt hơn theo mọi hướng.', N'Nữ', 2, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (70, N'Giày Cầu Lông Yonex Power Cushion Comfort Z3 Women', 2900000, N'- Giày cầu lông Yonex Power Cushion Comfort Z3 Women là mẫu giày cầu lông cao cấp dành cho người chơi phong trào và chuyên nghiệp muốn tận hưởng sự thoải mái và tối đa tốc độ di chuyển trên sân.- Power Cushion Comfort Z3 Women có thiết kế upper mới với mu bàn chân cong với cấu trúc bên trong và bên ngoài không đối xứng. Nó làm giảm nồng độ một phần của áp suất và tạo ra một sự vừa vặn bao bọc toàn bộ phần trên.', N'Nữ', 2, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (71, N'Giày Cầu Lông Yonex 88 Dial 3', 2790000, N'- Giày cầu lông Yonex 88 Dial 3 2024 - Đen là mẫu giày được thiết kế độc lạ và đẹp mắt, phiên bản hoàn hảo giữa thời trang hiện đại chất lượng cao được Yonex đưa ra thị trường vào năm 2024. Là một sản phẩm cao cấp dành cho những người muốn tìm cho mình một đôi giày thiết kế nổi bật, chất liệu bền bỉ và khả năng vận động tốt trên sân cầu lông.- Lấy cảm hứng dựa trên mẫu giày cầu lông cao cấp nhất Power Cushion Infinity của Yonex không những tập trung vào việc tối ưu hóa độ vừa vặn của giày với công nghệ tự thắt dây BOA FIT SYSTEM mà còn siêu tiết kiệm thời gian. Chỉ cần xỏ chân vào, xoay hệ thống BOA FIT cho vừa vặn nhất với chân của mình là có thể vào sân thi đấu. Cùng với đó, thì việc cởi giày ra cũng vô cùng dễ dàng và đơn giản, chỉ cần vặn nút và rút chân ra là xong.', NULL, 2, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (72, N'Giày cầu lông Lining AYTS041-2', 620000, N'- Giày cầu lông Lining AYTS041-1 không những nổi trội là đôi giày cầu lông cao cấp có phối màu siêu đẹp của nhà Lining mà em nó còn vừa được ra mắt trong tháng 7 năm 2022. Đôi giày có ưu điểm thiên về sự ổn định đảm bảo sẽ cho các lông thủ những bước di chuyển an toàn nhất trên sân đấu.- Với mức giá tiền tầm trung thì form giày và màu sắc rất bắt mắt, êm chân khả năng bảo vệ và di chuyển tốt, với giá thiết kế vô cùng đẹp mắt thì đây là một lựa chọn phù hợp cho các bạn lông thủ.', N'Nam', 2, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (73, N'Giày cầu lông Thunder LITE AYTS020-3', 255000, N'Giày tập cầu lông Thunder LITE AYTS020-2, với phối màu đơn giản, đơn giản và trang nhã, thời trang và đa năng. Phong cách nhập cảnh cơ bản mới được thiết kế với các tính năng theo chủ đề. Hoa đáy cơ bản và thiết kế màu sắc của đế ngoài với các màu tương phản ở mặt trước và mặt sau đảm bảo chức năng và tăng điểm nổi bật cho thiết kế. Phần thân giày sử dụng cấu trúc kết hợp giữa da và vải tổng hợp, mặt ngoài được thiết kế với bề mặt da dạng lưới, nâng đỡ bàn chân một cách an toàn và mặt trong sử dụng cấu trúc vải để thông gió và tản nhiệt. Cấu trúc chống valgus hình tam giác đế ngoài cung cấp hỗ trợ bên trong khi vẫn đảm bảo uốn cong. Thiết kế đế ngoài hạt chống trượt hình kim cương có độ bám chắc chắn và giúp bạn di chuyển trên sân.', NULL, 2, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (74, N'Giày Cầu Lông Lining AYAU003-2', 2600000, N'- Giày cầu lông Lining AYAU003-2 mang trên mình thiết kế độc đáo với màu sắc trắng – đen đối lập, nổi bật là logo Lining cách điệu trên thân giày hướng tới các tay vợt ưa thích phong cách trẻ trung và năng động, thu hút mọi ánh nhìn trên sân cầu.- Form giày khỏe khoắn, cho từng bước chạy trên sân đầy năng lượng. Phần thân trên của giày sử dụng vải da mềm mại cho cảm giác ôm chân thoải mái, di chuyển mượt mà, mang lại cảm giác chân tốt. Bên cạnh đó,hệ thống lỗ thoáng khí trên thân và mũi giày cũng đem lại cho người chơi sự khô thoáng và dễ chịu trong suốt quá trình sử dụng.', N'Nam', 2, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (75, N'Giày cầu lông lining AYAT003-4', 2940000, N'Đôi giày cầu lông Lining AYAT003-4 là một sản phẩm cao cấp của thương hiệu Lining, được tích hợp các công nghệ tiên tiến để nâng cao tính ổn định và hiệu suất của giày. Chất liệu siêu bền đã được Lining áp dụng vào đế giày, mang lại hiệu suất vượt trội, giúp bạn tận dụng tối đa tiềm năng trong mỗi trận đấu. Đôi giày nhẹ và linh hoạt, giúp bạn thể hiện mình linh hoạt trên sân.', N'Nam', 2, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (76, N'Giày cầu lông Li-Ning Thunder AYAS018-6', 2400000, N'Giày thi đấu chuyên nghiệp cầu lông Thunder AYAS018-6 với cách phối màu đơn giản, đơn giản và trang nhã, thời trang và đa năng. Phần trên chủ yếu được làm bằng da sợi nhỏ giúp tăng cường khả năng bọc của thân giày. Cấu trúc thắt chặt TPU ba chiều trên gót chân giúp cải thiện sự hỗ trợ và bao bọc của đường viền cổ. Đế giữa được hỗ trợ bởi công nghệ gấp ba, LIGHT FOAM đầy lòng bàn tay giúp giảm trọng lượng của đế, BOUNSE + phía trước tăng cường phản hồi khi đạp và mặt sau được lấp đầy bởi Li Ning ba, được đệm hoàn toàn và cảm giác bàn chân tăng lên; đế ngoài phân khúc , vòm cầu TPU, sợi carbon tích hợp Tấm có độ dẻo dai và khả năng chống va đập tốt, cung cấp độ ổn định kép và chống xoắn, giúp hiệu suất thể thao.', N'Nữ', 2, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (77, N'Giày Cầu Lông Mizuno Wave Fang Pro', 3550000, N'- Giày Cầu Lông Mizuno Wave Fang Pro - Trắng Xanh Tím  là mẫu giày của thương hiệu Mizuo được thiết kế mang tới sự chắc chắn, ổn định, an toàn cho các VĐV và đã được rất nhiều VĐV chuyên nghiệp lựa chọn. Hiện nay, Mizuno tiếp tục nghiên cứu và cho ra mắt những mẫu giày Wave Fang Pro mới với một số cải tiến nhằm nâng cao hiệu suất thi đấu cho các VĐV- Điểm cải tiến đầu tiên đó là bên cạnh chất liệu da tự nhiên, bề mặt giày Wave Fang Pro sử dụng một số chất liệu khó bị kéo dãn căng, từ đó mang tới độ bền bỉ hơn cho sản phẩm. Bên cạnh đó, cấu trúc ở gót giày được thay đổi để ôm chân hơn, vừa vặn hơn.', NULL, 2, 3, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (78, N'Giày Cầu Lông Mizuno Wave Claw Neo 2 - Trắng Xanh biển', 2990000, N'- Giày cầu lông Mizuno Wave Claw Neo 2 - Trắng Xanh là lựa chọn tuyệt vời cho những người yêu thể thao và đam mê môn cầu lông. Được xem xét là một sản phẩm giày cầu lông cao cấp, Mizuno Wave Claw Neo 2 tích hợp nhiều công nghệ hàng đầu của Mizuno để đảm bảo sự ổn định, thoải mái khi mang, và đế giày có khả năng bám sân hiệu quả, tạo sự chắc chắn cho các bước di chuyển.- Kết cấu của đôi giày cầu lông Mizuno Wave Claw Neo 2 đã được điều chỉnh ở phần gót chân để mang lại cảm giác thoải mái và dễ chịu trong quá trình di chuyển. Đặc biệt, công nghệ mới Mizuno Enerzy, lần đầu tiên được áp dụng, cung cấp những trải nghiệm tuyệt vời với độ êm ái và khả năng giảm chấn ở mức tối đa.', NULL, 2, 3, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (79, N'Giày Cầu Lông Mizuno Wave Claw 3 -Trắng đen đỏ', 2900000, N'- Giày cầu lông Mizuno Wave Claw 3 chuyên dụng, nhẹ, giảm chấn, êm ái, form chuẩn, bám sân tốt, chính hãng.- Giày cầu lông Mizuno Wave Claw 3 được cải tiến trọng lượng nhẹ hơn khoảng 10 gram so với Wave Claw 2. Phiên bản Wave Claw 3 sở hữu form giày vừa vặn với bàn chân người Châu Á, nhất là người Việt. Lỗ xỏ giày được trang bị thêm lớp xốp mang đến khả năng chống mài mòn tốt, gia tăng độ êm ái, bền bỉ.', N'Nam', 2, 3, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (80, N'Giày Cầu Lông Mizuno Wave Claw Neo 2 - Trắng Xanh Hồng', 2990000, N'- Giày cầu lông Mizuno Wave CLaw Neo 2 là một biến thể khác của dòng giày cầu lông Wave Claw. Sau phiên bản đầu tiên để lại nhiều ấn tượng về độ linh hoạt và độ êm, Mizuno tiếp tục cho ra mắt mẫu giày Wave Claw Neo thế hệ thứ hai toàn diện hơn với những nâng cấp rất mạnh mẽ. - Giày cầu lông Mizuno Wave Claw Neo 2 có ngôn ngữ thiết kế hiện đại với nhiều điểm nhấn như phần upper có nhiều lỗ thoáng khí giúp giày có trọng lượng nhẹ hơn và góp phần tăng tốc độ di chuyển; phần lưỡi gà được thiết kế dạng liền với những lỗ xỏ dây đặc biệt, vừa đảm bảo sự chắc chắn, ổn định vừa có tính thẩm mỹ cao.  ', NULL, 2, 3, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (81, N'Giày Cầu Lông Mizuno Wave Fang -Trắng Xanh Cam', 3200000, N'- Wave Fang là dòng giày cầu lông cao cấp và là một trong những dòng giày cầu lông đầu tiên của Mizuno với rất nhiều mẫu giày đình đám như Wave Fang Pro, Wave Fang RV, Wave Fang RX, Wave Fang Zero… Điểm chung của các mẫu giày Wave Fang đó là sự chắc chắn, ổn định, an toàn cho các VĐV. Bước sang năm 2021, Mizuno tiếp tục nghiên cứu và cho ra mắt mẫu giày mới mang tên Wave Fang NX.- Wave Fang NX được sản xuất với chất liệu da tổng hợp cao cấp, được thiết kế với những đường nét rất cơ bản nhưng không kém phần tinh tế hiện đại và là mẫu giày hướng đến sự ổn định, chắc chắn nên bề mặt đế giày được làm phẳng và rộng, hỗ trợ tối đa các bước di chuyển.', NULL, 2, 3, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (82, N'Giày Cầu Lông Victor A970 Nitro Lite - CF', 2150000, N'- Giày cầu lông Victor A970 Nitro Lite - CF là mẫu giày cầu lông cao cấp được Victor cho ra mắt ngay đầu năm 2024 mang lại trải nghiệm chất lượng và toàn diện cho người chơi phong trào, đặc biệt là người chơi bán chuyên và chuyên nghiệp.- Victor A970 Nitro Lite - CF cho phép di chuyển và chuyển hướng nhanh chóng, cũng như mang lại sự thoải mái, ổn định và bảo vệ khi tiếp đất. Phần gót được chế tạo bằng NEO DUPLEX, trong khi đệm chống sốc được nâng cấp với E-TPU cho bàn chân của bạn luôn êm ái trong mọi thời điểm.', N'Nam', 2, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (83, N'Giày Cầu Lông Victor P8500II D - Đỏ', 2700000, N'- Giày cầu lông Victor P8500II D chính hãng là sản phẩm cao cấp của thương hiệu Victor và được nhiều bạn trẻ ưa chuộng. P8500II là một siêu phẩm với sự ổn định được nâng cấp giúp người chơi tăng cảm giác thăng hoa trong mỗi trận đấu. - P8500II không chỉ có tất cả các yếu tố đặc trưng của VICTOR P8500, P8500ACE và P8510, bao gồm thiết kế ba móng bắt mắt và hệ thống bảo vệ mắt cá chân độc đáo, mà còn được trang bị đế giữa HYPEREVA toàn bộ chân được nâng cấp để phù hợp với mẫu cổ điển lên một tầm cao mới. Nhiều tay vợt ưu tú, bao gồm tay vợt đôi nam huyền thoại người Indonesia Mohammad Ahsan, tay vợt đôi nam nữ người Malaysia Goh Soon Huat, Shevon Jemie Lai và Tan Kian Meng, đều đã chọn P8500II làm giày thi đấu cho năm 2023. Thiết kế ba móng ngang cổ điển của P8500 được nâng cấp thêm trong P8500II mới nhất để cung cấp khả năng bảo vệ rộng hơn và hỗ trợ tốt hơn. Thiết kế ba móng 3D có lớp hoàn thiện sơn mài vàng chắc chắn sẽ thu hút sự chú ý trên sân đấu.', NULL, 2, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (84, N'Giày Cầu Lông Victor P9200 TTY - Trắng', 2250000, N'- Giày Cầu Lông Victor P9200 TTY - Trắng là mẫu giày cao cấp được thiết kế đặc biệt để kỷ niệm cho VĐV đơn nữ nổi tiếng thế giới Tai Tzu Ying. Đôi giày nằm trong bộ sưu tập gồm balo, giày, vợt, quần áo,... Bộ sưu tập sử dụng phối màu chủ đạo là trắng-tím, toàn bộ thân giày Victor P9200 TTY - Trắng Chính Hãng với thiết kế trắng tinh khôi cùng các đường viền ngoài màu tím đem lại sự thanh thoát và trẻ trung.- Victor P9200TTY - Trắng chính hãng trang bị form giày mới hiện đại, ôm bàn chân vừa vặn giúp đôi chân bạn trông thon hơn, nhỏ hơn. Trên thân giày sử dụng kết hợp vải da PU mềm mại cùng vải lưới đan mịn cho người chơi độ thoáng khí và thoải mái di chuyển, tập luyện dưới cường độ cao.- Phần đế cũng được làm từ chất liệu cao su chuyên dụng với hệ thống rảnh đảm bảo chống trượt tốt nhất, cùng với trọng lượng nhẹ đem đến những pha di chuyển thanh thoát cùng khả năng bám sân để giúp bạn thực hiện các tình huống chuyển hướng đột ngột được nhanh chóng.', N'Nữ', 2, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (85, N'Giày Cầu Lông Victor P9200C - Đen', 2950000, N'- Giày cầu lông Victor P9200C - Đen chính hãng thuộc thế hệ cao cấp tiếp theo của hãng sau những đàn anh trước đó. Nếu ở các phiên bản trước có tông màu trắng chủ đạo thì ở phiên bản lần này, sự mãnh mẽ và cá tính chính là điểm nổi bật đến từ tông màu đen. Những người chơi mong muốn có một trải nghiệm tốt nhất khi thi đấu trên sân thì đây chính là một lựa chọn tuyệt vời.- Victor P9200C là thế hệ mới từ dòng Stability có thể cho phép di chuyển nhanh chóng và chuyển hướng nhanh chóng, cũng như mang lại sự thoải mái, ổn định và bảo vệ khi tiếp đất. Phần gót được chế tạo bằng NEO DUPLEX, trong khi đệm chống sốc được nâng cấp với E-TPU cho bàn chân của bạn luôn êm ái trong mọi thời điểm.', NULL, 2, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (86, N'Giày Cầu Lông Victor A970 NITROLITE-A Trắng', 2200000, N'- Nếu các bạn đang muốn hướng tới tìm một đôi giày trẻ trung năng động, tươi sáng nhưng vẫn có độ thẩm mĩ cao thì giày cầu lông Victor A970 NITROLITE A  là lựa chọn phù hợp, chất lượng cho những anh em dân chơi tham gia phong trào.- Giày cầu lông Victor A970 NITROLITE A  hiện thuộc top giày cầu lông cao cấp nhất của nhà Victor  hiện đang được một số vận động viên top đầu Thế Giới sử dụng thi đấu rất thành công. Với chủ đạo tông màu Trắng phối thêm chi tiết tông màu Vàng tạo điểm nhấn nổi bật đảm bảo khi mang lên chân các dân chơi cầu lông sẽ có thêm sự tự tin, đẳng cấp riêng. Đặc biệt phối màu này dành cho cả Nam lẫn Nữ.- A970 NITROLITE A thế hệ mới từ dòng Stability có thể cho phép di chuyển nhanh chóng và tấn công chính xác, cũng như mang lại sự thoải mái, ổn định và bảo vệ khi di chuyển cường độ cao.', NULL, 2, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (87, N'Quấn Cán Yonex Xịn AC149-3EX (3in1)', 180000, N'- Quấn cán Yonex AC149-3EX (3in1) được thiết kế để mang lại độ bám và thoải mái tối đa.- Chất liệu polyurethane mềm dẻo và có khả năng thấm hút mồ hôi tốt, giúp tay bạn luôn khô ráo và thoải mái trong khi chơi. Quấn cán cũng có độ dày vừa phải giúp tăng độ bám và kiểm soát vợt.- Đây là lựa chọn tuyệt vời cho những người chơi cầu lông ở mọi trình độ, là một sự nâng cấp tuyệt vời so với quấn cán vợt phổ thông khác và có thể giúp bạn cải thiện hiệu suất chơi cầu lông của bạn.- Sản phẩm sử dụng được 3 lần quấn vợt.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (88, N'Quấn Cán Yonex Xịn AC149-15 EX', 790000, N'- Quấn cán Yonex xịn AC149-15 EX (1 cuộn) - Mã JP được thiết kế để mang lại độ bám và thoải mái tối đa.- Chất liệu polyurethane mềm dẻo và có khả năng thấm hút mồ hôi tốt, giúp tay bạn luôn khô ráo và thoải mái trong khi chơi. Quấn cán cũng có độ dày vừa phải giúp tăng độ bám và kiểm soát vợt.- Đây là lựa chọn tuyệt vời cho những người chơi cầu lông ở mọi trình độ, là một sự nâng cấp tuyệt vời so với quấn cán vợt phổ thông khác và có thể giúp bạn cải thiện hiệu suất chơi cầu lông của bạn.- Sản phẩm sử dụng được 15 lần quấn vợt trên 1 cuộn.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (89, N'Quấn Cán Vợt Cầu Lông Yonex Vải (Cuộn)', 450000, N'- Quấn cán cũng là một phần rất quan trọng trên vợt của bạn như bất kì các bộ phận khác, chọn quấn cán phù hợp sẽ giúp bạn thoải mái và chắc chắn hơn trên cây vợt của bạn. Nếu tay bạn ra mồ hôi khá nhiều và mỗi khi dùng quấn cán bằng cao su lại nhanh ướt phải thay liên tục rất tốn kém chi phí lại tốn thời gian. Nhận thấy được nhu cầu thiết yếu của người tiêu dùng, thương hiệu cầu lông số một hiện nay Yonex đã cho ra mắt sản phẩm quấn cán vợt cầu lông Yonex vải (Cuộn) - Mồ hôi nhiều không phải lo !- Hiện nay trên thị trường sản phẩm được chia làm 3 loại chính gồm: 1 quấn riêng biệt, 1 cuộn 10m (made in Taiwan), 1 cuộn Yonex chính hãng nội địa Nhật (11.8m) tùy thuộc vào nhu cầu của người tiêu dùng sử dụng nhiều hay ít, tất nhiên cuộn nội địa Nhật sẽ mắc nhất và chất lượng của sản phẩm cũng tốt hơn.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (90, N'Quấn Cán Yonex Xịn AC102C-15 EX (1 Cuộn)', 480000, N'- Quấn cán vợt cầu lông cũng là một phụ kiện quan trọng trên vợt giúp người chơi có cảm giác đầm tay hơn, thoải mái và cầm vợt chắc chắn hơn, cũng như đảm bảo tính thẩm mỹ cao cho cây vợt. - Quấn cán vợt cầu lông Yonex AC102C-15 EX được làm từ chất liệu cao su được người chơi cầu lông ưa chuộng hiện nay.- Quấn cán Yonex AC102C-15 EX dày dặn mang đến cảm giác êm ái, chống trơn trượt tốt, có độ bền cao, không ra màu như những cán quấn vợt giá rẻ.- Ngoài ra, quấn cán Yonex AC102C-15 EX bám vợt chắc, khít vào cán vợt, tránh tình trạng bị bung góc khi dán.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (91, N'Quấn Lót Cán Yonex AC013CR', 130000, N'Sản phẩm quấn lót cán dùng để cuốn lót phía trong cùng của cán gỗ (tay cầm vợt), ngăn ngừa mồ hôi lâu ngày không thay thấm hút vào lõi gỗ gây ẩm để thời gian lâu có thể gây ra hiện tượng ẩm mốc hoặc mục cán, gãy cán vợt.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (92, N'Quấn Cán Yonex Xịn AC 102EX (Cái)', 40000, N'- Quấn cán vợt cầu lông cũng là một phụ kiện quan trọng trên vợt giúp người chơi có cảm giác đầm tay hơn, thoải mái và cầm vợt chắc chắn hơn, cũng như đảm bảo tính thẩm mỹ cao cho cây vợt. - Quấn cán Yonex xịn AC102EX (cái) được làm từ chất liệu cao su được người chơi cầu lông ưa chuộng hiện nay.- Quấn cán Yonex Xịn AC 102EX dày dặn mang đến cảm giác êm ái, chống trơn trượt tốt, có độ bền cao, không ra màu như những cán quấn vợt giá rẻ. Ngoài ra, quấn cán Yonex Xịn AC 102EX bám vợt chắc, khít vào cán vợt, tránh tình trạng bị bung góc khi dán.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (93, N'Quấn Cán Yonex AC 402 EX (Vải)', 60000, N'- Để hạn chế tối đa mồ hôi cho những ai bị phong thấp thương hiệu cầu lông Yonex đã cho ra mắt sản phẩm quấn cán Yonex AC 402 EX (vải) nhằm đáp ứng nhu cầu của các lông thủ với một lần sử dụng. Đặc biệt đây là sản phẩm nội địa Nhật rất cao cấp đấy nhé !- Quấn cán cũng là một phần rất quan trọng trên vợt của bạn như bất kì các bộ phận khác, chọn quấn cán phù hợp sẽ giúp bạn thoải mái và chắc chắn hơn trên cây vợt của bạn. Nếu tay bạn ra mồ hôi khá nhiều và mỗi khi dùng quấn cán bằng cao su lại nhanh ướt phải thay liên tục rất tốn kém chi phí lại tốn thời gian. Nhận thấy được nhu cầu thiết yếu của người tiêu dùng, thương hiệu cầu lông số một hiện nay Yonex đã cho ra mắt sản phẩm quấn cán Yonex AC 402 EX (vải) - Cao cấp, chất lượng, thấm hút tốt.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (94, N'Quấn Cán Yonex Xịn AC 102 EX (3in1)', 120000, N'- Quấn cán vợt cầu lông rất cần thiết cho người chơi để tránh trơn trượt khỏi cây vợt cũng như bảo vệ bảo khỏi những vi khuẩn tích tụ và làm hại đôi tay của bạn. Chính vì vậy, lông thủ nào cũng sẽ đầu tư cho cây bảo kiếm của mình một loại cuốn cán hợp lý nhất. Nhận thấy được nhu cầu thiết yếu của người tiêu dùng, thương hiệu cầu lông số một hiện nay Yonex đã cho ra mắt sản phẩm quấn cán Yonex AC102 EX - Người bạn đồng hành đáng tin cậy nhất hiện nay.- Sản phẩm được chia làm rất nhiều loại, 1 quấn riêng biệt, 3 quấn riêng biệt, 30 quấn riêng biệt tùy thuộc vào nhu cầu của người tiêu dùng sử dụng nhiều hay ít, tất nhiên mua 30in1 sẽ tiết kiệm hơn so với mua 1 cái riêng biệt.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (95, N'Quấn Cán Cầu Lông Yonex AC102-5', 220000, N'- Quấn cán vợt cầu lông cũng là một phụ kiện quan trọng trên vợt giúp người chơi có cảm giác đầm tay hơn, thoải mái và cầm vợt chắc chắn hơn, cũng như đảm bảo tính thẩm mỹ cao cho cây vợt. Quấn cán vợt cầu lông Yonex AC102-5 được làm từ chất liệu cao su được người chơi cầu lông ưa chuộng hiện nay.

- Quấn cán Yonex AC102-5 dày dặn mang đến cảm giác êm ái, chống trơn trượt tốt, có độ bền cao, không ra màu như những cán quấn vợt giá rẻ. Ngoài ra, quấn cán Yonex AC102-5 bám vợt chắc, khít vào cán vợt, tránh tình trạng bị bung góc khi dán.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (96, N'Quấn Cán Vợt Cầu Lông Vải Lining GC100R (Cuộn)', 450000, N'- Quấn cán vợt cầu lông cũng là một phụ kiện quan trọng trên vợt giúp người chơi có cảm giác đầm tay hơn, thoải mái và cầm vợt chắc chắn hơn, cũng như đảm bảo tính thẩm mỹ cao cho cây vợt. - Quấn cán vợt cầu lông vải Lining GC100R (Cuộn) được làm từ chất liệu 100% vải Cotton, dày dặn mang đến cảm giác êm ái, chống trơn trượt tốt, có độ bền cao.- Ngoài ra, quấn cán vợt cầu lông vải Lining GC100R bám vợt chắc, khít vào cán vợt, tránh tình trạng bị bung góc khi dán.', NULL, 3, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (97, N'Quấn Cán Vợt Cầu Lông Lining GP100-3', 90000, N'Quấn cán vợt cầu lông Lining GP100-3 là dòng quấn cán thuộc thương hiệu Lining nổi tiếng sản xuất các phụ kiện cầu lông trên thế giới. Nó có độ dày là 0.6mm và rộng 25mm, độ bám dính tốt giúp mang lại cảm giác cầm nắm thoải mái và chắc chắn. Quấn cán cũng có khả năng thấm hút tốt, giúp tránh khỏi trơn trượt và giữ tay khô ráo trong khi chơi và tập luyện. Quấn cán cũng có nhiều loại màu sắc để bạn lựa chọn tùy theo sở thích.', NULL, 3, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (98, N'Quấn Cán Vợt Lining AXSF002-7', 35000, N'- Quấn cán vợt cầu lông cũng là một phụ kiện quan trọng trên vợt giúp người chơi có cảm giác đầm tay hơn, thoải mái và cầm vợt chắc chắn hơn, cũng như đảm bảo tính thẩm mỹ cao cho cây vợt. - Quấn cán vợt Lining AXSF002-7 được làm từ chất liệu cao su được người chơi cầu lông ưa chuộng hiện nay.', NULL, 3, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (99, N'Quấn Lót Cán Lining GM100', 120000, N'Sản phẩm quấn lót cán dùng để cuốn lót phía trong cùng của cán gỗ (tay cầm vợt), ngăn ngừa mồ hôi lâu ngày không thay thấm hút vào lõi gỗ gây ẩm để thời gian lâu có thể gây ra hiện tượng ẩm mốc hoặc mục cán, gãy cán vợt.', NULL, 3, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (100, N'Quấn Cán Vợt Cầu Lông Vải Lining AXJD038', 74000, N'Quấn cán vợt cầu lông vải Lining AXJD038 là loại quấn cán vợt cầu lông chất lượng cao được làm từ 100% cotton. Nó có độ dày 0,6mm và rộng 25mm, giúp mang lại cảm giác cầm nắm thoải mái và chắc chắn. Quấn cán vợt cũng có khả năng thấm hút mồ hôi tốt, giúp tay bạn khô ráo và không bị trơn trượt trong khi chơi. Quấn cán vợt cầu lông vải Lining AXJD038 có nhiều màu sắc khác nhau để bạn lựa chọn, bao gồm đen, trắng, xanh dương, đỏ và vàng. Nó cũng tương thích với tất cả các loại cán vợt cầu lông.', NULL, 3, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (101, N'Quấn Cán Vợt Cầu Lông Victor GR200', 15000, N'- Đối với những vận động viên cầu lông thì việc sở hữu một chiếc vợt cao cấp phù hợp với chiến lược thi đấu có ảnh hưởng rất lớn tới kết quả thi đấu.Tuy nhiên trong quá trình vận động cường độ lớn khiến cho các tuyến mồ hôi trên cơ thể bài tiết mồ hơi nhiều đặc biệt là lòng bàn tay. Chính vì điều này sẽ khiến cho người cầm vợt bị trơn và gặp những vấn đề nghiêm trọng trong khi thi đấu.Nhận thấy được điều bất tiện này các hãng cầu lông đã cho ra mắt các sản phẩm quấn cán vợt cầu lông, đặc biệt phù hợp với cầu lông phong trào chính là mẫu Quấn cán vợt cầu lông Victor GR200 - Mang đến lợi ích tốt nhất cho vợt thủ.Đây là mẫu quấn cán không những có độ chống ẩm cao, nhiều màu sắc, giá cả lại còn rất phải chăng tha hồ cho nhu cầu của các anh chị em lông thủ.', NULL, 3, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (102, N'Quấn Lót Cán Victor GR50', 140000, N'- Đa số người chơi cầu lông đều lột cốt cán khi mua một cây vợt mới để cán cầm vợt nhỏ hơn, phù hợp cho người Việt Nam với cỡ tay nhỏ, dễ dàng xử lí linh hoạt các pha cầu hơn so với để cốt cán bự chưa bóc cốt như ban đầu. Chính vì vậy chúng ta phải sử dụng một lớp đệm bọc bên ngoài để ngăn ngừa mồ hôi thấm vào phần gỗ làm mục, gãy và đặc biệt phải mỏng và tăng cường độ êm ái. Phù hợp nhất chính là sản phẩm cuốn lót cán Victor GR50.', NULL, 3, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (103, N'Quấn Cán Gân Victor Dày GR114', 30000, N'Quấn cán là một trong những dụng cụ quan trọng khi tham gia bộ môn cầu lông. Quấn cán vợt cầu lông rất cần thiết cho người chơi để tránh trơn trượt khỏi cây vợt cũng như bảo vệ bảo khỏi những vi khuẩn tích tụ và làm hại đôi tay của bạn. Chính vì vậy, lông thủ nào cũng sẽ đầu tư cho cây bảo kiếm của mình một loại cuốn cán hợp lý nhất. Nhận thấy được nhu cầu thiết yếu của người tiêu dùng, Shopvnb giới thiệu với các bạn Quấn Cán Gân Victor Dày GR114 - sản phẩm quấn cán chất lượng được nhiều người chơi tin dùng.', NULL, 3, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (104, N'Vớ Cầu Lông Yonex Trơn Dài Xịn', 60000, N'- Vớ cầu lông hay còn được gọi là vớ sử dụng khi chơi cầu lông, là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu. - Vớ cầu lông Yonex trơn dài xịn là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (105, N'Vớ Cầu Lông Yonex 3D Match Plus', 89000, N'- Vớ cầu lông hay còn được gọi là vớ sử dụng khi chơi cầu lông, là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu. - Vớ cầu lông Yonex 3D Match Plus chính hãng là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (106, N'Vớ Cầu Lông Yonex Lindan Dài - Đen', 60000, N'- Vớ cầu lông hay còn được gọi là vớ sử dụng khi chơi cầu lông, là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu. - Vớ Cầu Lông Yonex Lindan Dài - Đen 60k là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (107, N'Vớ Cầu Lông Yonex 145212 Dài - Trắng Xám Xanh Lá', 60000, N'- Vớ cầu lông hay còn được gọi là vớ sử dụng khi chơi cầu lông, là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu. - Vớ cầu lông Yonex 145212 dài - Trắng xám xanh lá là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (108, N'Vớ Cầu Lông Yonex Trơn Ngắn Xịn', 55000, N'- Vớ cầu lông hay còn được gọi là vớ sử dụng khi chơi cầu lông, là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu. - Vớ cầu lông Yonex trơn ngắn là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (109, N'Vớ Cầu Lông Yonex 19028 Dài - Trắng sọc xanh đỏ', 60000, N'- Vớ cầu lông hay còn được gọi là vớ sử dụng khi chơi cầu lông, là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu. - Vớ cầu lông Yonex 19028 dài - Trắng  sọc xanh đỏ  là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (110, N'Vớ Cầu Lông Yonex Trơn Dài Xịn - Đỏ', 80000, N'- Vớ cầu lông hay còn được gọi là vớ sử dụng khi chơi cầu lông, là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu. - Vớ cầu lông Yonex trơn dài xịn - Đỏ là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (111, N'Vớ Cầu Lông Yonex Dài - Trắng sọc Cam', 80000, N'- Vớ cầu lông hay còn được gọi là vớ sử dụng khi chơi cầu lông, là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu.- Vớ cầu lông Yonex dài - Trắng sọc cam là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (112, N'Vớ Cầu Lông Lining AWSS387-50', 85000, N'- Vớ cầu lông hay còn được gọi là vớ sử dụng khi chơi cầu lông, là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu.- Vớ cầu lông Lining AWSS387-50 chính hãng là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt.', NULL, 3, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (113, N'Vớ Cầu Lông Lining AWSS377-3', 80000, N'- Vớ cầu lông hay còn được gọi là vớ sử dụng khi chơi cầu lông, là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu.- Vớ cầu lông Lining AWSS377-3 chính hãng là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt.', N'Nữ', 3, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (114, N'Vớ Cầu Lông Lining AWST061-3', 85000, N'- Vớ cầu lông hay còn được gọi là vớ sử dụng khi chơi cầu lông, là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu.- Vớ cầu lông Lining AWST061-3 chính hãng là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt.', NULL, 3, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (115, N'Vớ Cầu Lông Lining AWLS241-2', 80000, N'Vớ cầu lông nam Li Ning AWLS241-2 , sử dụng phối màu đơn giản, đơn giản và thời trang. Đường khâu màu tương phản kết hợp với in chữ LI-NING, đơn giản và mới mẻ. Được làm bằng chất liệu pha trộn, co giãn và thoáng khí, cải thiện sự thoải mái khi mang. LOGO thương hiệu Li Ning,  tinh tế và đẹp mắt, thể hiện sự quyến rũ của thương hiệu. Cổ tất co giãn được sử dụng ở miệng tất để tăng cảm giác ôm sát và mang lại cảm giác thoải mái khi sử dụng.', NULL, 3, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (121, N'Vớ Cầu Lông Lining AWSS379-3', 85000, N'Vớ cầu lông nam Li Ning AWSS379-2 , sử dụng phối màu đơn giản, đơn giản và thời trang. Đường khâu màu tương phản kết hợp với in chữ LI-NING, đơn giản và mới mẻ. Được làm bằng chất liệu pha trộn, co giãn và thoáng khí, cải thiện sự thoải mái khi mang. LOGO thương hiệu Li Ning,  tinh tế và đẹp mắt, thể hiện sự quyến rũ của thương hiệu. Cổ tất co giãn được sử dụng ở miệng tất để tăng cảm giác ôm sát và mang lại cảm giác thoải mái khi sử dụng.', NULL, 3, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (122, N'Vớ Cầu Lông Victor SKTUC2409 A', 60000, N'"- Vớ  là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu. - Vớ cầu lông Victor SKTUC2409 A là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt."', NULL, 3, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (123, N'Vớ Cầu Lông Victor SK1006L G', 55000, N'"- Vớ  là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu. - Vớ cầu lông Victor SKTUC2409 A là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt."', NULL, 3, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (124, N'Vớ Cầu Lông Victor SK-408CNY A', 60000, N'"- Vớ  là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu. - Vớ cầu lông Victor SKTUC2409 A là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt."', NULL, 3, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (125, N'Vớ Cầu Lông Victor SK195 L A', 50000, N'"- Vớ  là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu. - Vớ cầu lông Victor SK195 L A là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt."', NULL, 3, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (126, N'Vớ Cầu Lông Victor SK-LZJ306 A', 60000, N'- Vớ  là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu. - Vớ cầu lông Victor SK-LZJ306 A là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt.', NULL, 3, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (127, N'Vớ Cầu Lông Victor SK194 L A', 50000, N'- Vớ  là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu. - Vớ cầu lông Victor SK194 L A là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt.', NULL, 3, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (128, N'Vớ Cầu Lông Victor SK-CC101 A', 65000, N'- Vớ  là một phần quan trọng của trang phục cho người chơi môn thể thao cầu lông, không chỉ giúp bảo vệ bàn chân mà còn hỗ trợ giảm độ ma sát và tạo sự thoải mái trong quá trình tập luyện hay thi đấu. - Vớ cầu lông Victor SK-CC101 A là một phụ kiện cầu lông không thể thiếu giúp bảo vệ đôi bàn chân và tạo cảm giác thoải mái và thông thoáng khi sử dụng. Sản phẩm được làm từ các chất liệu gồm cotton, nylon, polyester và các sợi tổng hợp khác giúp đôi vớ mềm mại, co giãn, đàn hồi tốt.', NULL, 3, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (129, N'Dây Cước Căng Vợt Yonex BG EXBOLT 68', 185000, N'Dây cước căng vợt Yonex Exbolt 68 đây là loại cước thứ ba trong dòng Exbolt của Yonex vừa được cho ra mắt. Dòng Exbolt ra mắt loại cước đầu tiên, Yonex Exbolt 63, vào năm 2021 và tiếp theo là Exbolt 65 vào năm 2022. Sau gần 18 tháng kể từ Exbolt 65, Yonex cho ra mắt Exbolt 68, được kỳ vọng sẽ trở thành tiêu chuẩn mới cho dòng cước bền. Dây cước Yonex BG EXBOLT 68 là một lựa chọn tuyệt vời cho người chơi cầu lông ở mọi cấp độ. Với sự kết hợp độc đáo của các công nghệ tiên tiến, BG EXBOLT 68 mang đến hiệu suất vượt trội về độ bền, trợ lực và kiểm soát.- Dây có độ bền cao nhất trong tất cả các dòng cước cầu lông của Yonex khi điểm độ bền lên đến 11 điểm.- Hỗ trợ lực tốt cho người chơi trong những pha phông cầu cao sâu cuối sân dễ dàng. - Đường kính dây 0,68mm, đặc tính đàn hồi cực tốt, âm thanh đanh và vang.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (130, N'Dây Cước Căng Vợt Yonex BGEXBOLT 65', 190000, N'- Cước căng vợt cầu lông Yonex Exbolt 65 là mẫu cước mới nhất vừa được hãng Yonex cho ra mắt trong năm 2022 vừa qua với thông số tương đường với sợi 66 Ultimax nhưng thuộc dạng cước cứng hơn, chắc chắn đây sẽ là mẫu cước mà nhiều anh em chơi cầu lông phong trào chờ đợi.Cước vợt được chế tạo từ vật liệu độc quyền gọi là FORGED FIBER kết hợp độ bền, kích thước mỏng và lực đẩy nhanh tất cả yếu tố để tạo ra dòng cước đan EXBOLT 65.Dây cước mang một thiết kế rất đặc biệt với đường kính nhỏ, chỉ với 0.65mm nhưng lại mang đến nhiều ưu điểm tuyệt vời. Điểm mạnh của loại dây này là cung cấp độ bền bỉ và lực đẩy, tạo cú nổ đã tai hơn. Và đặc điểm đem tới sự kiểm soát cầu tối ưu nhất.Lớp bên ngoài đàn hồi là lớp phủ có tính linh hoạt nâng cao đạt được bằng cách áp dụng công nghệ NANOALLOY cho nylon, giúp lực đẩy nhanh, độ bền và khả năng kiểm soát.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (131, N'Dây Cước Căng Vợt Yonex BG EXBOLT 63', 190000, N'- Yonex EXBOLT 63 với đường kính chỉ 0.63mm được nâng cấp độ bền bỉ, cải tiếng lực đẩy và tạo ra âm thanh bắt tai hơn, được sản xuất bằng vật liệu độc quyền mới ""Forged Fiber"" cực cao cấp đấy nhé !Loại dây đan vợt cầu lông Yonex BG EXBOLT 63 này thuộc top các loại dây siêu cao cấp, thiên về lực đẩy, đánh sướng với tiếng nổ to như Yonex BG 66U, Yonex BG66B, Yonex Nanogy 98,...Đảm bảo đến lúc em nó trình làng trên Thế giới sẽ tạo ra một cơn địa chấn cực lớn.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (132, N'Dây Cước Căng Vợt Yonex Aerosonic', 180000, N'- Yonex Aerosonic nổi trội là mẫu cước cầu lông cho tiếng nổ to cùng khả năng trợ lực siêu khủng 11/10 và với mã nội địa Nhật sẽ càng có chất lượng tốt hơn đấy nhé!Bên cạnh đó, nếu bạn đang tìm kiếm một loại dây đan vợt cầu lông cho khả năng trợ lực cùng tiếng nổ phấn khích hơn cả BG 66U (Mẫu dây quốc dân tại Việt Nam) nhưng vẫn phải thuộc thương hiệu Yonex. Lựa chọn hoàn hảo nhất trên thị trường hiện nay chắc chắn chính là Dây cước vợt Yonex Aerosonic.Đặc biệt, cước cầu lông Yonex Aerosonic là một trong những loại cước căng vợt cầu lông có đường kính dây nhỏ nhất của nhà Yonex chỉ với 0,61mm cho độ trợ lực khủng cùng tiếng nổ to như pháo đảm bảo khi lần đầu tiên sử dụng bạn sẽ cực kinh ngạc về khả năng mà loại dây này mang lại khi vào đánh cầu trên sân đấu.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (133, N'Dây Cước Căng Vợt Yonex BG 66 Force', 180000, N'- Cước cầu lông BG 66 Force là bản cải tiếng của 66 UM, một trong những mẫu cước mới nhất của Yonex, được đa số các vận động viên của Yonex tài trợ sử dụng. Đây được xem là mẫu cước toàn diện nhất về tính năng, so với 66 UM dây cho mặt vợt cứng. Điểm yếu nhất của nó lại nằm ở độ bền, với đường kính nhỏ 0.65mm thì nó rất nhanh đứt, đan ở mức 11kg được xem là mức đan chuẩn của loại dây này.Cước căng vợt Yonex BG 66 Force được cấu tạo với lõi nylon cường độ cao cho độ bền cao hơn 30% so với nylon thông thường trong khi lớp ngoài bằng sợi nylon cao cấp mang lại cảm giác chính xác và có lực nảy cao khi đánh cầu - hiệu suất toàn diện đặc biệt từ một sợi dây cao cấp.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (134, N'Dây Cước Căng Vợt Yonex BG 66 ULTIMAX', 180000, N'- Cước cầu lông BG 66 ULTIMAX là một trong những mẫu cước bán chạy nhất của Yonex, được đa số các vận động viên được Yonex tài trợ sử dụng. Đây được xem là mẫu cước toàn diện nhất về tính năng, với các tiêu chí về tính năng nó gần như đạt điểm tuyệt đối. Điểm yếu nhất của nó lại nằm ở độ bền, với đường kính nhỏ 0.65mm thì nó rất nhanh đứt.Cước căng vợt Yonex BG 66 ULTIMAX được cấu tạo với lõi nylon cường độ cao cho độ bền cao hơn 30% so với nylon thông thường trong khi lớp ngoài bằng sợi polymer cao cấp mang lại cảm giác chính xác và có lực nảy cao khi đánh cầu - hiệu suất toàn diện đặc biệt từ một sợi dây cao cấp.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (135, N'Dây Cước Căng Vợt Yonex BG 80', 180000, N'- Cước căng vợt Yonex BG 80 nổi trội về sức mạnh bộc phát cho người chơi với những cú dứt điểm hoàn hảo, dây cho độ nảy nhất định kết hợp cùng tiếng nổ uy lực khi smash cầu làm đối phương phải dè chừng trong những pha cầu tiếp theo. Dây thuộc dòng Hard Feeling sẽ cho mặt vợt có cảm giác cứng nhất định tạo thúc đẩy người chơi cầu lông cố gắng phát huy hết khả năng của mình.Yonex BG 80 có độ bền nhất định được cấu tạo từ phần vỏ được làm từ sợi bện đặc biệt Polymer Nylon thô và phần lõi gồm đa sợi tơ Polymer Nylon độ bền cao kết hợp cùng siêu sợi Vectran cho sự đàn hồi cao.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (136, N'Dây Cước Căng Vợt Yonex BG 80 Power', 185000, N'- Yonex BG 80 Power là một sợi dây cao cấp đến từ Yonex với độ cứng cao, độ nảy tốt được một số các vận động viên thế giới sử dụng với đường kính 0.68 mm, ngoài ra trong lúc sử dụng dây ít bị chạy và tụt kg tạo ra độ bền nhất định cho người chơi cầu lông.Yonex BG 80 Power là cước cứng thích hợp cho những người chơi thích lối đánh tấn công uy lực. Dây có phủ một lớp hợp lai Titanium phức hợp mang lại cảm giác sắc nét và dễ chịu khi đập cầu. Được thiết kế cho các tay vợt có lối đánh sức mạnh.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (137, N'Dây Cước Căng Vợt Yonex BG Aerobite', 220000, N'- Cước căng vợt Yonex BG Aerobite là loại dây cao cấp đến từ nhà Yonex được cấu tạo từ hai sợi riêng biệt khác nhau, dây dọc có đường kính 0.67 mm dài 5.5m, đường kính dây ngang nhỏ hơn với 0.61 mm dài 5m. Với lõi dây được cấu tạo từ đa sợi tơ Polymer Nylon độ ma sát cao, phần vỏ làm từ sợi bện đặc biệt Polymer Nylon thô độ bền cao. Ngoài ra dây dọc còn được phủ thêm lớp Polyeurethan cung cấp thêm sự cứng cáp, bền bỉ cho dây.Cước căng vợt Aerobite được rất nhiều các vận động viên top đầu thế giới tin dùng, đặc biệt trong đó có Kento Momota đã thành công dùng loại dây này lên ngôi vô địch hầu như tất cả các giải cầu lông thế giới năm 2019 và đầu năm 2020. Cước BG Aerobite mang đến lực xoáy mạnh mẽ, những cú smash chéo trên sân uy lực, những cú đẩy cầu sát lưới khiến quả cầu chéo rơi thắng xuống sàn đấu.Cước được dùng trong cả đánh đơn và đôi được xem là mẫu cước toàn diện nhất về tính năng, với các tiêu chí về tính năng nó gần như đạt điểm tuyệt đối. Điểm yếu nhất của nó lại nằm ở độ bền, với đường kính nhỏ dây dọc 0.67, dây ngang 0.67mm thì nó rất nhanh đứt.', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (138, N'Dây Cước Căng Vợt Yonex BG Aerobite Boost', 210000, N'"- Sau sự thành công tuyệt vời của Aerobite, Yonex quyết định cho ra mắt tiếp sản phẩm kết hợp từ hai dây riêng biệt khác nhau đó chính là cước căng vợt Yonex BG Aerobite Boost, dây cho khả năng kiểm soát cầu hoàn hảo đạt mức 10/10 trong thang điểm. Ngoài ra, dây cho cảm giác mặt vợt cứng hơn, độ bền của dây cũng cao hơn so với Aerobite do được tích hợp công nghệ Vectran TM +.- Yonex BG Aerobite Boost với dây dọc có đường kính 0.72 mm dài 5.5m, đường kính dây ngang nhỏ hơn với 0.61 mm dài 5m. Với lõi dây được cấu tạo từ đa sợi tơ Polymer Nylon độ ma sát cao, phần vỏ làm từ sợi bện đặc biệt Polymer Nylon thô độ bền cao. Ngoài ra dây dọc còn được phủ thêm lớp Polyeurethan cung cấp thêm sự cứng cáp, bền bỉ cho dây."', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (139, N'Dây Cước Căng Vợt Yonex BG SKYARC', 200000, N'"- Dây cước căng vợt Yonex BG SKY là loại cước mới của hãng Yonex sau khi đã làm quá nhiều các loại dây về sức mạnh, tấn công, tiếng nổ to thì đây là loại dây kiểm soát trận đấu phù hợp với người chơi có lối đánh chiến thuật, công thủ toàn diện với các pha tấn công cũng như điều cầu rất tốt cũng như sự khéo léo trong cách chơi bao quát toàn bộ sân.- Dây được tích hợp thêm công nghệ mới Hi-Sling Fiber cho phép người chơi tăng cường độ chính xác cầu phù hợp trong những pha lốp cầu cao sâu dồn ép đối thủ cuối sân.- Ngoài ra với đường kính 0.69 cho dây khá bền lại vừa điều cầu, kiểm soát tốt trận đấu, loại dây này phù hợp cả cho người mới tập chơi tìm kiếm cho mình một sợi dây cao cao cấp để trải nghiệm."', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (140, N'Dây Cước Căng Vợt Yonex Nanogy BG 98', 190000, N'"- Yonex Nanogy 98 là một sợi dây cao cấp đến từ Yonex thuộc dòng Medium với độ mềm, thiên về độ nẩy, thích hợp với người chơi thích đánh cầu cao sâu và phòng thủ. Đường kính 0.66mm nên nó cũng không được bền cho lắm.- Yonex Nanogy 98 được cấu tạo từ lõi đa sợi tơ Polymer Nylon độ bền cao,kết hợp cùng phần vỏ làm từ sợi bện đặc biệt Polymer Nylon thô độ bền cao, cho cảm giác sắc bén khi chơi trên sân làm cú đánh thêm mạnh mẽ, nó được những người chơi có lối đánh thiên về phòng thủ ưa chuộng."', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (141, N'Dây Cước Căng Vợt Yonex Nanogy 95', 190000, N'"- Dây cước căng vợt Yonex Nanogy 95 cùng với BG65 và BG65Ti được xếp vào dòng cước có độ bền cao. Cước NBG 95 có đường kính 0,69mm, không chỉ có độ bền “khủng” nhất, mà chỉ số về độ nảy cũng là hàng top, Âm nổ cầu vang. Nhưng giảm sốc và điều cầu trên mức trung bình. Đây là loại cước cầu lông phù hợp với các bạn chơi khá, có lối đánh tốc độ, tìm kiếm sự ổn định trong từng đường cầu.- Nanogy 95 là loại cước được cấu tạo bởi nano carbon CS phức hợp, giúp người chơi đạt được lực đánh cầu mạnh mẽ kết hợp với độ bền cao. Loại dây này phù hợp với người chơi có lối đánh nhanh và bền bỉ."', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (142, N'Dây Cước Căng Vợt Yonex BG 65 TITANIUM', 140000, N'"- Yonex BG 65 TITANIUM là loại cước căng vợt quá quen thuộc trong giới cầu lông Việt Nam hiện nay. Sau sự thành công của BG 65, Yonex đã có một nâng cấp nhỏ phù hợp với mong muốn của người chơi cầu lông phong trào chính là phủ thêm một lớp Titan làm tăng độ nảy, cho âm thanh nổ cầu lớn hơn nhưng vẫn được xếp vào loại cước đan vợt bền của Yonex.- Do phủ lớp Titan nên cước căng vợt cầu lông Yonex BG 65 TITANIUM cho cảm giác cứng và ít bền hơn cước cầu lông BG65 nhưng điều này là không đáng kể, bù lại bạn sẽ có thể tạo độ nảy tốt hơn, và âm thanh đã tai hơn, ít bị chạy dây cũng như độ bền đảm bảo."', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (143, N'Dây Cước Căng Vợt Yonex BG 65', 120000, N'"- Dây đan vợt cầu lông Yonex BG 65 hầu như ở Việt Nam khi mới bắt đầu chơi cầu ai cũng từng sử dụng qua loại cước này, cùng với BG 65 TI hiện đang là hai mẫu dây được ưa chuộng nhất hiện nay của cước căng vợt cầu lông Yonex. Cước cầu lông BG 65 nổi trội hơn cả là độ bền cao với đường kính 0.7mm cùng với giá thành rất hợp lí- Yonex BG 65 đáp ứng đủ tiêu chí rẻ - bền - chất lượng. Với những bạn tay khỏe, sức căng lớn và đánh cường độ cao thì có thể dùng hơn 1 tháng, còn với những bạn mới tập chơi, chơi phong trào thì rất khó để đánh đứt được cước 65, nhưng khuyến cáo sau 1,5~2 tháng sử dụng cước sẽ bị chùng, nên cần cắt đi đan cước mới để có những đường cầu chuẩn nhất trên sân."', NULL, 3, 2, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (144, N'Dây Cước Căng Vợt Victor VBS-66N', 120000, N'"- Dây cước căng vợt Victor VBS-66N là loại cước đáp ứng được các tiêu chí bền - rẻ - chất lượng đến từ Victor, nổi trội về độ trợ lực cao khi đánh cầu cũng như tiếng nổ của dây cũng cho âm thanh rất bắt tai chắc chắn sẽ làm các anh em lông thủ hài lòng. - Đây là loại dây có đường kính mỏng 0.66 mm mang lại lực đẩy mạnh và âm thanh đập cầu rất sắc nét. Có công năng toàn diện, điều này đã đưa nó trở thành sự lựa chọn của các vận động viên nổi tiếng Lee Zii Jia, Tai Tzu Ying, Hendra, Setiawan sử dụng trong thi đấu.- Đặc biệt, sản phẩm cước Victor VBS-66N sử dụng lõi lynon đa sợi được bọc chắc chắn. Lõi dựa trên công nghệ nano mang lại khả năng phục hồi tuyệt vời và tăng khả năng kiểm soát của dây, làm tăng cảm giác đánh cầu."', NULL, 3, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (145, N'Dây Cước Căng Vợt Victor VBS-68 Power', 150000, N'"- Dây cước căng vợt Victor VBS-68 Power - Cho độ kiểm soát cầu chính xác 99% hứa hẹn sẽ làm đối thủ xứng tầm của các loại dây trên thị trường hiện nay mà giá cả còn hợp lí hơn rất nhiều.- Cước căng vợt Victor VBS-68 Power được trang bị sợi cao su sợi polyamide với độ dẻo dai cao để tăng khả năng chống va đập và ổn định với việc sử dụng mẫu phủ đặc biệt của chúng tôi để mang đến cho người chơi cảm giác kiểm soát, khả năng chơi và tốc độ tối ưu.- Bằng cách sử dụng kỹ thuật nhúng, VBS-68 được gắn với liên kết sợi micro polyamide mô đun cao với nhựa đàn hồi dẻo dai cao để tăng sức đề kháng và ổn định, với việc sử dụng mẫu phủ đặc biệt để mang đến cho người chơi cảm giác cuối cùng về khả năng chơi và tốc độ điều khiển."', NULL, 3, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (146, N'Dây Cước Căng Vợt Victor VBS-63', 160000, N'"- Dây cước căng vợt Victor VBS-63 là loại cước chất lượng đến từ Victor, nổi trội về độ trợ lực cao khi đánh cầu cũng như tiếng nổ của dây cũng cho âm thanh rất bắt tai chắc chắn sẽ làm các anh em lông thủ hài lòng.Đây là loại dây có đường kính mỏng 0.63 mm mang lại lực đẩy mạnh và âm thanh đập cầu rất sắc nét. Có công năng toàn diện, điều này đã đưa nó trở thành sự lựa chọn của các vận động viên sử dụng trong thi đấu.Đặc biệt, sản phẩm cước Victor VBS-63 sử dụng lõi lynon đa sợi được bọc chắc chắn. Lõi dựa trên công nghệ nano mang lại khả năng phục hồi tuyệt vời và tăng khả năng kiểm soát của dây, làm tăng cảm giác đánh cầu."', NULL, 3, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (147, N'Dây Cước Căng Vợt Victor VBS-69N', 150000, N'"- Dây cước căng vợt Victor VBS-69N được xếp vào dòng cước có độ bền cao. Cước Victor VBS-69N có đường kính 0,69mm, không chỉ có độ bền “khủng” nhất, mà chỉ số về độ nảy cũng là hàng top, Âm nổ cầu vang. Nhưng giảm sốc và điều cầu trên mức trung bình. Đây là loại cước cầu lông phù hợp với các bạn chơi khá, có lối đánh tốc độ, tìm kiếm sự ổn định trong từng đường cầu.Victor VBS-69N là loại cước được cấu tạo bởi nano carbon CS phức hợp, giúp người chơi đạt được lực đánh cầu mạnh mẽ kết hợp với độ bền cao. Loại dây này phù hợp với người chơi có lối đánh nhanh và bền bỉ."', NULL, 3, 4, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (148, N'Dây Cước Căng Vợt Lining No.1', 140000, N'"- Dây Lining No.1 đang là loại dây ưa chuộng nhất với đường kính 0.65 mm, trợ lực ổn, độ nảy tốt, ngoài ra cảm giác tiếp xúc cầu của dây có độ cứng nhất định xứng đáng là đối thủ cạnh tranh hàng đầu của Yonex 66 UM. Đặc biệt, dây còn cho tiếng nổ vô cùng uy lực với các pha smash cầu mạnh mẽ. Người chơi cầu lông sử dụng vợt Lining hầu như đều đan dây No.1 giúp cây vợt phát huy hết khả năng của nó. Đặc biệt là ở Trung Quốc, cái nôi của hãng Lining thời thượng, hiện đại, chất lượng.Dây cước căng vợt Lining No.1 có lõi làm từ Heat-Resistant, High Intensity Nylon Multifilament (Đa sợi nylon cường độ cao chống nhiệt), phần vỏ bên ngoài được phủ sợi nylon cường độ cao chống nhiệt. Sự kết hợp của các vật liệu vải cường độ cao, chịu nhiệt cùng với công nghệ Li-Ning 3D KINT độc đáo làm cho dây bền hơn rất nhiều."', NULL, 3, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (149, N'Dây Cước Căng Vợt Lining N61', 180000, N'"- Cước vợt cầu lông Lining N61 được biết đến từ thương hiệu Lining nổi tiếng ở Trung Quốc. Đây là mẫu dây cước căng vợt cầu lông siêu trợ lực nổi trội với đường kính cực nhỏ chỉ 0.61mm nhẹ nhàng đưa quả cầu bạn đánh ra bay đến cuối sân.Lõi được làm bằng hàng ngàn sợi dây nối lại với nhau để cung cấp cho bạn một sợi dây chịu nhiệt và cường độ cao. Nó cũng sử dụng công nghệ nano để bện dây nhằm cung cấp sức mạnh và độ bền tối đa. Lớp ngoài cũng được làm bằng nylon chịu nhiệt và cường độ cao, đảm bảo lực căng được trải đều khắp mặt vợt.Điểm nổi bật, Lining N61 có lực đánh cầu tốt, tạo ra những cú đánh có tốc độ cao nhưng vẫn giữ được sự ổn định và kiểm soát tốt, giúp người chơi có những pha đánh cầu khác nhau tốt nhất trên sân đấu.Ngoài ra, với thiết kế lõi mỏng 0.61 mm và khả năng trợ lực mạnh mẽ, dây cước vợt cầu lông Lining N61 mang lại âm thanh vô cùng lớn và mê hoặc khi đập cầu. Đồng thời, khả năng trợ lực này cũng tạo ra ấn tượng mạnh mẽ cho người chơi.', NULL, 3, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (150, N'Dây Cước Căng Vợt Lining N68', 150000, N'"- Dây Cước Căng Vợt Cầu Lông Lining N68 là mẫu dây cước có hiệu suất ổn định với đường kính 0.68mm, mang lại khả năng trợ lực cho người chơi.Lõi của cước Lining N68 được chế tạo bằng hàng ngàn sợi dây high-polimer nylon rắn chắc. Công nghệ nano cũng được áp dụng để bện dây, mang lại sức mạnh và độ bền tối đa. Lớp ngoài của cước được làm từ nylon chịu nhiệt và cường độ cao, đảm bảo lực căng được trải đều khắp mặt vợt, giúp tăng cường hiệu suất trong quá trình sử dụng.Lining N68 là một mẫu sản phẩm đáng chú ý với nhiều ưu điểm vượt trội như trợ lực, độ bền, khả năng kiểm soát và tốc độ phục hồi ở mức ổn định so với giá thành. Đây là lựa chọn tuyệt vời cho những người chơi cầu lông đang tìm kiếm cước vợt chất lượng để nâng cao trình độ và đem lại cảm giác tốt nhất khi đánh trong sân."', NULL, 3, 1, 1)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (151, N'Dây Cước Căng Vợt Lining N63', 170000, N'"- Cước vợt cầu lông Lining N63 được biết đến từ thương hiệu Lining nổi tiếng ở Trung Quốc. Cước cầu lông này được xem là cảm giác đánh rất sướng, âm thanh đã tai.- Lõi được làm bằng hàng ngàn sợi dây nối lại với nhau để cung cấp cho bạn một sợi dây chịu nhiệt và cường độ cao. Nó cũng sử dụng công nghệ nano để bện dây nhằm cung cấp sức mạnh và độ bền tối đa. Lớp ngoài cũng được làm bằng nylon chịu nhiệt và cường độ cao, đảm bảo lực căng được trải đều khắp mặt vợt.- Ngoài ra, tiếng nổ tạo ra khi sử dụng cước vợt cầu lông Lining N63 là rất lớn, nghe đã tai, bạn chắc chắn sẽ mê hoặc bởi tiếng vang khi đập cầu, đồng thời khả năng trợ lực mà cước vợt cầu lông Lining N63 mang lại cho người chơi vô cùng rất ấn tượng."', NULL, 3, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (152, N'Dây Cước Căng Vợt Lining N65', 160000, N'"- Từ trước đến nay, nhà Lining không quá chú trọng vào phát triển các mẫu dây căng vợt nên họ chỉ có 3 loại duy nhất là Lining No.1, Lining No.5 và Lining No.7 không cho người chơi quá nhiều sự lựa chọn như Yonex hay Mizuno, Kizuna. Nhưng tin vui dành cho các tín đồ yêu thích thương hiệu Lining hãng đã cho ra mắt Dây cước căng vợt Lining N65 rồi đó nhé!- Dây cước căng vợt xịn Lining N65 là mẫu dây cước đan vợt cầu lông cao cấp nhất của Lining vừa được hãng cho ra mắt thị trường trong năm 2021 không những cung cấp Khả Năng trợ lực Cực Tốt mà Tiếng Nổ của dây khi tiếp xúc cầu phát ra cũng vô cùng bắt tai đấy nhé!- Dây cước căng lưới vợt cầu lông Lining N65 có lõi làm từ Heat-Resistant, High Intensity Nylon Multifilament (Đa sợi nylon cường độ cao chống nhiệt), phần vỏ bên ngoài được phủ sợi nylon cường độ cao chống nhiệt. Sự kết hợp của các vật liệu vải cường độ cao, chịu nhiệt cùng với công nghệ Li-Ning 3D KINT độc đáo làm cho dây bền hơn rất nhiều."', NULL, 3, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (153, N'Dây Cước Căng Vợt Lining N69', 150000, N'"- Lining N69 là mẫu cước cầu lông có đường kính 0.69mm nổi trội về khả năng Trợ Lực Tốt cùng Độ Bền Bỉ cao đến bất ngờ và chắc chắn trong thời gian tới đây sẽ là một trong những mẫu cước được người chơi phong trào cực kì ưa chuộng.- Nổi trội về độ Bền Bỉ cao vì bên ngoài dây cước vợt Lining N69 được phủ một lớp Titanium phức hợp mang lại cảm giác sắc nét và dễ chịu khi đập cầu. Được thiết kế cho các tay vợt có lối đánh sức mạnh, tấn công uy lực.- Cước cầu lông Lining N69 sẽ cho người chơi khi đánh cầu có cảm nhận mặt lưới cứng. Thường thì các loại dây cho độ cứng sẽ ít giảm kg và ít chạy dây hoàn hảo cho các lông thủ sử dụng trong một thời gian dài."', NULL, 3, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (154, N'Dây Cước Căng Vợt Lining N70', 130000, N'"- Dây cước căng vợt Lining N70 là loại dây căng vợt mới của thương hiệu Lining. Dây cước Lining N70 này là loại cước mềm và có độ bền cao. Thích hợp cho người các bạn chơi phòng trào, nghiệp dư có lối chơi tấn công kiểm soát.- Ngoài ra dây cước Lining N70 này thiết kế có lõi và lợp đệm được làm bằng những sợi Nylon siêu mềm và nylon có cường độ cao, nổi trội về độ tuyệt cực kì tuyệt vời.- Dây căng cầu lông có độ nảy cao 200m quy trình bện Polyme cao hình elip đặc biệt kết hợp với lõi đa sợi nylon polyme cao với đường kính dây 0,7mm, tốc độ phục hồi tuyệt vời, khả năng kiểm soát cầu vượt trội và những cú đập nhanh và mạnh."', NULL, 3, 1, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (155, N'Dây Cước Căng Vợt Mizuno M-SMOOTH 68S', 190000, N'"- Dây cước căng vợt Mizuno M- Smooth 68S là dòng cước toàn diện hàng đầu của thương hiệu Mizuno với độ bền ấn tượng. Cước được thiết kế dành cho những bạn có lối chơi tốc độ cao cùng với những pha tấn công mạnh mẽ nhưng đồng thời vẫn đảm bảo khả năng kiểm soát cầu tốt.- Mizuno M-Smooth 68S sản xuất tại Nhật Bản. Việc pha trộn hàng nghìn sợi nylon đa sợi có độ đàn hồi cao vào lõi và được dệt bằng sợi tổng hợp có độ bền kéo cao sẽ tạo ra những dây đàn ưu việt cộng hưởng âm thanh cao độ bền bỉ nhất quán.- Ngoài ra, dây cước căng vợt Mizuno M-SMOOTH 68S  là một sợi dây cao cấp đến từ Mizuno với độ cứng cao, độ nảy tốt được khá nhiều các vận động viên thế giới sử dụng trong đó phải kể đến Kenta Nishimoto"', NULL, 3, 3, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (156, N'Dây Cước Căng Vợt Mizuno M-SMOOTH 65R', 190000, N'"- Dây cước căng vợt Mizuno M-Smooth 65R được sản xuất tại thương hiệu nổi tiếng Nhật Bản. Việc pha trộn hàng nghìn sợi nylon đa sợi có độ đàn hồi cao vào lõi và được dệt bằng sợi tổng hợp có độ bền kéo cao sẽ tạo ra những dây đàn ưu việt cộng hưởng âm thanh cao độ bền bỉ nhất quán.- Với đường kính 0.68mm, cước M-Smooth 65S có lực đẩy vô cùng ấn tượng, phù hợp với những bạn có lối chơi tấn công manh, tốc độ nhưng vẫn đảm bảo được khả năng kiểm soát cầu trên sân cực kì tốt.- Ngoài ra, dây cước căng vợt Mizuno M-SMOOTH 65R  là một sợi dây cao cấp đến từ Mizuno với độ cứng cao, độ nảy tốt được khá nhiều các vận động viên thế giới sử dụng trong đó phải kể đến HS Prannoy"', NULL, 3, 3, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (157, N'Dây Cước Căng Vợt Mizuno M-SMOOTH 65H', 190000, N'"- Dây cước căng vợt Mizuno M-Smooth 65H được sản xuất tại thương hiệu nổi tiếng Nhật Bản. Việc pha trộn hàng nghìn sợi nylon đa sợi có độ đàn hồi cao vào lõi và được dệt bằng sợi tổng hợp có độ bền kéo cao sẽ tạo ra những dây đàn ưu việt cộng hưởng âm thanh cao độ bền bỉ nhất quán.- Cước Mizuno M-Smooth 65H có khả năng hấp thụ tốt mang tới những cú chạm cầu siêu mượt và êm ái. Đây sẽ là một lựa chọn hoàn hảo dành cho những bạn thích lối chơi kiểm soát cầu  điều cầu hiệu quả nhưng vẫn mang lại tốc độ cho mỗi cú đánh.- Ngoài ra, dây cước căng vợt Mizuno M-SMOOTH 65H  là một sợi dây cao cấp đến từ Mizuno với độ cứng cao, độ nảy tốt được khá nhiều các vận động viên thế giới sử dụng trong đó phải kể đến Nozomi Okuhara - Nhà vô đích thế giới nội dụng đơn Nữ."', NULL, 3, 3, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (158, N'Dây Cước Căng Vợt Kizuna Z69', 130000, N'"- Dây cước căng vợt Kizuna Z69 là loại dây có đường kính lớn nhất của thương hiệu Kizuna với 0.69mm. Nếu bạn đang sử dụng các mẫu dây có độ bền bỉ cao của Yonex nhưng khi đánh tiếp xúc với quả cầu thì lại cảm nhận mặt vợt đanh, cứng cho cảm giác khó chịu thì bạn có thể chuyển qua sử dụng mẫu dây cước Kizuna Z69 này, chắc chắn sẽ là một gợi ý siêu hoàn hảo.- Loại dây cước căng vợt cầu lông Kizuna Z69 là mẫu cước đan vợt cầu lông giá rẻ dành cho thị trường cầu lông phong trào nổi trội với độ bền bỉ cực kì cao, đánh mãi mà không đứt, là đối thủ siêu nặng kí của Yonex BG 65 đấy nhé !- Và mặc dù được xếp vào hạng dây đan vợt giá rẻ nhưng Kizuna Z69 vẫn cho sức mạnh và khả năng trợ lực siêu tốt. Ngoài ra, khả năng đàn hồi, trở lại ban đầu của dây cũng rất hoàn hảo cộng với độ bền bỉ cao giúp các bạn có thể smash cầuliên tiếp mà không hề hấn gì."', NULL, 3, 3, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (159, N'Dây Cước Căng Vợt Kizuna Z65', 150000, N'"- Nếu các lông thủ nghe nói về dây có đường kính 0.65mm, hầu hết các người chơi cầu lông đều nghĩ đến cước đan vợt Yonex BG 66 Ultimax, Lining No.1,... Nhưng các bạn có từng nghe về mẫu dây cước căng vợt Kizuna Z65 chưa ? Mặc dù có cùng độ dày là 0.65mm nhưng lại cho cảm giác đánh khác nhau đấy nhé !Dây cước căng vợt cầu lông Kizuna Z65 được kết hợp hai tính năng hoàn hảo giữa siêu trợ lực cùng độ bền có thể so sánh với mẫu dây Nanogy 95 của Yonex nhưng cho bề mặt lưới có độ cứng cao hơn do dây thuộc Medium.Kizuna Z65 đặc biệt phù hợp dành cho dân chơi cầu lông phong trào có khả năng siêu trợ lực cùng độ bền cực cao - Điều mà tất cả các người chơi khoảng từ 30 trở lên tại Việt Nam đều muốn hướng đến.Ý kiến riêng từ một người chơi trên Thế giới cho đánh giá khi so sánh với 66 Ultimax như sau: Lực đẩy không bằng 66U nhưng khá phù hợp với tôi trong cả tấn công và phòng thủ và nó còn hỗ trợ lực siêu tốt cho tôi trong những quả phông cầu cao sâu và độ bền thì chắc chắn hoàn hảo hơn rồi."', NULL, 3, 3, 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Price], [Description], [Gender], [CategoryId], [TradeMarkId], [PromotionId]) VALUES (172, N'Halbetec Morto', 1200000, N'dasdasdas', NULL, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Promotions] ON 

INSERT [dbo].[Promotions] ([Id], [Title], [Order], [StartDate], [EndDate], [Discount]) VALUES (1, N'Mùa Hè Rực Rỡ - Giảm Giá Đặc Biệt', 1, CAST(N'2024-05-05T00:00:00.0000000' AS DateTime2), CAST(N'2024-05-15T00:00:00.0000000' AS DateTime2), 10)
INSERT [dbo].[Promotions] ([Id], [Title], [Order], [StartDate], [EndDate], [Discount]) VALUES (3, N'Giảm giá sốc mừng ngày 30/4 -1/5', 2, CAST(N'2024-04-30T00:00:00.0000000' AS DateTime2), CAST(N'2024-05-07T14:28:00.0000000' AS DateTime2), 5)
SET IDENTITY_INSERT [dbo].[Promotions] OFF
GO
INSERT [dbo].[ShoppingCarts] ([ProductId], [UserId], [Date], [Quantity], [UnitPrice], [Color], [Size]) VALUES (49, N'61951ee7-7ecc-48f3-94ed-938555adf6ac', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 2, 3915000, NULL, N'4U')
GO
SET IDENTITY_INSERT [dbo].[TradeMarks] ON 

INSERT [dbo].[TradeMarks] ([Id], [Name]) VALUES (1, N'Lining')
INSERT [dbo].[TradeMarks] ([Id], [Name]) VALUES (2, N'Yonex')
INSERT [dbo].[TradeMarks] ([Id], [Name]) VALUES (3, N'Mizuno')
INSERT [dbo].[TradeMarks] ([Id], [Name]) VALUES (4, N'Victor')
SET IDENTITY_INSERT [dbo].[TradeMarks] OFF
GO
ALTER TABLE [dbo].[Promotions] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [Discount]
GO
ALTER TABLE [dbo].[ShoppingCarts] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Evaluates]  WITH CHECK ADD  CONSTRAINT [FK_Evaluates_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Evaluates] CHECK CONSTRAINT [FK_Evaluates_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Evaluates]  WITH CHECK ADD  CONSTRAINT [FK_Evaluates_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Evaluates] CHECK CONSTRAINT [FK_Evaluates_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_ProductDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_productId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_productId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Promotions] FOREIGN KEY([PromotionId])
REFERENCES [dbo].[Promotions] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Promotions]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_TradeMarks_TradeMarkId] FOREIGN KEY([TradeMarkId])
REFERENCES [dbo].[TradeMarks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_TradeMarks_TradeMarkId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_Products_ProductId]
GO
