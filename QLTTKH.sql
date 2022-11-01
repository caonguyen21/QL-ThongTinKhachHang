USE [master]
GO
/****** Object:  Database [DoAnQLKH]    Script Date: 11/2/2021 6:18:13 PM ******/
CREATE DATABASE [DoAnQLKH]
 Go
USE [DoAnQLKH]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/2/2021 6:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] NOT NULL,
	[NgayMua] [datetime] NULL,
	[TongTien] [decimal](18, 0) NULL,
	[MaKH] [nchar](10) NULL,
	[MaNV] [nchar](10) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/2/2021 6:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nchar](10) NOT NULL,
	[TenKH] [nvarchar](500) NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](500) NULL,
	[SDT] [int] NULL,
	[Email] [nvarchar](500) NULL,
	[TaiKhoan] [nvarchar](500) NULL,
	[MatKhau] [nvarchar](500) NULL,
 CONSTRAINT [PK_Khach] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/2/2021 6:18:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nchar](10) NOT NULL,
	[TenNV] [nvarchar](500) NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](500) NULL,
	[SDT] [int] NULL,
	[Email] [nvarchar](500) NULL,
	[TaiKhoan] [nvarchar](500) NULL,
	[MatKhau] [nvarchar](500) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TongTien], [MaKH], [MaNV]) VALUES (1, CAST(N'2021-10-30T00:00:00.000' AS DateTime), CAST(10000000 AS Decimal(18, 0)), N'KH1       ', N'191106    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TongTien], [MaKH], [MaNV]) VALUES (2, CAST(N'2021-09-09T00:00:00.000' AS DateTime), CAST(50000000 AS Decimal(18, 0)), N'KH1       ', N'191106    ')
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayMua], [TongTien], [MaKH], [MaNV]) VALUES (3, CAST(N'2019-08-08T00:00:00.000' AS DateTime), CAST(1000000 AS Decimal(18, 0)), N'KH2       ', N'191108    ')
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [DiaChi], [SDT], [Email], [TaiKhoan], [MatKhau]) VALUES (N'KH1       ', N'Tạ Thiên Ca', CAST(N'2000-05-05T00:00:00.000' AS DateTime), N'Hồ Chí Minh', 908369268, N'CaCa@gmail.com', N'CaCa', N'CaCa')
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [DiaChi], [SDT], [Email], [TaiKhoan], [MatKhau]) VALUES (N'KH2       ', N'Như', CAST(N'2005-10-29T00:00:00.000' AS DateTime), N'Cao Lãnh', 987635241, N'Nhu@gmail.com', N'Nhu', N'Nhu')
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [DiaChi], [SDT], [Email], [TaiKhoan], [MatKhau]) VALUES (N'KH3       ', N'Lữ Thư', CAST(N'2001-10-29T00:00:00.000' AS DateTime), N'Ninh Thuận', 987654123, N'Thu@gmail.com', N'ThuThu', N'ThuThu')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [Email], [TaiKhoan], [MatKhau]) VALUES (N'191106    ', N'admin', CAST(N'2000-10-10T00:00:00.000' AS DateTime), N'Cao Lãnh', 972900903, N'admin@gmail.com', N'admin', N'admin')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [Email], [TaiKhoan], [MatKhau]) VALUES (N'191107    ', N'admin2', CAST(N'2001-05-05T00:00:00.000' AS DateTime), N'Hồ Chí Minh', 708987654, N'admin2@gmail.com', N'admin2', N'admin2')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [DiaChi], [SDT], [Email], [TaiKhoan], [MatKhau]) VALUES (N'191108    ', N'admin3', CAST(N'2001-05-05T00:00:00.000' AS DateTime), N'Hồ Chí Minh', 708987245, N'admin2@gmail.com', N'admin3', N'admin3')
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [DoAnQLKH] SET  READ_WRITE 
GO
