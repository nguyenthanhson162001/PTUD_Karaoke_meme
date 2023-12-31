USE [KaraokeMeMe]
GO
/****** Object:  Table [dbo].[ChiTietDichVu]    Script Date: 11/12/2021 1:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDichVu](
	[soLuong] [int] NOT NULL,
	[maHD] [varchar](10) NOT NULL,
	[maDV] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD] ASC,
	[maDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 11/12/2021 1:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[maHD] [varchar](10) NOT NULL,
	[maPhong] [varchar](10) NOT NULL,
	[thoiLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD] ASC,
	[maPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaChi]    Script Date: 11/12/2021 1:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChi](
	[maDC] [varchar](10) NOT NULL,
	[phuongXa] [nvarchar](max) NULL,
	[quanHuyen] [nvarchar](max) NULL,
	[tinhTP] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[maDC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 11/12/2021 1:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[maDV] [varchar](10) NOT NULL,
	[donGia] [float] NULL,
	[donViTinh] [nvarchar](50) NULL,
	[ngayHetHan] [datetime2](7) NULL,
	[ngayNhap] [datetime2](7) NULL,
	[soLuong] [int] NOT NULL,
	[tenDichVu] [nvarchar](max) NULL,
	[trangThaiDichVu] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/12/2021 1:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHD] [varchar](10) NOT NULL,
	[chietKhau] [float] NOT NULL,
	[gioKetThuc] [datetime2](7) NULL,
	[gioNhanPhong] [datetime2](7) NULL,
	[ngayLap] [datetime2](7) NULL,
	[thue] [float] NOT NULL,
	[tienKhachTra] [float] NOT NULL,
	[maKH] [varchar](10) NULL,
	[maMGG] [varchar](10) NULL,
	[maNV] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/12/2021 1:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKH] [varchar](10) NOT NULL,
	[gioiTinh] [bit] NOT NULL,
	[hoTen] [nvarchar](max) NULL,
	[ngaySinh] [datetime2](7) NULL,
	[soDienThoai] [varchar](11) NULL,
	[maDC] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiNhanVien]    Script Date: 11/12/2021 1:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNhanVien](
	[maLNV] [varchar](10) NOT NULL,
	[tenLNV] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 11/12/2021 1:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[maLP] [varchar](10) NOT NULL,
	[giaTien] [float] NOT NULL,
	[tenLoaiPhong] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaGiamGia]    Script Date: 11/12/2021 1:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaGiamGia](
	[maMGG] [varchar](10) NOT NULL,
	[chietKhau] [float] NOT NULL,
	[daSuDung] [int] NOT NULL,
	[ngayBatDau] [datetime2](7) NULL,
	[ngayHetHan] [datetime2](7) NULL,
	[tenMaGiamGia] [nvarchar](max) NULL,
	[tongSoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maMGG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/12/2021 1:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNV] [varchar](10) NOT NULL,
	[gioiTinh] [varchar](255) NULL,
	[hoTen] [varchar](255) NULL,
	[ngaySinh] [nvarchar](max) NULL,
	[password] [varchar](255) NULL,
	[soCMND] [varchar](11) NULL,
	[soDienThoai] [varchar](11) NULL,
	[trangThaiLamViec] [bit] NOT NULL,
	[maDC] [varchar](10) NULL,
	[maLNV] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatPhong]    Script Date: 11/12/2021 1:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatPhong](
	[maPDP] [varchar](10) NOT NULL,
	[thoiGianDangKyDatPhong] [datetime2](7) NULL,
	[thoiGianNhanPhong] [datetime2](7) NULL,
	[tinhTrang] [bit] NOT NULL,
	[maKH] [varchar](10) NULL,
	[maNV] [varchar](10) NULL,
	[maPhong] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[maPDP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 11/12/2021 1:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[maPhong] [varchar](10) NOT NULL,
	[soNguoi] [int] NOT NULL,
	[tenPhong] [varchar](max) NULL,
	[tinhTrangPhong] [bit] NOT NULL,
	[maLP] [varchar](10) NULL,
	[maTTP] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThaiPhong]    Script Date: 11/12/2021 1:41:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiPhong](
	[maTTP] [varchar](10) NOT NULL,
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
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK9lby084ku5vb781tt5boy5mev] FOREIGN KEY([maMGG])
REFERENCES [dbo].[MaGiamGia] ([maMGG])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK9lby084ku5vb781tt5boy5mev]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FKg1ebuq3tydt58wb4gutehmh9w] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FKg1ebuq3tydt58wb4gutehmh9w]
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
