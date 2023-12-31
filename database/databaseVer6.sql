USE [master]
GO
/****** Object:  Database [KaraokeMeMe]    Script Date: 12/1/2021 3:39:54 PM ******/
CREATE DATABASE [KaraokeMeMe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KaraokeMeMe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\KaraokeMeMe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KaraokeMeMe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\KaraokeMeMe_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KaraokeMeMe] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KaraokeMeMe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KaraokeMeMe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET ARITHABORT OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KaraokeMeMe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KaraokeMeMe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KaraokeMeMe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KaraokeMeMe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET RECOVERY FULL 
GO
ALTER DATABASE [KaraokeMeMe] SET  MULTI_USER 
GO
ALTER DATABASE [KaraokeMeMe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KaraokeMeMe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KaraokeMeMe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KaraokeMeMe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KaraokeMeMe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KaraokeMeMe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'KaraokeMeMe', N'ON'
GO
ALTER DATABASE [KaraokeMeMe] SET QUERY_STORE = OFF
GO
USE [KaraokeMeMe]
GO
/****** Object:  Table [dbo].[ChiTietDichVu]    Script Date: 12/1/2021 3:39:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDichVu](
	[maDV] [varchar](7) NOT NULL,
	[maHD] [varchar](7) NOT NULL,
	[soLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maDV] ASC,
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 12/1/2021 3:39:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[maHD] [varchar](7) NOT NULL,
	[maPhong] [varchar](4) NOT NULL,
	[thoiLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD] ASC,
	[maPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaChi]    Script Date: 12/1/2021 3:39:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChi](
	[maDC] [varchar](7) NOT NULL,
	[phuongXa] [nvarchar](max) NULL,
	[quanHuyen] [nvarchar](max) NULL,
	[tinhTP] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[maDC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 12/1/2021 3:39:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[maDV] [varchar](7) NOT NULL,
	[donGia] [float] NULL,
	[donViTinh] [nvarchar](50) NULL,
	[soLuong] [int] NOT NULL,
	[tenDichVu] [nvarchar](max) NULL,
	[trangThaiDichVu] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/1/2021 3:39:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHD] [varchar](7) NOT NULL,
	[chietKhau] [float] NOT NULL,
	[gioKetThuc] [datetime2](7) NULL,
	[gioNhanPhong] [datetime2](7) NULL,
	[ngayLap] [datetime2](7) NULL,
	[thue] [float] NOT NULL,
	[tienKhachTra] [float] NOT NULL,
	[tongTien] [float] NOT NULL,
	[trangThai] [bit] NOT NULL,
	[maKH] [varchar](7) NULL,
	[maKM] [varchar](7) NULL,
	[maNV] [varchar](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/1/2021 3:39:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKH] [varchar](7) NOT NULL,
	[gioiTinh] [bit] NOT NULL,
	[hoTen] [nvarchar](max) NULL,
	[ngaySinh] [datetime2](7) NULL,
	[soDienThoai] [varchar](11) NULL,
	[maDC] [varchar](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 12/1/2021 3:39:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[maKM] [varchar](7) NOT NULL,
	[chietKhau] [float] NOT NULL,
	[daSuDung] [int] NOT NULL,
	[maGiamGia] [varchar](255) NULL,
	[moTa] [nvarchar](max) NULL,
	[ngayBatDau] [datetime2](7) NULL,
	[ngayHetHan] [datetime2](7) NULL,
	[tongSoLuong] [int] NOT NULL,
	[trangThai] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiNhanVien]    Script Date: 12/1/2021 3:39:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNhanVien](
	[maLNV] [varchar](6) NOT NULL,
	[tenLoaiNhanVien] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 12/1/2021 3:39:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[maLP] [varchar](5) NOT NULL,
	[giaTien] [float] NOT NULL,
	[tenLoaiPhong] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/1/2021 3:39:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNV] [varchar](7) NOT NULL,
	[gioiTinh] [bit] NOT NULL,
	[hoTen] [nvarchar](max) NULL,
	[ngaySinh] [datetime2](7) NULL,
	[password] [varchar](255) NULL,
	[soCMND] [varchar](11) NULL,
	[soDienThoai] [varchar](11) NULL,
	[trangThaiLamViec] [bit] NOT NULL,
	[maDC] [varchar](7) NULL,
	[maLNV] [varchar](6) NULL,
	[quanLy] [varchar](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatPhong]    Script Date: 12/1/2021 3:39:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatPhong](
	[maPDP] [varchar](8) NOT NULL,
	[thoiGianDangKyDatPhong] [datetime2](7) NULL,
	[thoiGianNhanPhong] [datetime2](7) NULL,
	[tinhTrang] [bit] NOT NULL,
	[maKH] [varchar](7) NULL,
	[maNV] [varchar](7) NULL,
	[maPhong] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[maPDP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 12/1/2021 3:39:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[maPhong] [varchar](4) NOT NULL,
	[soNguoi] [int] NOT NULL,
	[tinhTrangPhong] [bit] NOT NULL,
	[maLP] [varchar](5) NULL,
	[maTTP] [varchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThaiPhong]    Script Date: 12/1/2021 3:39:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiPhong](
	[maTTP] [varchar](6) NOT NULL,
	[tenTrangThaiPhong] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[maTTP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietDichVu]  WITH CHECK ADD  CONSTRAINT [FKeye54e4p8bj4egjupsyses0hb] FOREIGN KEY([maHD])
REFERENCES [dbo].[HoaDon] ([maHD])
GO
ALTER TABLE [dbo].[ChiTietDichVu] CHECK CONSTRAINT [FKeye54e4p8bj4egjupsyses0hb]
GO
ALTER TABLE [dbo].[ChiTietDichVu]  WITH CHECK ADD  CONSTRAINT [FKfe5abn33fe5jtp4lyhif1xyjf] FOREIGN KEY([maDV])
REFERENCES [dbo].[DichVu] ([maDV])
GO
ALTER TABLE [dbo].[ChiTietDichVu] CHECK CONSTRAINT [FKfe5abn33fe5jtp4lyhif1xyjf]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK2kbafpq23m2cuqm32ifoiwi9d] FOREIGN KEY([maHD])
REFERENCES [dbo].[HoaDon] ([maHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK2kbafpq23m2cuqm32ifoiwi9d]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FKhjx09obph682p8sjkgctrprsf] FOREIGN KEY([maPhong])
REFERENCES [dbo].[Phong] ([maPhong])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FKhjx09obph682p8sjkgctrprsf]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FKg1ebuq3tydt58wb4gutehmh9w] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FKg1ebuq3tydt58wb4gutehmh9w]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FKlph8t397sm5x0cjgjakmr74vl] FOREIGN KEY([maKM])
REFERENCES [dbo].[KhuyenMai] ([maKM])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FKlph8t397sm5x0cjgjakmr74vl]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FKoyaa1162ps1nyifmfv2pv2qr] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVien] ([maNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FKoyaa1162ps1nyifmfv2pv2qr]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FKiba0wt7q374ij2ewwixhddy5a] FOREIGN KEY([maDC])
REFERENCES [dbo].[DiaChi] ([maDC])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FKiba0wt7q374ij2ewwixhddy5a]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK592pmnnm2sm98xbre6r63cqa4] FOREIGN KEY([maLNV])
REFERENCES [dbo].[LoaiNhanVien] ([maLNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK592pmnnm2sm98xbre6r63cqa4]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK5tlbi42hvoctodk23eiohcc9l] FOREIGN KEY([maDC])
REFERENCES [dbo].[DiaChi] ([maDC])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK5tlbi42hvoctodk23eiohcc9l]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK8v32tgn8198bo2e45qsw38m1w] FOREIGN KEY([quanLy])
REFERENCES [dbo].[NhanVien] ([maNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK8v32tgn8198bo2e45qsw38m1w]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FKphxjagrmwrbqrass8wg6j8wu4] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVien] ([maNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FKphxjagrmwrbqrass8wg6j8wu4]
GO
ALTER TABLE [dbo].[PhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [FK193vmga917683f0li98ktju55] FOREIGN KEY([maPhong])
REFERENCES [dbo].[Phong] ([maPhong])
GO
ALTER TABLE [dbo].[PhieuDatPhong] CHECK CONSTRAINT [FK193vmga917683f0li98ktju55]
GO
ALTER TABLE [dbo].[PhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [FK2t45g3pucelkncvbv8a9aqgvp] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVien] ([maNV])
GO
ALTER TABLE [dbo].[PhieuDatPhong] CHECK CONSTRAINT [FK2t45g3pucelkncvbv8a9aqgvp]
GO
ALTER TABLE [dbo].[PhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [FKa98ia5h5ds61k4etrl4mrgb9f] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[PhieuDatPhong] CHECK CONSTRAINT [FKa98ia5h5ds61k4etrl4mrgb9f]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FKjv5cd9rgskfo6ycp5oomaulks] FOREIGN KEY([maLP])
REFERENCES [dbo].[LoaiPhong] ([maLP])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FKjv5cd9rgskfo6ycp5oomaulks]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FKlxs9yc5k8idtuxshdfpswwym9] FOREIGN KEY([maTTP])
REFERENCES [dbo].[TrangThaiPhong] ([maTTP])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FKlxs9yc5k8idtuxshdfpswwym9]
GO
USE [master]
GO
ALTER DATABASE [KaraokeMeMe] SET  READ_WRITE 
GO
