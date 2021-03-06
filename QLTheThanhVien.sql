/****** Object:  Table [dbo].[LoaiThe]    Script Date: 12/26/2016 18:44:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThe](
	[MaLoaiThe] [nvarchar](10) NOT NULL,
	[TenLoaiThe] [nvarchar](20) NULL,
	[DoanhThuTieuChuan] [real] NULL,
 CONSTRAINT [PK_LoaiThe] PRIMARY KEY CLUSTERED 
(
	[MaLoaiThe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LoaiThe] ([MaLoaiThe], [TenLoaiThe], [DoanhThuTieuChuan]) VALUES (N'FBGHD', NULL, NULL)
INSERT [dbo].[LoaiThe] ([MaLoaiThe], [TenLoaiThe], [DoanhThuTieuChuan]) VALUES (N'LT0001', N'Đồng', 0)
INSERT [dbo].[LoaiThe] ([MaLoaiThe], [TenLoaiThe], [DoanhThuTieuChuan]) VALUES (N'LT0002', N'Bạc', 5000)
INSERT [dbo].[LoaiThe] ([MaLoaiThe], [TenLoaiThe], [DoanhThuTieuChuan]) VALUES (N'LT0003', N'Vàng', 10000)
INSERT [dbo].[LoaiThe] ([MaLoaiThe], [TenLoaiThe], [DoanhThuTieuChuan]) VALUES (N'LT0004', N'Kim Cương', 15000)
/****** Object:  Table [dbo].[DichVu]    Script Date: 12/26/2016 18:44:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDV] [nvarchar](10) NOT NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[MoTa] [nvarchar](50) NULL,
	[PhanTramGiamGia] [int] NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DichVu] ([MaDV], [NgayBatDau], [NgayKetThuc], [MoTa], [PhanTramGiamGia]) VALUES (N'DV0001', CAST(0x00009B8400000000 AS DateTime), CAST(0x00009B8C00000000 AS DateTime), NULL, NULL)
INSERT [dbo].[DichVu] ([MaDV], [NgayBatDau], [NgayKetThuc], [MoTa], [PhanTramGiamGia]) VALUES (N'DV0002', CAST(0x00009E5E00000000 AS DateTime), CAST(0x0000A02E00000000 AS DateTime), NULL, NULL)
INSERT [dbo].[DichVu] ([MaDV], [NgayBatDau], [NgayKetThuc], [MoTa], [PhanTramGiamGia]) VALUES (N'DV0003', CAST(0x00009B8400000000 AS DateTime), CAST(0x00009B8C00000000 AS DateTime), NULL, NULL)
INSERT [dbo].[DichVu] ([MaDV], [NgayBatDau], [NgayKetThuc], [MoTa], [PhanTramGiamGia]) VALUES (N'DV0004', CAST(0x00009FCB00000000 AS DateTime), CAST(0x0000A00F00000000 AS DateTime), NULL, NULL)
INSERT [dbo].[DichVu] ([MaDV], [NgayBatDau], [NgayKetThuc], [MoTa], [PhanTramGiamGia]) VALUES (N'DV0005', CAST(0x00009FEA00000000 AS DateTime), CAST(0x00009BDB00000000 AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[TheTV]    Script Date: 12/26/2016 18:44:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheTV](
	[MaThe] [nvarchar](10) NOT NULL,
	[MaLoaiThe] [nvarchar](10) NULL,
 CONSTRAINT [PK_TheTV] PRIMARY KEY CLUSTERED 
(
	[MaThe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TheTV] ([MaThe], [MaLoaiThe]) VALUES (N'MT0001', N'LT0001')
INSERT [dbo].[TheTV] ([MaThe], [MaLoaiThe]) VALUES (N'MT0002', N'LT0002')
INSERT [dbo].[TheTV] ([MaThe], [MaLoaiThe]) VALUES (N'MT0003', N'LT0003')
INSERT [dbo].[TheTV] ([MaThe], [MaLoaiThe]) VALUES (N'MT0004', N'LT0004')
INSERT [dbo].[TheTV] ([MaThe], [MaLoaiThe]) VALUES (N'MT0005', N'LT0003')
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/26/2016 18:44:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](10) NOT NULL,
	[HoKH] [nvarchar](10) NULL,
	[Ten] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](10) NULL,
	[DienThoai] [nvarchar](12) NULL,
	[CMND] [nvarchar](10) NULL,
	[DiemTichLuy] [int] NULL,
	[MaThe] [nvarchar](10) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [Ten], [DiaChi], [DienThoai], [CMND], [DiemTichLuy], [MaThe]) VALUES (N'KH0001', N'Lê Dũng', N'Nguyễn', N'321 Lê Lợi', N'6987456', N'123466', 13, N'MT0001')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [Ten], [DiaChi], [DienThoai], [CMND], [DiemTichLuy], [MaThe]) VALUES (N'KH0002', N'Nguyễn Thu', N'Hồng', N'987 Lê Lợi', N'9874561', N'345679', 6, N'MT0002')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [Ten], [DiaChi], [DienThoai], [CMND], [DiemTichLuy], [MaThe]) VALUES (N'KH0003', N'Trần Văn', N'Thanh', N'Tân Bình', N'123456', N'3545769', 9, N'MT0003')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [Ten], [DiaChi], [DienThoai], [CMND], [DiemTichLuy], [MaThe]) VALUES (N'KH0004', N'Trần Văn', N'Thành', N'Tân Bình', N'12345', N'465879', 3, N'MT0004')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [Ten], [DiaChi], [DienThoai], [CMND], [DiemTichLuy], [MaThe]) VALUES (N'KH0005', N'Dương', N'Minh', N'Gò Vấp', N'435657', N'34676', 39, N'MT0005')
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/26/2016 18:44:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](10) NOT NULL,
	[MaKH] [nvarchar](10) NULL,
	[ThanhTien] [real] NULL,
	[NgayLapHD] [datetime] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [ThanhTien], [NgayLapHD]) VALUES (N'HD0001', N'KH0001', 250000, CAST(0x00009FE500CDFE60 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [ThanhTien], [NgayLapHD]) VALUES (N'HD0002', N'KH0002', 300000, CAST(0x00009FEA00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [ThanhTien], [NgayLapHD]) VALUES (N'HD0003', N'KH0003', 300000, CAST(0x00009FEA00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [ThanhTien], [NgayLapHD]) VALUES (N'HD0004', N'KH0004', 55000, CAST(0x00009FE900000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [ThanhTien], [NgayLapHD]) VALUES (N'HD0005', N'KH0005', 250000, CAST(0x00009FDF00000000 AS DateTime))
/****** Object:  Table [dbo].[TichDiem]    Script Date: 12/26/2016 18:44:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TichDiem](
	[MaDV] [nvarchar](10) NOT NULL,
	[MaHD] [nvarchar](10) NOT NULL,
	[MaThe] [nvarchar](10) NOT NULL,
	[DiemTichLuy] [int] NULL,
 CONSTRAINT [PK_TichDiem] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC,
	[MaHD] ASC,
	[MaThe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TichDiem] ([MaDV], [MaHD], [MaThe], [DiemTichLuy]) VALUES (N'DV0001', N'HD0001', N'MT0001', 13)
INSERT [dbo].[TichDiem] ([MaDV], [MaHD], [MaThe], [DiemTichLuy]) VALUES (N'DV0002', N'HD0002', N'MT0002', 6)
INSERT [dbo].[TichDiem] ([MaDV], [MaHD], [MaThe], [DiemTichLuy]) VALUES (N'DV0003', N'HD0003', N'MT0003', 9)
/****** Object:  ForeignKey [FK_TheTV_LoaiThe]    Script Date: 12/26/2016 18:44:31 ******/
ALTER TABLE [dbo].[TheTV]  WITH CHECK ADD  CONSTRAINT [FK_TheTV_LoaiThe] FOREIGN KEY([MaLoaiThe])
REFERENCES [dbo].[LoaiThe] ([MaLoaiThe])
GO
ALTER TABLE [dbo].[TheTV] CHECK CONSTRAINT [FK_TheTV_LoaiThe]
GO
/****** Object:  ForeignKey [FK_KhachHang_TheTV]    Script Date: 12/26/2016 18:44:31 ******/
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_TheTV] FOREIGN KEY([MaThe])
REFERENCES [dbo].[TheTV] ([MaThe])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_TheTV]
GO
/****** Object:  ForeignKey [FK_HoaDon_KhachHang]    Script Date: 12/26/2016 18:44:31 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
/****** Object:  ForeignKey [FK_TichDiem_DichVu]    Script Date: 12/26/2016 18:44:31 ******/
ALTER TABLE [dbo].[TichDiem]  WITH CHECK ADD  CONSTRAINT [FK_TichDiem_DichVu] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DichVu] ([MaDV])
GO
ALTER TABLE [dbo].[TichDiem] CHECK CONSTRAINT [FK_TichDiem_DichVu]
GO
/****** Object:  ForeignKey [FK_TichDiem_HoaDon]    Script Date: 12/26/2016 18:44:31 ******/
ALTER TABLE [dbo].[TichDiem]  WITH CHECK ADD  CONSTRAINT [FK_TichDiem_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[TichDiem] CHECK CONSTRAINT [FK_TichDiem_HoaDon]
GO
/****** Object:  ForeignKey [FK_TichDiem_TheTV]    Script Date: 12/26/2016 18:44:31 ******/
ALTER TABLE [dbo].[TichDiem]  WITH CHECK ADD  CONSTRAINT [FK_TichDiem_TheTV] FOREIGN KEY([MaThe])
REFERENCES [dbo].[TheTV] ([MaThe])
GO
ALTER TABLE [dbo].[TichDiem] CHECK CONSTRAINT [FK_TichDiem_TheTV]
GO
