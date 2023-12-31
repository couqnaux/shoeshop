USE [master]
GO
/****** Object:  Database [ShoesShop]    Script Date: 14/12/2023 1:08:40 AM ******/
CREATE DATABASE [ShoesShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShoesShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShoesShop.mdf' , SIZE = 17408KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShoesShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShoesShop_log.ldf' , SIZE = 199296KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShoesShop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoesShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShoesShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShoesShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShoesShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShoesShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShoesShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShoesShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShoesShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShoesShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShoesShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShoesShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShoesShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShoesShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShoesShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShoesShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShoesShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShoesShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShoesShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShoesShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShoesShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShoesShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShoesShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShoesShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShoesShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShoesShop] SET  MULTI_USER 
GO
ALTER DATABASE [ShoesShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShoesShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShoesShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShoesShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ShoesShop] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ShoesShop]
GO
/****** Object:  Table [dbo].[chitiethoadon]    Script Date: 14/12/2023 1:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadon](
	[macthd] [bigint] IDENTITY(1,1) NOT NULL,
	[magiay] [bigint] NOT NULL,
	[size] [nvarchar](50) NOT NULL,
	[soluongmua] [int] NOT NULL,
	[mahd] [bigint] NOT NULL,
	[damua] [bit] NULL,
 CONSTRAINT [PK_chitiethoadon] PRIMARY KEY CLUSTERED 
(
	[macthd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dangnhap]    Script Date: 14/12/2023 1:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dangnhap](
	[tendn] [nvarchar](50) NOT NULL,
	[pass] [nvarchar](50) NULL,
	[quyen] [bit] NOT NULL,
 CONSTRAINT [PK_dangnhap] PRIMARY KEY CLUSTERED 
(
	[tendn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giay]    Script Date: 14/12/2023 1:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giay](
	[magiay] [bigint] IDENTITY(1,1) NOT NULL,
	[tengiay] [nvarchar](max) NULL,
	[soluong] [bigint] NULL,
	[gia] [bigint] NULL,
	[maloai] [nvarchar](50) NULL,
	[anh] [nvarchar](max) NULL,
	[ngaynhap] [datetime] NULL,
	[mota] [nvarchar](max) NULL,
 CONSTRAINT [PK_giay1_1] PRIMARY KEY CLUSTERED 
(
	[magiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giaysize]    Script Date: 14/12/2023 1:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giaysize](
	[magiay] [bigint] NOT NULL,
	[masize] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 14/12/2023 1:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[mahd] [bigint] IDENTITY(1,1) NOT NULL,
	[makh] [bigint] NOT NULL,
	[ngaymua] [datetime] NOT NULL,
	[damua] [bit] NULL,
 CONSTRAINT [PK_hoadon2] PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoadon1]    Script Date: 14/12/2023 1:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon1](
	[mahd] [bigint] IDENTITY(1,1) NOT NULL,
	[makh] [bigint] NOT NULL,
	[ngaymua] [datetime] NOT NULL,
	[magiamgia] [nvarchar](50) NULL,
	[damua] [bit] NULL,
 CONSTRAINT [PK_hoadon] PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 14/12/2023 1:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[makh] [bigint] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[sodt] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[tendn] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
 CONSTRAINT [PK_khachhang] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai]    Script Date: 14/12/2023 1:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai](
	[maloai] [nvarchar](50) NOT NULL,
	[tenloai] [nvarchar](50) NULL,
 CONSTRAINT [PK_loai] PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[magiamgia]    Script Date: 14/12/2023 1:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[magiamgia](
	[magiamgia] [nvarchar](50) NOT NULL,
	[phantram] [int] NULL,
	[hieuluc] [date] NULL,
 CONSTRAINT [PK_magiamgia_1] PRIMARY KEY CLUSTERED 
(
	[magiamgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[size]    Script Date: 14/12/2023 1:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[masize] [nvarchar](50) NOT NULL,
	[tensize] [nvarchar](50) NULL,
 CONSTRAINT [PK_size] PRIMARY KEY CLUSTERED 
(
	[masize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[chitietgiayView]    Script Date: 14/12/2023 1:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[chitietgiayView]
AS
SELECT dbo.giay.magiay, dbo.giay.anh, dbo.giay.tengiay, dbo.giay.mota, dbo.size.tensize, dbo.giay.maloai, dbo.giay.gia
FROM     dbo.giay INNER JOIN
                  dbo.giaysize ON dbo.giay.magiay = dbo.giaysize.magiay INNER JOIN
                  dbo.size ON dbo.giaysize.masize = dbo.size.masize
GO
/****** Object:  View [dbo].[giaysizeView]    Script Date: 14/12/2023 1:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[giaysizeView]
AS
SELECT dbo.giay.magiay, dbo.giay.tengiay, dbo.size.tensize
FROM     dbo.giay INNER JOIN
                  dbo.giaysize ON dbo.giay.magiay = dbo.giaysize.magiay INNER JOIN
                  dbo.size ON dbo.giaysize.masize = dbo.size.masize
GO
/****** Object:  View [dbo].[View_adminxacnhan]    Script Date: 14/12/2023 1:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_adminxacnhan]
AS
SELECT dbo.chitiethoadon.macthd, dbo.khachhang.hoten, dbo.giay.tengiay, dbo.size.tensize, dbo.giay.gia, dbo.chitiethoadon.soluongmua, dbo.chitiethoadon.soluongmua * dbo.giay.gia AS thanhtien, dbo.chitiethoadon.damua
FROM     dbo.chitiethoadon INNER JOIN
                  dbo.hoadon ON dbo.chitiethoadon.mahd = dbo.hoadon.mahd INNER JOIN
                  dbo.khachhang ON dbo.hoadon.makh = dbo.khachhang.makh INNER JOIN
                  dbo.giay ON dbo.chitiethoadon.magiay = dbo.giay.magiay INNER JOIN
                  dbo.size ON dbo.chitiethoadon.masize = dbo.size.masize
GO
/****** Object:  View [dbo].[View_chitiethoadonmuahang]    Script Date: 14/12/2023 1:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_chitiethoadonmuahang]
AS
SELECT dbo.chitiethoadon.macthd, dbo.giay.magiay, dbo.giay.tengiay, dbo.chitiethoadon.size, dbo.chitiethoadon.soluongmua, dbo.giay.gia, dbo.chitiethoadon.soluongmua * dbo.giay.gia AS thanhtien, dbo.chitiethoadon.mahd, 
                  dbo.chitiethoadon.damua
FROM     dbo.giay INNER JOIN
                  dbo.chitiethoadon ON dbo.giay.magiay = dbo.chitiethoadon.magiay
GO
/****** Object:  View [dbo].[View_hoadonmuahang]    Script Date: 14/12/2023 1:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_hoadonmuahang]
AS
SELECT dbo.hoadon.mahd, dbo.hoadon.ngaymua, SUM(dbo.chitiethoadon.soluongmua) AS soluongmua, SUM(dbo.chitiethoadon.soluongmua * dbo.giay.gia) AS tongtien, dbo.hoadon.makh, dbo.hoadon.damua
FROM     dbo.chitiethoadon INNER JOIN
                  dbo.hoadon ON dbo.chitiethoadon.mahd = dbo.hoadon.mahd INNER JOIN
                  dbo.giay ON dbo.chitiethoadon.magiay = dbo.giay.magiay
GROUP BY dbo.hoadon.mahd, dbo.hoadon.ngaymua, dbo.hoadon.makh, dbo.hoadon.damua
GO
SET IDENTITY_INSERT [dbo].[chitiethoadon] ON 

INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (1, 3, N'36', 1, 1, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (2, 5, N'36', 1, 2, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (3, 5, N'43', 1, 2, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (4, 41, N'45', 1, 2, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (5, 31, N'40', 5, 3, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (6, 27, N'41', 1, 4, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (7, 55, N'38', 6, 8, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (8, 9, N'42', 2, 9, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (10006, 26, N'41', 1, 10005, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (10007, 35, N'43', 2, 10006, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (10008, 1, N'36', 1, 10007, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (10009, 51, N'40', 3, 10008, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (10010, 29, N'39', 5, 10009, 0)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (10011, 47, N'45', 2, 10010, 0)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (10012, 14, N'37', 2, 10011, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (10013, 32, N'41', 1, 10011, 0)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (10014, 35, N'44', 3, 10011, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20012, 16, N'38', 2, 20011, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20013, 51, N'40', 1, 20011, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20014, 44, N'42', 3, 20011, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20015, 44, N'38', 3, 20012, 0)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20016, 17, N'36', 1, 20013, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20017, 32, N'36', 1, 20013, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20018, 27, N'38', 1, 20014, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20019, 19, N'36', 1, 20014, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20020, 1, N'36', 1, 20015, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20021, 1, N'39', 1, 20015, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20022, 2, N'36', 1, 20016, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20023, 10, N'36', 1, 20016, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20024, 16, N'36', 1, 20016, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20025, 24, N'36', 1, 20016, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20026, 41, N'36', 1, 20016, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20027, 7, N'36', 1, 20017, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20028, 2, N'36', 1, 20017, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20029, 35, N'36', 1, 20017, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20030, 45, N'36', 1, 20017, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20031, 43, N'36', 1, 20018, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20032, 28, N'36', 1, 20018, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20033, 53, N'36', 1, 20018, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20034, 36, N'37', 1, 20019, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20035, 36, N'39', 2, 20019, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20036, 20, N'42', 3, 20019, 1)
INSERT [dbo].[chitiethoadon] ([macthd], [magiay], [size], [soluongmua], [mahd], [damua]) VALUES (20037, 54, N'36', 1, 20019, 1)
SET IDENTITY_INSERT [dbo].[chitiethoadon] OFF
GO
INSERT [dbo].[dangnhap] ([tendn], [pass], [quyen]) VALUES (N'quoc', N'123', 1)
GO
SET IDENTITY_INSERT [dbo].[giay] ON 

INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (1, N'Adidas Response CL ''Focus Olive''', 123, 160, N'adidas', N'img/product/a1.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The ''Focus Olive'' sneaker is a fusion of urban chic and nature''s allure. With its earthy olive hue, it blends seamlessly into streetwear fashion, offering both style and versatility.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (2, N'Adidas Response CL ''Black Carbon''', 24, 140, N'adidas', N'img/product/a2.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The ''Black Carbon'' sneaker embodies modern sophistication. Its sleek design, coupled with a black carbon color palette, exudes an urban edge, making it a statement piece for contemporary street style.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (3, N'Adidas Gazelle ''Wonder White Green''', 155, 100, N'adidas', N'img/product/a3.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The ''Wonder White Green'' Wmns Gazelle radiates elegance with a touch of nature. The chic design, complemented by subtle green accents, creates a graceful and feminine sneaker for everyday wear.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (4, N'Adidas Gazelle ''Shadow Brown''', 132, 100, N'adidas', N'img/product/a4.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Elevate your style with the ''Shadow Brown'' Wmns Gazelle. Its earth-toned palette exudes sophistication, making it a versatile choice for those seeking a blend of casual and refined fashion.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (5, N'Adidas UltraBoost Light Cold.Rdy ''White Victory Blue''', 56, 200, N'adidas', N'img/product/a5.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Unleash style in colder climates with the ''White Victory Blue'' UltraBoost Light Cold.Rdy. This sleek sneaker combines warmth and performance, ensuring a fashionable winter-ready look.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (6, N'Adidas Harden Vol. 7 ''Chalk White''', 23, 160, N'adidas', N'img/product/a6.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The ''Chalk White'' Harden Vol. 7 offers a clean and timeless aesthetic. A perfect blend of style and performance, it''s designed for those who appreciate both on-court excellence and off-court fashion.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (7, N'Adidas UltraBoost Light Cold.Rdy White Victory Blue', 45, 200, N'adidas', N'img/product/a7.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Experience winter comfort with the ''White Victory Blue'' Wmns UltraBoost Light Cold.Rdy. This women''s exclusive sneaker combines warmth with style, making it an essential for the colder seasons.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (8, N'Adidas Stabil Next Gen ''Black Orange''', 65, 160, N'adidas', N'img/product/a8.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Step into dynamic style with the ''Black Orange'' Stabil Next Gen. Its athletic prowess meets vibrant design, creating a standout sneaker for those who crave performance and fashion.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (9, N'Asics Gel Kayano 14 ''White Midnight''', 56, 200, N'asics', N'img/product/as1.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The Asics Gel Kayano 14 in ''White Midnight'' exudes sophistication. Its clean, white silhouette is accented by midnight hues, offering a perfect blend of style and comfort for those seeking a versatile sneaker.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (10, N'Asics Court FF Novak ''Australian Open - Kale''', 34, 150, N'asics', N'img/product/as2.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Celebrate the spirit of the Australian Open with the ''Kale'' Asics Court FF Novak. Inspired by the tournament, it seamlessly merges athletic performance with a unique kale-inspired color theme, creating a standout sneaker on and off the court.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (11, N'Asics Gel-1130 ''Silver Dune'' ', 55, 90, N'asics', N'img/product/as3.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Step into style with the ''Silver Dune'' Asics Gel-1130. This sneaker combines a sleek design with a silver color palette, delivering a modern and athletic look for those who appreciate both form and function.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (12, N'Asics Angelo Baque x Gel Kayano 14 ''Rebirth of Cool''', 77, 230, N'asics', N'img/product/as4.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The collaboration between Angelo Baque and Asics brings forth the ''Rebirth of Cool'' Gel Kayano 14. This sneaker redefines coolness, featuring unique design elements that pay homage to both brands'' aesthetics.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (13, N'Asics Gel-Kahana 8 Grey', 42, 85, N'asics', N'img/product/as5.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The Asics Gel-Kahana 8 in grey is a perfect blend of style and functionality. With its neutral tone, this sneaker offers versatility for various occasions, making it an ideal choice for those who appreciate subtle yet refined footwear.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (14, N'Asics Sean Wotherspoon x Atmos x Gel Lyte 3 ''Corduroy''', 67, 130, N'asics', N'img/product/as6.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The collaborative masterpiece, ''Corduroy'' Gel Lyte 3 by Sean Wotherspoon and Atmos, is a visual delight. With a playful mix of textures and colors, this sneaker stands as a unique and fashion-forward statement, capturing attention with every step.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (15, N'Converse pgLang x Chuck 70 High ''Aura''', 123, 100, N'converse', N'img/product/c1.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Elevate your style with the ''Aura'' Chuck 70 High from the pgLang collaboration. This sneaker merges artistic expression with classic design, featuring unique detailing that adds a touch of mystique to your footwear collection.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (16, N'Converse Run Star Hike Low ''Knit Mashup''', 54, 60, N'converse', N'img/product/c2.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The ''Knit Mashup'' Run Star Hike Low by Converse redefines casual cool. With a fusion of textures and a low-profile silhouette, it delivers a modern twist to a classic design, making it a must-have for the fashion-forward individual.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (17, N'Converse Chuck 70 High Archive Paint Splatter', 45, 55, N'converse', N'img/product/c3.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Embrace artistic flair with the Archive Paint Splatter Chuck 70 High from Converse. This sneaker showcases a vintage-inspired design with paint splatter detailing, creating a unique and expressive statement for your everyday style.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (18, N'Converse Chuck 70 AT-CX Hi ''Black''', 11, 85, N'converse', N'img/product/c4.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Conquer the streets in the ''Black'' Chuck 70 AT-CX Hi by Converse. With a high-top silhouette and rugged design, it brings together urban edge and durability, making it an ideal choice for those who seek both style and functionality.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (19, N'Converse Comme des Garons x Chuck Taylor All Star Hi ''Play''', 76, 115, N'converse', N'img/product/c5.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The ''Play'' Chuck Taylor All Star Hi from Converse''s collaboration with Comme des Garçons is a fashion icon. With its iconic heart logo and classic silhouette, it seamlessly merges avant-garde design with timeless appeal.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (20, N'Converse Hello Kitty x Chuck Taylor All Star High ''Flowers''', 86, 115, N'converse', N'img/product/c6.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Step into a world of cuteness with the ''Flowers'' Chuck Taylor All Star High from the Hello Kitty collaboration. Adorned with floral details, this sneaker combines playful charm with a touch of elegance for a fun and stylish look.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (21, N'Converse Chuck 70 Hi ''Mono Patchwork - Black Forest''', 12, 65, N'converse', N'img/product/c7.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Explore the ''Mono Patchwork - Black Forest'' Chuck 70 Hi from Converse. This sneaker combines a monochromatic color scheme with patchwork detailing, creating a bold and dynamic aesthetic that stands out in any crowd.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (22, N'Converse Chuck Taylor All Star Lift Platform High ''Florals''', 43, 125, N'converse', N'img/product/c8.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Elevate your style with the ''Florals'' Chuck Taylor All Star Lift Platform High from Converse. This sneaker features a feminine touch with floral patterns and a platform sole, offering a perfect blend of fashion and a bold statement.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (23, N'Jordan 2 Retro Mauve', 56, 175, N'jordan', N'img/product/j1.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The Jordan 2 Retro Mauve brings a touch of luxury to your collection. With its muted mauve tones and iconic design, this sneaker offers a perfect blend of sophistication and street-ready style.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (24, N'Jordan Zion 3 GS ''Fresh Paint''', 12, 110, N'jordan', N'img/product/j2.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Unleash creativity with the ''Fresh Paint'' Jordan Zion 3 GS. Designed for the younger sneaker enthusiasts, this sneaker features vibrant colors and dynamic patterns, making it a playful and stylish addition to any wardrobe.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (25, N'Jordan 1 Low SE Just Skate University Blue', 34, 130, N'jordan', N'img/product/j3.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Skate into style with the ''Just Skate'' Jordan 1 Low SE in University Blue. This sneaker combines skate culture aesthetics with iconic Jordan design, delivering a laid-back and cool vibe for your everyday adventures.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (26, N'Jordan 8 Retro ''Playoffs''', 76, 220, N'jordan', N'img/product/j4.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Relive the glory days with the ''Playoffs'' Air Jordan 8 Retro. Featuring a classic black and white color scheme, this sneaker pays homage to historic basketball moments while providing a timeless and bold look.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (27, N'Jordan 11 Retro ''Neapolitan''', 34, 400, N'jordan', N'img/product/j5.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Savor the sweetness of style with the ''Neapolitan'' Air Jordan 11 Retro. Inspired by the classic ice cream flavor, this sneaker blends soft pastel hues, creating a unique and delectable addition to your Jordan collection.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (28, N'Jordan 1 Retro High OG ''Royal Reimagined''', 76, 155, N'jordan', N'img/product/j6.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The ''Royal Reimagined'' Air Jordan 1 Retro High OG offers a fresh take on a classic. With a reimagination of the iconic royal blue colorway, this sneaker combines heritage and contemporary style seamlessly.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (29, N'Jordan 13 Retro ''Wheat''', 87, 180, N'jordan', N'img/product/j7.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Step into autumn with the ''Wheat'' Air Jordan 13 Retro. Featuring a warm wheat color palette, this sneaker brings a seasonal touch to your wardrobe, combining comfort and style effortlessly.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (30, N'Jordan 38 PF ''Light Marine''', 45, 170, N'jordan', N'img/product/j8.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Dive into style with the ''Light Marine'' Air Jordan 38 PF. This performance-forward sneaker boasts marine-inspired aesthetics, delivering a sleek and dynamic look for those who demand both functionality and fashion.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (31, N'Nike Air Force 1 Low Supreme Baroque Brown', 23, 118, N'nike', N'img/product/n1.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The Air Force 1 Low Supreme in Baroque Brown showcases timeless elegance. With its rich brown hues and supreme craftsmanship, this sneaker delivers a sophisticated and versatile addition to your collection.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (32, N'Nike Air Force 1 Wild ''Rugged Orange''', 65, 145, N'nike', N'img/product/n2.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Unleash the wild side with the ''Rugged Orange'' Wmns Air Force 1 Wild. This sneaker features vibrant orange tones and a bold design, adding a playful and energetic flair to your streetwear ensemble.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (33, N'Nike Air Force 1 Wild ''Phantom''', 23, 145, N'nike', N'img/product/n3.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Embrace the allure of simplicity with the ''Phantom'' Wmns Air Force 1 Wild. Its clean design and neutral tones offer a classic and versatile sneaker for everyday wear, ensuring both style and comfort.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (34, N'Nike Air Force 1 Wild ''Fir''', 76, 145, N'nike', N'img/product/n4.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Find your wild side with the ''Fir'' Wmns Air Force 1 Wild. With its deep green hues and adventurous design, this sneaker provides a fresh and nature-inspired look for those who seek standout style.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (35, N'Nike Air Max 1 White University Gold', 87, 140, N'nike', N'img/product/n5.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The Air Max 1 in White University Gold combines classic design with a pop of color. Featuring a white base and vibrant gold accents, this sneaker offers a sporty and eye-catching addition to your street-ready wardrobe.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (36, N'Nike Dunk Low ''Black Amber Brown''', 32, 115, N'nike', N'img/product/n6.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The ''Black Amber Brown'' Dunk Low delivers a perfect blend of simplicity and sophistication. With its black and brown tones, this sneaker offers a versatile and stylish option for casual wear.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (37, N'Nike KD 16 NRG ''Wanda''', 78, 160, N'nike', N'img/product/n7.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The KD 16 NRG ''Wanda'' pays tribute to basketball excellence. With its sleek design and dynamic colorway, this sneaker captures the essence of on-court performance while making a bold statement off the court.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (38, N'Nike Air Max Pulse Roam ''Stone''', 89, 170, N'nike', N'img/product/n8.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Roam freely in style with the ''Stone'' Air Max Pulse Roam. This sneaker combines outdoor aesthetics with urban flair, offering a rugged yet fashionable choice for those who embrace adventure.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (39, N'Nike Air Force 1 Low PRM Halloween (2023)', 76, 145, N'nike', N'img/product/n9.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Celebrate the spooky season with the Halloween-themed Air Force 1 Low Premium. With its unique design and seasonal elements, this sneaker adds a festive and playful touch to your footwear collection.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (40, N'New Balance Two WXY V4 ''Thirty Watt''', 77, 120, N'newbalance', N'img/product/nb1.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The Two WXY V4 ''Thirty Watt'' combines sleek design with urban flair. With its minimalist aesthetic and attention to detail, this sneaker offers a modern and versatile choice for those who appreciate understated style.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (41, N'New Balance Hesi Low ''Halloween''', 65, 110, N'newbalance', N'img/product/nb2.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Embrace the spirit of Halloween with the Hesi Low. With its spooky-themed design and playful details, this sneaker adds a touch of festive fun to your footwear collection, making it a perfect choice for the season.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (42, N'New Balance 327 ''Moonbeam Outerspace''', 78, 90, N'newbalance', N'img/product/nb3.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Step into cosmic style with the ''Moonbeam Outerspace'' New Balance 327. With its celestial-inspired design and retro silhouette, this sneaker delivers a unique and trendy addition to your streetwear ensemble.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (43, N'New Balance 530 ''Cream Beige''', 45, 85, N'newbalance', N'img/product/nb4.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The ''Cream Beige'' New Balance 530 exudes casual elegance. With its neutral tones and classic design, this sneaker offers a timeless and versatile option for those who appreciate a laid-back yet refined look.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (44, N'New Balance 2002R ''Protection Pack - Black Grey''', 12, 160, N'newbalance', N'img/product/nb5.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The ''Protection Pack - Black Grey'' New Balance 2002R showcases a fusion of style and performance. With its protective elements and modern design, this sneaker ensures both comfort and street-ready aesthetics.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (45, N'New Balance 9060 ''Grey Day 2023''', 98, 200, N'newbalance', N'img/product/nb6.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Celebrate ''Grey Day 2023'' with the New Balance 9060. This sneaker pays homage to the iconic grey colorway, offering a sleek and stylish design for those who appreciate the brand''s heritage.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (46, N'New Balance 530 ''Beige''', 56, 70, N'newbalance', N'img/product/nb7.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The ''Beige'' New Balance 530 delivers a perfect blend of comfort and style. With its versatile color and athletic design, this sneaker becomes a go-to choice for your everyday casual looks.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (47, N'New Balance 327 Beige White Gum Pink', 34, 115, N'newbalance', N'img/product/nb8.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The Beige White Gum Pink New Balance 327 offers a feminine touch to a classic silhouette. With its soft color palette and retro design, this sneaker provides a chic and comfortable option for fashion-forward individuals.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (48, N'New Balance 9060 ''Sea Salt Cherry Blossom''', 67, 145, N'newbalance', N'img/product/nb9.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Transport yourself to spring with the ''Sea Salt Cherry Blossom'' New Balance 9060. This sneaker captures the essence of blooming flowers with its refreshing design, making it a delightful addition to your seasonal wardrobe.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (49, N'PUMA Fenty x Avanti L ''Club Navy''', 12, 160, N'puma', N'img/product/p1.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The Fenty x Avanti L in ''Club Navy'' redefines casual elegance. With its deep navy tones and luxurious design, this sneaker offers a sophisticated and fashion-forward choice for those who appreciate bold yet refined footwear.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (50, N'PUMA Fenty x Avanti L ''Dark Myrtle''', 55, 160, N'puma', N'img/product/p2.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Elevate your style with the ''Dark Myrtle'' Fenty x Avanti L. This sneaker features a rich myrtle hue and avant-garde design, delivering a unique and luxurious addition to your collection.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (51, N'PUMA MB.02 LaMelo Ball x Rick and Morty ''Adventures''', 78, 190, N'puma', N'img/product/p3.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Embark on a stylish adventure with the PUMA MB.02 LaMelo Ball x Rick and Morty ''Adventures.'' This collaboration sneaker features playful design elements inspired by the beloved animated series, making it a fun and eye-catching choice for enthusiasts.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (52, N'PUMA Suede ''Layers - Deep Olive Warm Chestnut''', 45, 60, N'puma', N'img/product/p4.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'The ''Layers - Deep Olive Warm Chestnut'' PUMA Suede brings a textured touch to a classic silhouette. With its deep olive and warm chestnut tones, this sneaker offers a layered and dynamic look for your streetwear ensemble.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (53, N'PUMA Fast Rider ''Ride On - White Dazzling Blue''', 98, 65, N'puma', N'img/product/p5.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Ride on in style with the ''Ride On - White Dazzling Blue'' PUMA Fast Rider. This sneaker features a sporty design with a refreshing color palette, providing a dynamic and energetic addition to your athletic-inspired wardrobe.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (54, N'PUMA MB.01 Low LaMelo Ball ''Team Colors - Blue', 34, 165, N'puma', N'img/product/p6.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Show off your team spirit with the ''Team Colors - Blue'' PUMA MB.01 Low LaMelo Ball. This sneaker combines sports aesthetics with street style, offering a bold and vibrant choice for fans and fashion enthusiasts alike.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (55, N'PUMA Future Rider ''Double - White Nimbus Cloud''', 23, 45, N'puma', N'img/product/p7.png', CAST(N'2023-11-03T14:49:12.023' AS DateTime), N'Double up on style with the ''Double - White Nimbus Cloud'' PUMA Future Rider. This sneaker showcases a clean and dynamic design, combining comfort and fashion seamlessly for a versatile addition to your casual wardrobe.')
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [anh], [ngaynhap], [mota]) VALUES (62, N'giay adidas 2', 8, 51, N'adidas', N'img/product/Screenshot 2023-11-01 104450.png', CAST(N'2023-12-11T00:00:00.000' AS DateTime), N'giay adidas')
SET IDENTITY_INSERT [dbo].[giay] OFF
GO
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (1, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (1, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (1, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (1, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (1, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (1, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (1, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (1, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (1, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (1, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (2, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (2, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (2, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (2, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (2, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (2, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (2, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (2, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (2, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (2, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (3, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (3, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (3, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (3, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (3, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (3, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (3, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (3, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (3, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (3, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (4, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (4, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (4, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (4, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (4, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (4, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (4, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (4, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (4, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (4, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (5, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (5, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (5, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (5, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (5, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (5, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (5, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (5, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (5, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (5, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (6, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (6, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (6, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (6, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (6, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (6, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (6, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (6, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (6, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (6, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (7, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (7, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (7, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (7, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (7, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (7, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (7, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (7, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (7, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (7, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (8, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (8, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (8, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (8, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (8, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (8, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (8, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (8, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (8, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (8, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (9, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (9, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (9, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (9, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (9, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (9, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (9, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (9, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (9, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (9, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (10, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (10, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (10, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (10, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (10, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (10, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (10, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (10, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (10, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (10, N'size45')
GO
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (11, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (11, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (11, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (11, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (11, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (11, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (11, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (11, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (11, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (11, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (12, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (12, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (12, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (12, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (12, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (12, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (12, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (12, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (12, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (12, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (13, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (13, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (13, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (13, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (13, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (13, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (13, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (13, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (13, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (13, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (14, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (14, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (14, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (14, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (14, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (14, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (14, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (14, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (14, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (14, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (15, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (15, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (15, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (15, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (15, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (15, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (15, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (15, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (15, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (15, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (16, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (16, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (16, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (16, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (16, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (16, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (16, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (16, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (16, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (16, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (17, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (17, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (17, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (17, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (17, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (17, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (17, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (17, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (17, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (17, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (18, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (18, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (18, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (18, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (18, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (18, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (18, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (18, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (18, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (18, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (19, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (19, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (19, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (19, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (19, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (19, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (19, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (19, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (19, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (19, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (20, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (20, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (20, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (20, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (20, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (20, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (20, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (20, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (20, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (20, N'size45')
GO
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (21, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (21, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (21, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (21, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (21, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (21, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (21, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (21, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (21, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (21, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (22, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (22, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (22, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (22, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (22, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (22, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (22, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (22, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (22, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (22, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (23, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (23, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (23, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (23, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (23, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (23, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (23, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (23, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (23, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (23, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (24, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (24, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (24, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (24, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (24, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (47, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (24, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (24, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (24, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (24, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (24, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (25, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (25, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (25, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (25, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (25, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (25, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (25, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (25, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (25, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (25, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (26, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (26, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (26, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (26, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (26, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (26, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (26, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (26, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (26, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (26, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (27, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (27, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (27, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (27, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (27, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (27, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (27, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (27, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (27, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (27, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (28, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (28, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (28, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (28, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (28, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (28, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (28, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (28, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (28, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (28, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (29, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (29, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (29, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (29, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (29, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (29, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (29, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (29, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (29, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (29, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (30, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (30, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (30, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (30, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (30, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (30, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (30, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (30, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (30, N'size44')
GO
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (30, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (31, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (31, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (31, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (31, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (31, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (31, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (31, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (31, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (31, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (31, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (32, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (32, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (32, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (32, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (32, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (32, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (32, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (32, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (32, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (32, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (33, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (33, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (33, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (33, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (33, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (33, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (33, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (33, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (33, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (33, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (34, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (34, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (34, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (34, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (34, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (34, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (34, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (34, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (34, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (34, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (35, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (35, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (35, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (35, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (35, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (35, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (35, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (35, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (35, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (35, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (36, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (36, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (36, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (36, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (36, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (36, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (36, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (36, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (36, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (36, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (37, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (37, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (37, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (37, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (37, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (37, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (37, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (37, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (37, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (37, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (38, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (38, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (38, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (38, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (38, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (38, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (38, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (38, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (38, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (38, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (39, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (39, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (39, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (39, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (39, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (39, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (39, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (39, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (39, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (39, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (40, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (40, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (40, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (40, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (40, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (40, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (40, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (40, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (40, N'size44')
GO
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (40, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (41, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (41, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (41, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (41, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (41, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (41, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (41, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (41, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (41, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (41, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (42, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (42, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (42, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (42, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (42, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (42, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (42, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (42, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (42, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (42, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (43, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (43, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (43, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (43, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (43, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (43, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (43, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (43, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (43, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (43, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (44, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (44, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (44, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (44, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (44, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (44, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (44, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (44, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (44, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (44, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (45, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (45, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (45, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (45, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (45, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (45, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (45, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (45, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (45, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (45, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (46, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (46, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (46, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (46, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (46, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (46, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (46, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (46, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (46, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (46, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (47, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (47, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (47, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (47, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (47, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (47, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (47, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (47, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (47, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (48, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (48, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (48, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (48, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (48, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (48, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (48, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (48, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (48, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (48, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (49, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (49, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (49, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (49, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (49, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (49, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (49, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (49, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (49, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (49, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (50, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (50, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (50, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (50, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (50, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (50, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (50, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (50, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (50, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (50, N'size45')
GO
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (51, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (51, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (51, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (51, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (51, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (51, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (51, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (51, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (51, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (51, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (52, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (52, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (52, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (52, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (52, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (52, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (52, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (52, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (52, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (52, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (53, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (53, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (53, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (53, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (53, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (53, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (53, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (53, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (53, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (53, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (54, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (54, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (54, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (54, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (54, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (54, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (54, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (54, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (54, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (54, N'size45')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (55, N'size36')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (55, N'size37')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (55, N'size38')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (55, N'size39')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (55, N'size40')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (55, N'size41')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (55, N'size42')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (55, N'size43')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (55, N'size44')
INSERT [dbo].[giaysize] ([magiay], [masize]) VALUES (55, N'size45')
GO
SET IDENTITY_INSERT [dbo].[hoadon] ON 

INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (1, 4, CAST(N'2023-11-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (2, 4, CAST(N'2023-11-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (3, 2, CAST(N'2023-11-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (4, 4, CAST(N'2023-11-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (5, 4, CAST(N'2023-11-25T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (6, 4, CAST(N'2023-11-25T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (7, 4, CAST(N'2023-11-25T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (8, 4, CAST(N'2023-11-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (9, 5, CAST(N'2023-11-26T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (10005, 4, CAST(N'2023-11-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (10006, 5, CAST(N'2023-11-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (10007, 5, CAST(N'2023-11-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (10008, 3, CAST(N'2023-11-28T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (10009, 5, CAST(N'2023-11-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (10010, 5, CAST(N'2023-11-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (10011, 4, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (20011, 5, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (20012, 2, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (20013, 5, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (20014, 4, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (20015, 4, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (20016, 4, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (20017, 3, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (20018, 2, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahd], [makh], [ngaymua], [damua]) VALUES (20019, 4, CAST(N'2023-12-10T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[hoadon] OFF
GO
SET IDENTITY_INSERT [dbo].[khachhang] ON 

INSERT [dbo].[khachhang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (2, N'Pham Van Hoang', N'Ha Noi City', N'084328421', N'bbbbbbb@gmail.com', N'b', N'92eb5ffee6ae2fec3ad71c777531578f')
INSERT [dbo].[khachhang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (3, N'Tran Dinh Thanh Hieu', N'Hue City', N'349239412', N'ccccccccc@gmail.com', N'c', N'4a8a08f09d37b73795649038408b5f33')
INSERT [dbo].[khachhang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (4, N'Mai Xuan Quoc', N'Hue City', N'012334812318', N'xuanquochbt@gmail.com', N'a', N'cc175b9c0f1b6a831c399e269772661')
INSERT [dbo].[khachhang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (5, N'Ho Van Quoc Huy', N'Hue City', N'09123124412', N'eeeeeeeeeeeee@gmail.com', N'e', N'e1671797c52e15f763380b45e841ec32')
SET IDENTITY_INSERT [dbo].[khachhang] OFF
GO
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'adidas', N'Adidas')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'asics', N'Asics')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'converse', N'Converse')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'jordan', N'Jordan')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'newbalance', N'New Balance')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'nike', N'Nike')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'puma', N'Puma')
GO
INSERT [dbo].[magiamgia] ([magiamgia], [phantram], [hieuluc]) VALUES (N'GIANGSINH10', 10, CAST(N'2023-12-30' AS Date))
INSERT [dbo].[magiamgia] ([magiamgia], [phantram], [hieuluc]) VALUES (N'NEWYEAR20', 20, CAST(N'2024-01-03' AS Date))
INSERT [dbo].[magiamgia] ([magiamgia], [phantram], [hieuluc]) VALUES (N'NHAGIAO20', 20, CAST(N'2023-11-20' AS Date))
GO
INSERT [dbo].[size] ([masize], [tensize]) VALUES (N'size36', N'36')
INSERT [dbo].[size] ([masize], [tensize]) VALUES (N'size37', N'37')
INSERT [dbo].[size] ([masize], [tensize]) VALUES (N'size38', N'38')
INSERT [dbo].[size] ([masize], [tensize]) VALUES (N'size39', N'39')
INSERT [dbo].[size] ([masize], [tensize]) VALUES (N'size40', N'40')
INSERT [dbo].[size] ([masize], [tensize]) VALUES (N'size41', N'41')
INSERT [dbo].[size] ([masize], [tensize]) VALUES (N'size42', N'42')
INSERT [dbo].[size] ([masize], [tensize]) VALUES (N'size43', N'43')
INSERT [dbo].[size] ([masize], [tensize]) VALUES (N'size44', N'44')
INSERT [dbo].[size] ([masize], [tensize]) VALUES (N'size45', N'45')
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadon_giay] FOREIGN KEY([magiay])
REFERENCES [dbo].[giay] ([magiay])
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK_chitiethoadon_giay]
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_chitiethoadon_hoadon] FOREIGN KEY([mahd])
REFERENCES [dbo].[hoadon] ([mahd])
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK_chitiethoadon_hoadon]
GO
ALTER TABLE [dbo].[giay]  WITH CHECK ADD  CONSTRAINT [FK_giay_loai] FOREIGN KEY([maloai])
REFERENCES [dbo].[loai] ([maloai])
GO
ALTER TABLE [dbo].[giay] CHECK CONSTRAINT [FK_giay_loai]
GO
ALTER TABLE [dbo].[giaysize]  WITH CHECK ADD  CONSTRAINT [FK_giaysize_giay] FOREIGN KEY([magiay])
REFERENCES [dbo].[giay] ([magiay])
GO
ALTER TABLE [dbo].[giaysize] CHECK CONSTRAINT [FK_giaysize_giay]
GO
ALTER TABLE [dbo].[giaysize]  WITH CHECK ADD  CONSTRAINT [FK_giaysize_size] FOREIGN KEY([masize])
REFERENCES [dbo].[size] ([masize])
GO
ALTER TABLE [dbo].[giaysize] CHECK CONSTRAINT [FK_giaysize_size]
GO
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD  CONSTRAINT [FK_hoadon_khachhang] FOREIGN KEY([makh])
REFERENCES [dbo].[khachhang] ([makh])
GO
ALTER TABLE [dbo].[hoadon] CHECK CONSTRAINT [FK_hoadon_khachhang]
GO
/****** Object:  StoredProcedure [dbo].[updateHoaDon]    Script Date: 14/12/2023 1:08:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[updateHoaDon]
as
UPDATE hoadon
SET damua = 1
WHERE mahd IN (
    SELECT DISTINCT hoadon.mahd
    FROM hoadon
    JOIN chitiethoadon  ON hoadon.mahd = chitiethoadon.mahd
    WHERE chitiethoadon.damua = 1
    AND NOT EXISTS (
        SELECT 1
        FROM chitiethoadon 
        WHERE chitiethoadon.mahd = hoadon.mahd
        AND chitiethoadon.damua = 0
    )
)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "giay"
            Begin Extent = 
               Top = 56
               Left = 634
               Bottom = 307
               Right = 828
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "giaysize"
            Begin Extent = 
               Top = 84
               Left = 354
               Bottom = 203
               Right = 548
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "size"
            Begin Extent = 
               Top = 80
               Left = 89
               Bottom = 199
               Right = 283
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'chitietgiayView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'chitietgiayView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "giay"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "giaysize"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 126
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "size"
            Begin Extent = 
               Top = 7
               Left = 532
               Bottom = 126
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'giaysizeView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'giaysizeView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "chitiethoadon"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 15
               Left = 291
               Bottom = 178
               Right = 485
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "khachhang"
            Begin Extent = 
               Top = 7
               Left = 532
               Bottom = 170
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "giay"
            Begin Extent = 
               Top = 7
               Left = 774
               Bottom = 170
               Right = 968
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "size"
            Begin Extent = 
               Top = 197
               Left = 275
               Bottom = 316
               Right = 469
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_adminxacnhan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_adminxacnhan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_adminxacnhan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "giay"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "chitiethoadon"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 170
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 5100
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_chitiethoadonmuahang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_chitiethoadonmuahang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "chitiethoadon"
            Begin Extent = 
               Top = 54
               Left = 510
               Bottom = 217
               Right = 704
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 58
               Left = 249
               Bottom = 221
               Right = 443
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "giay"
            Begin Extent = 
               Top = 56
               Left = 805
               Bottom = 219
               Right = 999
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_hoadonmuahang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_hoadonmuahang'
GO
USE [master]
GO
ALTER DATABASE [ShoesShop] SET  READ_WRITE 
GO
