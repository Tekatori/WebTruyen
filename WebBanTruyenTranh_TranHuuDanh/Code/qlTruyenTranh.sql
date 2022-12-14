USE [master]
GO
/****** Object:  Database [qlBanTruyen]    Script Date: 25/04/2022 8:55:32 PM ******/
CREATE DATABASE [qlBanTruyen]
Go
ALTER DATABASE [qlBanTruyen] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlBanTruyen].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlBanTruyen] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlBanTruyen] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlBanTruyen] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlBanTruyen] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlBanTruyen] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlBanTruyen] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [qlBanTruyen] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [qlBanTruyen] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlBanTruyen] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlBanTruyen] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlBanTruyen] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlBanTruyen] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlBanTruyen] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlBanTruyen] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlBanTruyen] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlBanTruyen] SET  ENABLE_BROKER 
GO
ALTER DATABASE [qlBanTruyen] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlBanTruyen] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlBanTruyen] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlBanTruyen] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlBanTruyen] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlBanTruyen] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlBanTruyen] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlBanTruyen] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qlBanTruyen] SET  MULTI_USER 
GO
ALTER DATABASE [qlBanTruyen] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlBanTruyen] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlBanTruyen] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlBanTruyen] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [qlBanTruyen]
GO
/****** Object:  Table [dbo].[ChiTietMatHang]    Script Date: 25/04/2022 8:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietMatHang](
	[MaCTSP] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [nchar](10) NULL,
	[TenSP] [nvarchar](50) NULL,
	[Tags] [nvarchar](50) NULL,
	[DonGia] [int] NULL,
	[DVT] [nvarchar](50) NULL,
	[CTImageSP] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTHD]    Script Date: 25/04/2022 8:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[MaHD] [int] NOT NULL,
	[MaSP] [nchar](10) NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTKhachHang]    Script Date: 25/04/2022 8:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTKhachHang](
	[MaCTKH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[TenKH] [nchar](50) NULL,
	[SDT] [nchar](10) NULL,
	[Diachi] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[CMND] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCTKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 25/04/2022 8:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayDat] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nchar](10) NULL,
	[NgayGiao] [date] NULL,
	[NgayThanhToan] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 25/04/2022 8:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nchar](50) NULL,
	[Pass] [nchar](50) NULL,
	[SDT] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 25/04/2022 8:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nchar](10) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[GiaTien] [int] NULL,
	[Tags] [nvarchar](50) NULL,
	[MoTa] [nvarchar](500) NULL,
	[ImageSP] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietMatHang] ON 

INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (1, N'SP01      ', N'KHÔ CỐT HIỆP SĨ
', N'Action', 45000, N'Truyện', N'KhoCotHiepSi_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (2, N'SP02      ', N'MY DEATH FLAGS SHOW NO SIGN OF ENDING.
', N'Action', 78000, N'Truyện', N'MyDeathFlagSignOfEnding_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (3, N'SP03      ', N'THIÊN PHÚ CỦA NGƯƠI, GIỜ LÀ CỦA TA
', N'Action', 62000, N'Truyện', N'ThienPhuCuaNguoiGioLaCuaTa_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (4, N'SP04      ', N'SỰ TRỞ LẠI CỦA ĐỆ NHẤT TÔNG SƯ
', N'Action', 55000, N'Truyện', N'SuTroLaiCuaDeNhatTongSu_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (5, N'SP05      ', N'TU TIÊN TRỞ VỀ TẠI VƯỜN TRƯỜNG', N'Action', 35000, N'Truyện', N'TuTienTroVeTaiVuonTruong_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (6, N'SP06      ', N'PHONG KHỞI THƯƠNG LAM', N'Action', 34000, N'Truyện', N'PhongKhoiThuongLam_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (7, N'SP07      ', N'WISTORIA BẢN HÙNG CA KIẾM VÀ PHÁP TRƯỢNG
', N'Action', 21000, N'Truyện', N'WistoriaBanHungCaKiemVaPhapTruong_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (8, N'SP08      ', N'BÁCH LUYỆN THÀNH THẦN
', N'Action', 44000, N'Truyện', N'BachLuyenThanhThan_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (9, N'SP09      ', N'ÁNH SÁNG CUỐI CON ĐƯỜNG
', N'Action', 78000, N'Truyện', N'AnhSangCuoiConDuong_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (10, N'SP10      ', N'NGƯỜI CHƠI TRỞ VỀ TỪ ĐỊA NGỤC
', N'Action', 52000, N'Truyện', N'NguoiChoiTroVeTuDiaNguc_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (11, N'SP11      ', N'THỢ RÈN HUYỀN THOẠI
', N'Action', 45000, N'Truyện', N'ThoRenHuyenThoai_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (12, N'SP12      ', N'TOÀN TRÍ ĐỘC GIẢ', N'Action', 78000, N'Truyện', N'ToanTriDocGia_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (13, N'SP13      ', N'THỢ SĂN KỲ ẢO
', N'Action', 62000, N'Truyện', N'ThoSanKyAo_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (14, N'SP14      ', N'NHIỆM VỤ ĐỜI THẬT
', N'Action', 55000, N'Truyện', N'NhiemVuDoiThat_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (15, N'SP15      ', N'LEVEL 1 PLAYER
', N'Action', 35000, N'Truyện', N'LvL1Player_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (16, N'SP16      ', N'TÔI THĂNG CẤP TRONG LÚC NGỦ
', N'Action', 34000, N'Truyện', N'ToiThangCapTrongLucNgu_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (17, N'SP17      ', N'BẮT ĐẦU LÀM SUPER GOD BẰNG VIỆC DẠY DỖ 6 TỶ TỶ
', N'Action', 21000, N'Truyện', N'BatDauLamSuperGodBangViecDayDo6TyTy_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (18, N'SP18      ', N'BÁC SĨ TRỞ LẠI
', N'Action', 44000, N'Truyện', N'BacSiTroLai_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (19, N'SP19      ', N'ÁM HÀNH NGỰ SỬ
', N'Action', 78000, N'Truyện', N'AmHanhNguSu_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (20, N'SP20      ', N'NGUYÊN TÔN
', N'Action', 52000, N'Truyện', N'NguyenTon_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (21, N'SP21      ', N'THẦN VÕ THIÊN TÔN
', N'Adventure', 45000, N'Truyện', N'ThanVoThienTon_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (22, N'SP22      ', N'BẠN GÁI ZOMBIE CỦA TÔI
', N'Adventure', 67000, N'Truyện', N'BanGaiZombieCuaToi_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (23, N'SP23      ', N'PHÀM NHÂN TU TIÊN
', N'Adventure', 55000, N'Truyện', N'PhamNhanTuTien_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (24, N'SP24      ', N'LINH KIẾM TÔN
', N'Adventure', 25000, N'Truyện', N'LinhKiemTon_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (25, N'SP25      ', N'NGƯỜI NÂNG CẤP
', N'Adventure', 86000, N'Truyện', N'NguoiNangCap_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (26, N'SP26      ', N'ĐẠI LÃO NÀO CŨNG TRANH SỦNG TA
', N'Adventure', 63000, N'Truyện', N'DaiLaoNaoCungTranhSungTa_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (27, N'SP27      ', N'ĐỆ TỬ CỦA TA ĐỀU LÀ SÚP BỜ THẦN
', N'Adventure', 34000, N'Truyện', N'DeTuCuaTaDeuLaSupBoThan_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (28, N'SP28      ', N'TOÀN CHỨC PHÁP SƯ
', N'Adventure', 74000, N'Truyện', N'ToanChuPhapSu_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (29, N'SP29      ', N'VỢ TÔI LÀ QUỶ VƯƠNG
', N'Adventure', 68000, N'Truyện', N'VoToiLaQuyVuong_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (30, N'SP30      ', N'MA VƯƠNG THẤT NGHIỆP
', N'Adventure', 45000, N'Truyện', N'MaVuongThatNghiep_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (31, N'SP31      ', N'ISEKAI CHEAT SURVIVAL MESHI
', N'Adventure', 69900, N'Truyện', N'IsekaiCheatSurvivalMeshi_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (32, N'SP32      ', N'THIÊN VÕ CHIẾN THẦN
', N'Adventure', 72000, N'Truyện', N'ThienVoChienThan_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (33, N'SP33      ', N'THIÊN TÀI MA PHÁP SƯ GIẤU NGHỀ
', N'Adventure', 29000, N'Truyện', N'ThienTaiMaPhapSuGiauNghe_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (34, N'SP34      ', N'TRỞ LẠI THỜI KÌ ĐỒ ĐÁ
', N'Adventure', 59900, N'Truyện', N'TroLaiThoiKyDoDa_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (35, N'SP35      ', N'SỰ TRỞ LẠI CỦA NGƯỜI CHƠI CẤP CAO NHẤT
', N'Adventure', 135900, N'Truyện', N'SuTroLaiCuaNguoiChoiCapCaoNhat_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (36, N'SP36      ', N'GIRL AND SCIENCE
', N'Adventure', 219000, N'Truyện', N'GirlAndScience_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (37, N'SP37      ', N'ĐỒNG VỌNG DÂN GIAN
', N'Adventure', 149000, N'Truyện', N'DongVongDanGian_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (38, N'SP38      ', N'THĂNG CẤP CÙNG THẦN
', N'Adventure', 52000, N'Truyện', N'ThangCapCungThan_01.png')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (39, N'SP39      ', N'KÍ SỰ HỒI QUY
', N'Adventure', 34000, N'Truyện', N'KiSuHoiQuy_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (40, N'SP40      ', N'ĐỨA CON THẦN CHẾT
', N'Adventure', 83900, N'Truyện', N'DuaConThanChet_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (41, N'SP41      ', N'ĐỘC BỘ TIÊU DAO
', N'Mystery', 100000, N'Truyện', N'DocBoTieuDao_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (42, N'SP42      ', N'LẠN KHA KỲ DUYÊN
', N'Mystery', 102000, N'Truyện', N'LanKhaKyDuyen_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (43, N'SP43      ', N'TRỌNG SINH SAU TÁM VẠN NĂM
', N'Mystery', 98700, N'Truyện', N'TrongSinhSauTamVanNam_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (44, N'SP44      ', N'CHÂN VÕ THẾ GIỚI
', N'Mystery', 72900, N'Truyện', N'ChanVoTheGioi_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (45, N'SP45      ', N'THÚ THỤ BẤT THÂN
', N'Mystery', 69900, N'Truyện', N'ThuThuBatThan_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (46, N'SP46      ', N'MR. BLUE
', N'Mystery', 55000, N'Truyện', N'Mr.Blue_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (47, N'SP47      ', N'VĨNH SINH
', N'Mystery', 18490, N'Truyện', N'VinhSinh_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (48, N'SP48      ', N'TIẾN VÀO MA GIỚI RỒI IRUMA-KUN', N'Mystery', 34000, N'Truyện', N'TienVaoMaGioiRoiIruma-Kun_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (49, N'SP49      ', N'SỦNG MỊ
', N'Mystery', 84000, N'Truyện', N'SungMi_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (50, N'SP50      ', N'NHÂN VẬT CHÍNH MẠNH NHẤT LỊCH SỬ
', N'Mystery', 2500000, N'Truyện', N'NhanVatChinhManhNhatLichSu_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (51, N'SP51      ', N'ĐẤU PHÁ THƯƠNG KHUNG
', N'Mystery', 30000, N'Truyện', N'DauPhaThuongKhung_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (52, N'SP52      ', N'NIHONKOKU SHOUKAN
', N'Mystery', 44000, N'Truyện', N'NihonkonkuShoukan_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (53, N'SP53      ', N'THẾ THÂN THIẾU GIA KHÔNG DỄ CHỌC
', N'Mystery', 36000, N'Truyện', N'TheThanThieuGiaKhongDeChoc_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (54, N'SP54      ', N'TA CÓ THỂ RÚT RA THUỘC TÍNH
', N'Mystery', 50000, N'Truyện', N'TaCoTheRutRaThuocTinh_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (55, N'SP55      ', N'CÔNG TỬ THỰC SỰ QUÁ CHÍNH NGHĨA
', N'Mystery', 78000, N'Truyện', N'CongTuThucSuQuaChinhNghia_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (56, N'SP56      ', N'KIẾM NGHỊCH THƯƠNG KHUNG
', N'Mystery', 42000, N'Truyện', N'KiemNghichThuongKhung_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (57, N'SP57      ', N'ĐẾ BÁ
', N'Mystery', 89000, N'Truyện', N'DeBa_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (58, N'SP58      ', N'CON TRAI ÚT HUYỀN THOẠI NHÀ HẦU TƯỚC
', N'Mystery', 120000, N'Truyện', N'ConTraiUtHuyenThoaiNhaHauTuoc_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (59, N'SP59      ', N'TỐI CƯỜNG THĂNG CẤP
', N'Mystery', 100000, N'Truyện', N'ToiCuongThangCap_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (60, N'SP60      ', N'ĐÔ THỊ CHI NGHỊCH THIÊN TIÊN TÔN
', N'Mystery', 41000, N'Truyện', N'DoThiChiNghichThienTienTon_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (61, N'SP61      ', N'HÒN ĐẢO NỔI TRÊN VŨNG NƯỚC BÙN
', N'Trinh thám', 36000, N'Truyện', N'HonDaoNoiTrenVungNuocBun_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (62, N'SP62      ', N'SUMMER TIME RENDER
', N'Trinh thám', 50000, N'Truyện', N'SummerTimeRender_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (63, N'SP63      ', N'THÁM TỬ CONAN
', N'Trinh thám', 45000, N'Truyện', N'ThamTuConan_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (64, N'SP64      ', N'YUKOKU NO MORIARTY
', N'Trinh thám', 60000, N'Truyện', N'YukokuNoMoriaty_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (65, N'SP65      ', N'GIẤY BÁO TỬ
', N'Trinh thám', 52000, N'Truyện', N'GiayBaoTu_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (66, N'SP66      ', N'SHAMAN - PHÁP SƯ
', N'Trinh thám', 24000, N'Truyện', N'ShamanPhapSu_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (67, N'SP67      ', N'MAJIN TANTEI NOUGAMI NEURO
', N'Trinh thám', 30000, N'Truyện', N'MajinTanteiNougamiNeuro_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (68, N'SP68      ', N'LIAR X LIAR
', N'Trinh thám', 25000, N'Truyện', N'LiarXLiar_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (69, N'SP69      ', N'VẠN ÁC BẤT XÁ
', N'Trinh thám', 40000, N'Truyện', N'VanAcBatXa_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (70, N'SP70      ', N'THE LAST MALE - NGƯỜI ĐÀN ÔNG CUỐI CÙNG
', N'Trinh thám', 35000, N'Truyện', N'TheLastMale_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (71, N'SP71      ', N'BẠO LỰC TRUNG ĐỘC
', N'Trinh thám', 56000, N'Truyện', N'BaoLucTrungDoc_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (72, N'SP72      ', N'ĐỔ THẦN
', N'Trinh thám', 50000, N'Truyện', N'DoThan_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (73, N'SP73      ', N'MỘ THÀNH NGỤY SỰ
', N'Trinh thám', 80000, N'Truyện', N'MoThanhNguySu_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (74, N'SP74      ', N'KHI THÁM TỬ CÒN ĐÁNG SỢ HƠN CẢ TỘI PHẠM
', N'Trinh thám', 45000, N'Truyện', N'KhiThamTuConDangSoHonCaToiPham_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (75, N'SP75      ', N'SEIJA NO KOUSHIN REVENGE', N'Trinh thám', 30000, N'Truyện', N'SeijaNoKouShinRevenge_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (76, N'SP76      ', N'TRONG BÓNG TỐI
', N'Trinh thám', 60000, N'Truyện', N'TrongBongToi_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (77, N'SP77      ', N'KẸO BÔNG GÒN VÀ MỘNG GIỮA BAN NGÀY
', N'Trinh thám', 55000, N'Truyện', N'KeoBongGonVaMongGiuaBanNgay_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (78, N'SP78      ', N'VUA ĂN PHÁ ÁN
', N'Trinh thám', 32000, N'Truyện', N'VuaAnPhaAn_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (79, N'SP79      ', N'SONG SINH LINH THÁM
', N'Trinh thám', 53000, N'Truyện', N'SongSinhLinhTham_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (80, N'SP80      ', N'HỢP ĐỒNG TỰ TỬ
', N'Trinh thám', 40000, N'Truyện', N'HopDongTuTu_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (81, N'SP81      ', N'NGÀY NÀO THIẾU SOÁI CŨNG GHEN
', N'Xuyên không', 70000, N'Truyện', N'NgayNaoThieuSoaiCungGhen_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (82, N'SP82      ', N'BẢO BỐI CỦA LÃO ĐẠI ĐÃ XUYÊN KHÔNG TRỞ VỀ!
', N'Xuyên không', 50000, N'Truyện', N'BaoBoiCuaLaoDaiDaXuyenKhongTroVe_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (83, N'SP83      ', N'SINH RA LÀM CON GÁI ÁC NỮ
', N'Xuyên không', 41000, N'Truyện', N'SinhRaLamConGaiAcNu_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (84, N'SP84      ', N'VÔ ĐỊCH TỪ CƯỠNG HÔN MA NỮ
', N'Xuyên không', 35000, N'Truyện', N'VoDichTuCuongHonMaNu_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (85, N'SP85      ', N'QUÝ PHI LÚC NÀO CŨNG MUỐN ĐƯỢC LƯỜI BIẾNG
', N'Xuyên không', 84000, N'Truyện', N'QuyPhiLucNaoCungMuonDuocLuoiBieng_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (86, N'SP86      ', N'NGUYÊN LONG
', N'Xuyên không', 50000, N'Truyện', N'NguyenLong_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (87, N'SP87      ', N'KẾ HOẠCH TỰ CỨU CỦA PHẢN PHÁI MA NỮ
', N'Xuyên không', 51000, N'Truyện', N'KeHoachTuCuuCuaPhanPhaiMaNu_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (88, N'SP88      ', N'CÔNG CHÚA PHẢN DIỆN MUỐN Ở TRONG TIỆM BÁNH NGỌT
', N'Xuyên không', 43000, N'Truyện', N'CongChuaPhanDienMuonOTrongTiemBanhNgot_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (89, N'SP89      ', N'BÀ XÃ NHÀ TÔI ĐẾN TỪ NGÀN NĂM TRƯỚC
', N'Xuyên không', 57000, N'Truyện', N'BaXaNhaToiDenTuNganNamTruoc_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (90, N'SP90      ', N'HỆ THỐNG XUYÊN NHANH: ÁC NAM KHÔNG DỄ CHỌC
', N'Xuyên không', 90000, N'Truyện', N'HeThongXuyenNhanhAcMaKhongDeChoc_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (91, N'SP91      ', N'ÔM KHẨN TIỂU MÃ GIÁP CỦA TÔI
', N'Xuyên không', 150000, N'Truyện', N'OmKhanTieuMaGiapCuaToi_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (92, N'SP92      ', N'NHỮNG NHÂN VẬT MẠNH NHẤT THẾ GIỚI ÁM ẢNH TÔI
', N'Xuyên không', 33000, N'Truyện', N'NhungNhanVatManhMeNhatTheGioiAmAnhToi_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (93, N'SP93      ', N'CUỒNG MA TÁI THẾ
', N'Xuyên không', 50000, N'Truyện', N'CuongMaTaiThe_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (94, N'SP94      ', N'CON GÁI CHỒNG THẬT DỄ THƯƠNG
', N'Xuyên không', 39000, N'Truyện', N'ConGaiChongThatDeThuong_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (95, N'SP95      ', N'CHÂN VÕ THẾ GIỚI
', N'Xuyên không', 44000, N'Truyện', N'ChanVoTheGioi_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (96, N'SP96      ', N'KẺ SĂN ANH HÙNG
', N'Xuyên không', 65000, N'Truyện', N'KeSanAnhHung_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (97, N'SP97      ', N'KIỀU MỴ PHU LANG, TẠI TUYẾN LỤC TRÀ
', N'Xuyên không', 100000, N'Truyện', N'KieuMyPhuLangTaiLuyenLucTra_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (98, N'SP98      ', N'LƯNG DỰA NÚI LỚN ĐỨNG VỮNG C VỊ
', N'Xuyên không', 80000, N'Truyện', N'LungDuaNuiLonDungVungCVi_01.jpg')
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (99, N'SP99      ', N'TA VÔ ĐỊCH LÚC NÀO
', N'Xuyên không', 94000, N'Truyện', N'TaVoDichLucNao_01.jpg')
GO
INSERT [dbo].[ChiTietMatHang] ([MaCTSP], [MaSP], [TenSP], [Tags], [DonGia], [DVT], [CTImageSP]) VALUES (100, N'SP100     ', N'VẠN CỔ THẦN VƯƠNG
', N'Xuyên không', 45600, N'Truyện', N'VanCoThanVuong_01.jpg')
SET IDENTITY_INSERT [dbo].[ChiTietMatHang] OFF
SET IDENTITY_INSERT [dbo].[CTKhachHang] ON 

INSERT [dbo].[CTKhachHang] ([MaCTKH], [MaKH], [TenKH], [SDT], [Diachi], [Email], [NgaySinh], [GioiTinh], [CMND]) VALUES (2, 4, N'danh123                                           ', N'0914366522', N'Vũng Tàu', N'danhtran123@gmail.com', CAST(N'2001-11-23' AS Date), N'Nam', 1586)
INSERT [dbo].[CTKhachHang] ([MaCTKH], [MaKH], [TenKH], [SDT], [Diachi], [Email], [NgaySinh], [GioiTinh], [CMND]) VALUES (3, 5, N'tranhuudanh                                       ', N'0909665525', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CTKhachHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Pass], [SDT]) VALUES (4, N'danh123                                           ', N'123                                               ', N'0914366522')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Pass], [SDT]) VALUES (5, N'tranhuudanh                                       ', N'123                                               ', N'0909665525')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP01      ', N'KHÔ CỐT HIỆP SĨ
', 45000, N'Action', N'"Khiêm tốn! Chính trực! Lòng trắc ẩn! Dũng cảm! Công bằng! Đức hi sinh! Đáng kính! Trung thành!" Hắn là Lich nhưng cũng là hiệp sĩ. Hắn là Lich nhưng chọn phục vụ phe ánh sáng. "Không sợ hãi khi đối mặt với kẻ thù! Trung thành và ngay thẳng, sẵn sàng chiến đấu đến chết! Tại sao lại như vậy ư? Vì kẻ mạnh bảo vệ kẻ yếu là điều hiển nhiên!" 
Câu chuyện kể về một con mèo độc mồm độc miệng đồng hành cùng một tên Lich nguyện hiến dâng linh hồn và thể xác cho phe ánh sáng.', N'KhoCotHiepSi_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP02      ', N'MY DEATH FLAGS SHOW NO SIGN OF ENDING.
', 60000, N'Action', N'Hirasawa Kazuki, một sinh viên đại học có thể tìm thấy ở khắp mọi nơi, đột nhiên nhận ra mình đang ở trong thân thể của một nhân vật trong game. Thảm hơn nữa, nhân vật có tên Harold Stokes này là nhân vật có biệt danh [Chúa rác thải]. Bị hàng tấn Death Flag vây quanh như vậy liệu Kazuki có nhổ bay được chúng và tiến tới route sống sót không?', N'MyDeathFlagSignOfEnding_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP03      ', N'THIÊN PHÚ CỦA NGƯƠI, GIỜ LÀ CỦA TA
', 62000, N'Action', N'100 năm trước, thế giới bỗng dưng xuất hiện các vết nứt không gian, hung thú thứ nguyên thừa cơ hội đó đã xâm nhập và đe dọa tới an nguy của nhân loại. Diệp Thiên, một thanh niên bất tài mồ côi cha mẹ cùng em gái đùm bọc nhau sống qua ngày.', N'ThienPhuCuaNguoiGioLaCuaTa_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP04      ', N'SỰ TRỞ LẠI CỦA ĐỆ NHẤT TÔNG SƯ
', 55000, N'Action', N'Sự Trở Lại Của Đệ Nhất Tông Sư được cập nhật nhanh và đầy đủ nhất tại NetTruyen. Bạn đọc đừng quên để lại bình luận và chia sẻ, ủng hộ NetTruyen ra các chương mới nhất của truyện Sự Trở Lại Của Đệ Nhất Tông Sư.', N'SuTroLaiCuaDeNhatTongSu_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP05      ', N'TU TIÊN TRỞ VỀ TẠI VƯỜN TRƯỜNG', 35000, N'Action', N'Bị ám toán chết và trọng sinh về hiện đại đúng lúc...', N'TuTienTroVeTaiVuonTruong_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP06      ', N'PHONG KHỞI THƯƠNG LAM', 34000, N'Action', N'Tình hình là nàng ghiền game. Một hôm vô tình bị lạc vào thế giới Game, và đã gặp được chàng, cuộc sống ảo đen xen đời thực. Đâu là thực đâu là giả, thôi thì cứ yêu thôi … Một câu chuyện vừa hài hước vừa lãng mạn.', N'PhongKhoiThuongLam_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP07      ', N'WISTORIA BẢN HÙNG CA KIẾM VÀ PHÁP TRƯỢNG
', 21000, N'Action', N'Trong một thế giới tràn ngập những phép thuật nhiệm màu, cậu, một người dị biệt và cuộc hành trình của mình.

', N'WistoriaBanHungCaKiemVaPhapTruong_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP08      ', N'BÁCH LUYỆN THÀNH THẦN
', 44000, N'Action', N'Cảnh giới: Luyện nhục cảnh, Luyện cốt cảnh, Luyện tạng cảnh....
La Chính vì gái mà bị đày làm nô bộc. La Bái Nhiên tham vọng đầy mình :))
La Chính lại vì gái mà đâm đầu tu luyện :))
La Gia trong phủ nước sôi lửa bỏng, tranh giành kịch liệt...', N'BachLuyenThanhThan_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP09      ', N'ÁNH SÁNG CUỐI CON ĐƯỜNG
', 78000, N'Action', N'King Grey là người sở hữu tất cả trong một thế giới bị Võ thuật chi phối. Nhưng đi đôi với một sức mạnh to lớn lại là sự cô độc không hồi kết. Thế nên, mặc dù vẻ bên ngoài là một quốc vương mạnh mẽ, nhưng sâu trong thâm tâm lại là một kẻ yếu đuối không có ý chí. Nhưng sau đó lại được tái sinh trong một thế giới fantasy để làm lại một cuộc đời mới.', N'AnhSangCuoiConDuong_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP10      ', N'NGƯỜI CHƠI TRỞ VỀ TỪ ĐỊA NGỤC
', 52000, N'Action', N'Cuối cùng tôi cũng đã trở về từ Địa ngục sau hàng nghìn năm với mục đích bảo vệ nhân loại.

', N'NguoiChoiTroVeTuDiaNguc_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP100     ', N'VẠN CỔ THẦN VƯƠNG
', 45600, N'Xuyên không', N'Kiếp trước bởi vì Đế Tôn hãm hại mà bỏ mình, trùng sinh đến thời trung học, đúng lúc gặp linh khí khôi phục, thiên địa biến đổi lớn. Tái sinh thời niên thiếu, lại đi trên con đường tu hành, một thế này, hắn bảo vệ bằng hữu của mình, thân nhân, hắn đương không lưu tiếc nuối, hắn đương một đường quét ngang, hắn đương chư thiên vô địch, vạn cổ vi tôn!', N'VanCoThanVuong_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP11      ', N'THỢ RÈN HUYỀN THOẠI
', 45000, N'Action', N'Đây chính là câu chuyện về chuyến phiêu lưu của một chàng trai "vô tài, lắm tật" trên bước đường chinh phục những thành tựu của đời mình.
Và hơn thế nữa, đây cũng chính là hành trình của một cậu bé gắt gỏng bất mãn với đời, đứa trẻ ích kỷ chỉ biết nghĩ cho bản thân mình. Trở thành một người đàn ông biết lo lắng, thương yêu và tín nhiệm với mọi người xung quanh.', N'ThoRenHuyenThoai_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP12      ', N'TOÀN TRÍ ĐỘC GIẢ', 78000, N'Action', N'Chỉ mình tôi mới biết được kết cục của thế giới này.
Vào một ngày nọ, nhân vật chính của chúng ta bị kẹt trong thế giới của bộ tiểu thuyết mà anh ấy yêu thích. Anh ấy sẽ làm gì để sống sót? Khi mà thế giới đó là nơi ngập tràn tai ương và hiểm nguy.
Năng lực của anh ấy? Anh ấy biết mọi tình tiết của câu chuyện cho đến kết thúc. Bởi vì anh ấy là độc giả duy nhất của nó.', N'ToanTriDocGia_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP13      ', N'THỢ SĂN KỲ ẢO
', 62000, N'Action', N'Một xã hội trong đó một sinh vật được gọi là ''quái vật'' xuất hiện và đe dọa nhân loại. Gia đình của Choi Kang-sik mất mạng do một sự tồn tại của người ngoài hành tinh xuất hiện mà không hề báo trước. Choi Kang-sik sống với ước mơ trả thù cho gia đình, nhưng không có năng khiếu siêu năng lực.', N'ThoSanKyAo_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP14      ', N'NHIỆM VỤ ĐỜI THẬT
', 55000, N'Action', N'Ha Do Wan, một nam sinh trung học mê game nhưng lại cực kì yếu đuối, cậu dần trở thành mục tiêu của bọn bắt nạt và bị bọn chúng ép buộc phải cày game nâng cấp đồ cho chúng. Trong dịp lễ nghĩ xuân, với yêu cầu phải cày bằng được một thanh kiếm cấp huyền thoại trong một tựa game từ bọn bắt nạt, Ha Do Wan đã cày game liên tục tới mức phải ngã quỵ! Nhưng rồi cậu lại chợt tỉnh dậy cùng một bảng thông báo hệ thống và trở lại vào cái ngày mà mọi thứ bắt đầu.', N'NhiemVuDoiThat_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP15      ', N'LEVEL 1 PLAYER
', 35000, N'Action', N'Hyun-Sung phải làm việc vất vả ở công trình xây dựng để trả viện phí cho bố…. [Bạn đã thức tỉnh]. Phép màu mà cậu ấy chờ đợi bấy lâu nay cuối cùng đã xuất hiện. Có vẻ từ giờ mọi chuyện sẽ trở nên suôn sẻ, vì cậu ấy đã trở thành thức tỉnh giả… “Khoan đã, chẳng phải cấp của mình không gia tăng sao?”', N'LvL1Player_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP16      ', N'TÔI THĂNG CẤP TRONG LÚC NGỦ
', 34000, N'Action', N'“Chúng ta chỉ nghỉ giải lao trong khoảng 30 giây? Tôi không tưởng tượng mọi thứ, phải không? " "…Vâng." Sau 15 giờ săn bắn, Hyunsung yêu cầu được nghỉ ngơi một lúc, và sau 30 giây, anh ấy phải đứng dậy và bắt đầu đi săn. Thực ra, Hyunsung có một kỹ năng đặc biệt. [Kỹ năng ngủ quên của Thananos được kích hoạt.] [Bạn đang bị ép vào trạng thái ngủ.] Sau khi ngủ một lúc và thức dậy, tôi có một món đồ? Hãy chú ý đến câu chuyện về Đẳng cấp Thần, hậu duệ của Thananos, Hyunsung không thể ngăn cản.', N'ToiThangCapTrongLucNgu_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP17      ', N'BẮT ĐẦU LÀM SUPER GOD BẰNG VIỆC DẠY DỖ 6 TỶ TỶ
', 21000, N'Action', N'6 tỷ tỷ của diệp lạc tuyệt đại thiên kiêu. Chiến lực đại tỷ là hàng đầu, bá chủ của một phương. Tu vi của nhị tỷ xuất sắc, thần đế 1 đời. Tam tỷ có vô số thần thú, chủ của 1 tông. Tứ tỷ cải tử hoàn sinh, có tài nghệ cao. Trận pháp của ngũ tỷ thông thiên, không ai dám động đến. Lục tỷ… chờ đã! Còn có tiểu sư muội , con gái của kẻ phản diện  gửi gắm cả đời! Diệp lạc: ta khó lựa chọn quá đi, a ha ha ha !', N'BatDauLamSuperGodBangViecDayDo6TyTy_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP18      ', N'BÁC SĨ TRỞ LẠI
', 44000, N'Action', N'Kim Jinhyun là một bác sĩ phẫu thuật nghèo khó và lúc nào anh cũng cảm thấy mình là một thằng bất tài. Mọi điều trên thế giới đều chống lại anh cho đến khi anh gặp được bụt và bụt tặng cho anh một lần trọng sinh về quá khứ...', N'BacSiTroLai_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP19      ', N'ÁM HÀNH NGỰ SỬ
', 78000, N'Action', N'Ám Hành Ngự Sử xảy ra tại một vùng đất hư cấu ở Jushin, phỏng theo Triều Tiên thời phong kiến. Ở Jushin, đã từng có những đại diện bí mật của chính quyền được gọi là những ám hành ngự sử, những người cải trang đi du hành khắp đất nước. Họ được nhà vua giao nhiệm vụ tìm kiếm và trừng phạt những tên quan lại đồi bại, ăn hối lộ và mang lại công lí cho người dân.', N'AmHanhNguSu_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP20      ', N'NGUYÊN TÔN
', 52000, N'Action', N'Một tác phẩm mới của Thiên Tằm Thổ Đậu
Ta có một ngụm Huyền Hoàng Khí, có thể nuốt thiên địa nhật nguyệt tinh.
.........
Lúc đó đường về, đã là một con đường vận mệnh treo ngược.
Ngày xưa vinh hoa, như thay đổi khôn lường, một giấc ác mộng dài.
Thiếu niên chấp bút, Long Xà bay động.', N'NguyenTon_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP21      ', N'THẦN VÕ THIÊN TÔN
', 45000, N'Adventure', N'Hái hoa Phi Diệp, có thể trảm nhật nguyệt sơn hà; Vừa nghĩ, bên trên hái cửu thiên tinh thần, hạ trấn lục đạo Hoàng Tuyền; Lật tay chưởng càn khôn, lật tay che thiên địa! Đây là... Thế giới của võ giả! Thiếu niên trùng sinh, đạp biến Chư Thiên Vạn Giới, chiến tận các tộc anh kiệt.', N'ThanVoThienTon_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP22      ', N'BẠN GÁI ZOMBIE CỦA TÔI
', 67000, N'Adventure', N'Tận thế đên, dị năng của Lăng Mặc thức tính, cậu phát hiện bản than lại có thể điều khiển zoombie. Mặc Lăng lợi dụng khả năng của mình vượt qua làn sóng zoombie, cuối cùng cuxgn tìm được người bạn gái thân yêu Diếp luyến. Nhưng phát hiện cô ấy lại biến dị thành Zoombie. Vì giúp Diệp Luyến hồi phục thần trí, Lăng Mặc bước chân vào con', N'BanGaiZombieCuaToi_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP23      ', N'PHÀM NHÂN TU TIÊN
', 55000, N'Adventure', N'Một bộ truyện được chuyển thể từ tiểu thuyết tu tiên cùng tên rất đỉnh của tác giả Vong Ngữ, với tình tiết logic, Vong Ngữ đã cho ra đời một thế giới tu tiên giả đầy màu sắc và huyền ảo.

', N'PhamNhanTuTien_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP24      ', N'LINH KIẾM TÔN
', 25000, N'Adventure', N'Cường giả bị tập kích, phản lão hoàn đồng, trở thành thiếu chủ phế vật. Kẻ thù từ đời trước kiếp này, quyết không bỏ qua. Sai lầm kiếp trước, kiếp này quyết tâm bù đắp.
Linh Kiếm trường khiếu, thiên địa tam giới, ngã vi chí tôn!', N'LinhKiemTon_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP25      ', N'NGƯỜI NÂNG CẤP
', 86000, N'Adventure', N'Một ngày nọ, ngôi làng của thợ rèn NPC Aiden bị xoá sổ bởi hệ thống điều hành. Vào khoảnh khắc anh và em gái của anh Alice tan biến, anh đã thề với bản thân: “Mình sẽ tự tay huỷ diệt cái hệ thống này”. Chính vào lúc đó, một giọng nói đã vang lên “Bạn đã mở khoá quyền năng của Điều hành viên, Điều hành viên Lv. 1”. Aiden tỉnh dậy với một năng lực mới, đánh dấu khởi đầu của cuộc hành trình làm một Điều hành viên...! Rồi Aiden sẽ ra sao đây?!', N'NguoiNangCap_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP26      ', N'ĐẠI LÃO NÀO CŨNG TRANH SỦNG TA
', 63000, N'Adventure', N'Lam Cận sau 3 năm xuyên không trở về, phát hiện thanh danh của chính mình đã bị làm cho tổn hại. Cô chẳng những có thêm 5 vị hôn phu, mà còn có thêm 5 đứa con trai của sủng mẫu cuồng ma từ tiểu thế giới xuyên tới? Bị gọi là phế vật túi rác, cô ấy vẫn dửng dưng bất động, nhưng hết lần này tới lần khác các đại lão đều tranh sủng cô ấy phải làm sao bây giờ?', N'DaiLaoNaoCungTranhSungTa_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP27      ', N'ĐỆ TỬ CỦA TA ĐỀU LÀ SÚP BỜ THẦN
', 34000, N'Adventure', N'Diệp Dương đang tăng ca ở một công ty game, thì bị xuyên vào một tài khoản, mà tài khoảng này lại “Full Profession Full Skill”! Cuộc sống của giáo chủ môn phái mặn mòi với thánh kiếm toàn cấp + tu tiên + ma pháp sư đã bắt đầu mở ra, mà đau đầu là hắn lại bị một đám đệ tử xinh đẹp thuyết phục hắn tiến lên... để biết tiến lên đâu các bạn hãy đón đọc nhé!', N'DeTuCuaTaDeuLaSupBoThan_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP28      ', N'TOÀN CHỨC PHÁP SƯ
', 74000, N'Adventure', N'Tỉnh lại sau giấc ngủ, thế giới đại biến. Quen thuộc cao trung truyền thụ chính là phép thuật, nói cho mọi người muốn trở thành một tên xuất sắc Ma Pháp Sư. Ở lại đô thị ở ngoài du đãng tập kích nhân loại ma vật yêu thú, mắt nhìn chằm chằm. Tôn trọng khoa học thế giới đã biến thành tôn trọng phép thuật, một mực có như nhau lấy học tra đối xử giáo viên của chính mình, như nhau ánh mắt dị dạng bạn học, như nhau xã hội tầng dưới chót giãy dụa ba ba, như nhau thuần mỹ ', N'ToanChuPhapSu_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP29      ', N'VỢ TÔI LÀ QUỶ VƯƠNG
', 68000, N'Adventure', N'Tóm tắt đơn giản thôi : Một anh Gosu LoL chuyển giới thế nào lại vớ được bà chị quỷ vương.', N'VoToiLaQuyVuong_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP30      ', N'MA VƯƠNG THẤT NGHIỆP
', 45000, N'Adventure', N'Ma vương "nguy hiểm" thất nghiệp gặp nữ hiệp xinh đẹp, oan gia ngõ hẹp cùng nhau lang thang... í lộn... phải nói là "nhân duyên kỳ ngộ cùng nhau phiêu lưu" cho nó sang. Truyện này raw ra chậm nên ad đợi nhiều rồi dịch luôn, đỡ mất công đang hay lại phải đợi, đợi đến chap mới lại quên mất chap cũ nói gì, mắc công cày lại từ đầu', N'MaVuongThatNghiep_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP31      ', N'ISEKAI CHEAT SURVIVAL MESHI
', 69900, N'Adventure', N'Chuyển sinh + sinh tồn, vậy thôi', N'IsekaiCheatSurvivalMeshi_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP32      ', N'THIÊN VÕ CHIẾN THẦN
', 72000, N'Adventure', N'Ta - đấng Ha Hoo Young, Thiên hạ đệ nhất, kẻ đã một tay thống trị toàn cõi! Không ai có thể làm đối thủ của ta! Để phá vỡ giới hạn của con người, ta quyết định mình sẽ vươn tới đỉnh cao của võ thuật. Đoạt lấy thứ sức mạnh mà con người không bao giờ có được bằng cách đắc đạo trở thành thánh!', N'ThienVoChienThan_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP33      ', N'THIÊN TÀI MA PHÁP SƯ GIẤU NGHỀ
', 29000, N'Adventure', N'Elric Melvinger. Người thừa kế duy nhất của gia đình pháp thuật danh giá. Mặc dù sở hữu tài năng bẩm sinh, nhưng anh ta có quá nhiều tài năng, và vì vậy, anh ta không thể học phép thuật. Tuy nhiên, sau đó anh đã nhận được một phước lành do tổ tiên để lại! [Ăn quỷ.] [Nuốt quỷ.] [Uống quỷ.] [Tiếp tục tích lũy ma quỷ trong bản thân, và đạt được ma thuật mới!] Vươn lên cao. Hãy vươn tới một độ cao cao đến nỗi không ai có thể với được ta!!', N'ThienTaiMaPhapSuGiauNghe_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP34      ', N'TRỞ LẠI THỜI KÌ ĐỒ ĐÁ
', 59900, N'Adventure', N'Một câu chuyện về một chàng trai thiếu cảm giác thực tế sau khi bị người yêu bỏ rơi. Anh ta đang tham dự một hội thảo về nhân chủng học văn hóa với các bạn cùng lớp khi anh ta phát hiện ra một bức tranh tường cổ, đưa anh ta về quá khứ nơi voi ma mút thống trị thế giới.
Đồng tác giả với siêu phẩm: Đảo tự sát', N'TroLaiThoiKyDoDa_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP35      ', N'SỰ TRỞ LẠI CỦA NGƯỜI CHƠI CẤP CAO NHẤT
', 135900, N'Adventure', N'120 triệu người đã biến mất trên toàn khỏi thế giới. Yoon Sang-Hyuk đã trở thành người đầu tiên vượt qua trò chơi sinh tồn tồi tệ nhất sau 22 năm và giành được phần thưởng tối cao "Trở Về". Anh ta - Người được gọi là mạnh nhất trong số tất cả những người chơi giờ đã trở lại.', N'SuTroLaiCuaNguoiChoiCapCaoNhat_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP36      ', N'GIRL AND SCIENCE
', 219000, N'Adventure', N'Nam chính là Phong Tiểu Vũ trong lúc đang dẫn cô bạn thanh mai trúc mã Lăng Vân Tiêu (cô nàng là ác ma ở trường học) trốn khỏi sự truy đuổi của mấy tép riu :)) thì cả 2 bị ngã khỏi sân thượng và xuyên vào một thế giới khác. Nào là dị giới sinh mệnh, nào là khung uyên thế giới và con người có thể đạt được những năng lực vô tận.......', N'GirlAndScience_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP37      ', N'ĐỒNG VỌNG DÂN GIAN
', 149000, N'Adventure', N'Một thế giới nơi phép màu là thứ gì đó thật dễ thấy trong cuộc sống. Nơi cổ tích là đời thực và những nhân vật truyền miệng sẽ biết nhau và gặp nhau. Câu chuyện này, đơn giản là tập ký cho hành trình rảo bước trên miền đất của những điều kì diệu. Một chuyện cổ tích dệt nên từ những chuyện cổ tích.Đây là một câu chuyện hư cấu về những nhân vật hư cấu trong một vũ trụ hư cấu. Truyện không nhằm kể cổ tích, lật thần thoại, minh họa truyền thuyết. Không dùng để kể sử, lật sử, minh họa sử.', N'DongVongDanGian_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP38      ', N'THĂNG CẤP CÙNG THẦN
', 52000, N'Adventure', N'Một ngày nọ, những vị Thần tới từ thế giới khác, những Ngoại Giới Chi Thần bao gồm “Tuyệt Vọng Vươn Tới Tận Trời Xanh”, “Sự U Ám Mắc Kẹt Lại Trong Đầm Lầy”, “Kẻ Không Thể Được Sinh Ra”, “Tai Ương Ngu Xuẩn” bỗng dưng xuất hiện. Chỉ cần nhìn vào chúng thôi cũng là đủ để những con người bình thường mất đi mạng sống của mình rồi... Sau hàng năm trời chiến đấu, những vị thần sống sót cuối cùng đã đi tới một kết luận. “Một kẻ Nội Giới không bao giờ có thể đánh bại một kẻ Ngoại Giới.”', N'ThangCapCungThan_01.png')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP39      ', N'KÍ SỰ HỒI QUY
', 34000, N'Adventure', N'Một ngày nọ, tôi được triệu hồi đến thế giới này.
Những con thú lao ra, và một cuộc khủng hoảng đáng kinh ngạc ập đến.
Tài năng của tôi không thể tệ hơn.
[Trình độ tài năng của người chơi đang ở mức thấp.] [Hầu như tất cả các con số đều vô vọng.]
Cho dù phải trở thành một chiến binh hay một thuật sĩ.
Cho dù đã quay ngược thời gian.
"Tôi sẽ làm mọi thứ để có thể tồn tại!"', N'KiSuHoiQuy_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP40      ', N'ĐỨA CON THẦN CHẾT
', 83900, N'Adventure', N'Giả tưởng hậu tận thế, với những siêu thủy quái thống trị đại dương luôn sẵn sàng đối đầu với những chiến binh xài tool.', N'DuaConThanChet_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP41      ', N'ĐỘC BỘ TIÊU DAO
', 100000, N'Mystery', N'Quyến luyến hồng trần. Thần phật tham lam, ta đành phải bước lên đỉnh cao để .....

', N'DocBoTieuDao_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP42      ', N'LẠN KHA KỲ DUYÊN
', 102000, N'Mystery', N'Lạn Kha Kỳ Duyên là bộ tiên hiệp vô cùng thích hợp với những độc giả yêu thích cái thiện, đặc biệt có tác dụng chữa trị tâm hồn của những độc giả vừa tu ma xong
Chuyện xưa kể rằng, có chàng tiều phu đốn củi trên núi Lạn Kha, tình cờ nhìn thấy hai ông lão đang đánh cờ. Chàng say mê đứng xem cả buổi trời, đến khi được một ông lão nhắc nhở chàng mới quay trở về làng. Thế nhưng cảnh còn người mất, hoá ra chỉ xem cờ một lúc đã mất sáu mươi năm…
Đây chính là sự tích về bàn cờ Lạn Kha.', N'LanKhaKyDuyen_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP43      ', N'TRỌNG SINH SAU TÁM VẠN NĂM
', 98700, N'Mystery', N'Một kẻ cực mạnh trôi dạt trong hư không và trở lại 8 vạn năm trước để trả thù

', N'TrongSinhSauTamVanNam_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP44      ', N'CHÂN VÕ THẾ GIỚI
', 72900, N'Mystery', N'Có một ngày, Dịch Vân đi leo núi, tại trong hang núi phát hiện một trương thần bí màu tím tấm thẻ.Hắn chạm đến tấm thẻ trong nháy mắt, sơn thể sạt lở.Tại hắn thật vất vả sau khi bò ra, đã thấy đến cực độ bất khả tư nghị một màn, ách. . . Cụ thể cái gì không thể tưởng tượng nổi, mời xem quyển sách chương 1.—— Đây là một cái tuyệt đẹp mà lại tràn ngập không biết Chân Võ thế giới, đây là một cái tầm thường thiếu niên thành tựu cường giả tuyệt thế truyền kỳ.', N'ChanVoTheGioi_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP45      ', N'THÚ THỤ BẤT THÂN
', 69900, N'Mystery', N'Tạc mao thợ săn thụ x hắc huyết tộc công, thiên tài thợ săn, hôm nay ngôi sao hạng 3 Bạch Mộc, vô tình bị bắt được, lại phát hiện người bắt mình chính là huyết tộc thanh mai trúc mã thời niên thiếu, bây giờ chạy không được, trốn không xong, dục vọng chiếm hữu của trúc mã rất mạnh, chỉ muốn chỉ muốn giam cầm hắn. "A, Mộc, tôi bỏ ra mọi thứ, chỉ muốn có được cậu thêm lần nữa".', N'ThuThuBatThan_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP46      ', N'MR. BLUE
', 55000, N'Mystery', N'Câu chuyện về hai học sinh trung học và một tên Neet sống ẩn dật tại trường nội trú. Một người vẻ đẹp bí ẩn x một tên Neet ẩn dật x một ikemen xa cách. Cuộc sống của những người khó hòa nhập vào xã hội tàn khốc này tình cờ giao nhau và xảy ra một câu chuyện kì lạ.', N'Mr.Blue_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP47      ', N'VĨNH SINH
', 18490, N'Mystery', N'Tiên Ma song tu, duy ngã độc tôn! Hèn mọn gia nô phương hàn bằng vào sức một mình tung hoành giữa thiên địa, nhục thân rèn đúc vĩnh sinh thân thể, bước vào tiên đạo cuối cùng thành đỉnh phong vương giả!', N'VinhSinh_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP48      ', N'TIẾN VÀO MA GIỚI RỒI IRUMA-KUN', 34000, N'Mystery', N'Suzuki Iruma, người đã bị bố mẹ mình kí khế ước bán cho ác ma để đổi lấy tiền tài và bình an.  Cậu bé Iruma đáng thương từ lúc mới biết đi (1 tuổi) đã phải "ra xã hội" lăn lộn, buôn ba khắp nơi với hai vị phụ huynh "tưng tửng" cho đến ngày một Ác Ma đến rước cậu đến Ma giới theo khế ước.', N'TienVaoMaGioiRoiIruma-Kun_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP49      ', N'SỦNG MỊ
', 84000, N'Mystery', N'Nhân vật chính của Truyện Sủng Mị là một vị Hồn sủng sư trẻ tuổi, lúc ban đầu mang theo một con dị biến Nguyệt Quang Hồ chiến đấu liên miên bất tuyệt, vượt qua vô vàn khó khăn cách trở, hiểm cảnh cầu sinh từ từ phát triển biến hóa thành Tà Diễm Lục Vĩ Yêu Hồ, Miện Diễm Cửu Vĩ Yêu Hồ và chủng tộc cao cấp hơn nữa.Hắn chậm rãi bước lên con đường cường giả, không ngừng thu phục các loại Hồn sủng trân quý, phấn đấu vì một ngày đứng trên đỉnh thế giới.', N'SungMi_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP50      ', N'NHÂN VẬT CHÍNH MẠNH NHẤT LỊCH SỬ
', 25000, N'Mystery', N'Thân phụ dị năng, triệu tiểu trời nhận hết gặp trắc trở. một trận bạo tạc qua đi, hắn đuổi kịp thế giới khác xuyên qua trào lưu, đáng tiếc hắc ám thế lực ma trảo vẫn không có bỏ qua hắn, ám sát bắt cóc giết con tin, triệu tiểu thiên nhẫn không thể nhẫn bị đưa vào tu tiên danh môn —— tiêu dao môn, từ đây mở ra hắn nỗ ( phàm ) lực', N'NhanVatChinhManhNhatLichSu_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP51      ', N'ĐẤU PHÁ THƯƠNG KHUNG
', 30000, N'Mystery', N'Đây là một thế giới thuộc về Đấu Khí, không hề có ma pháp hoa tiếu diễm lệ, chỉ có đấu khí cương mãnh phồn thịnh !
Tưởng tượng thế giới đó sẽ phát triển ra sao ? Hãy Bắt Đầu Từ Tiêu Viêm ! Một thiên tài tu luyện trong phút chốc trở thành phế vật, từ phế vật lại từng bước khẳng định lại chính mình !', N'DauPhaThuongKhung_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP52      ', N'NIHONKOKU SHOUKAN
', 44000, N'Mystery', N'Tọa lạc ở vùng biển Đông Phương Vĩ Đại là một lục địa mang tên Rodenius.
Vào một ngày nọ, một vật thể bay không xác định đã xuất hiện trên bầu trời không phận của Công quốc Qua Toyne. Nó đã phá vỡ mọi lẽ thường ở Công quốc. Nhưng cái vật thể bay không xác định đấy chỉ là điềm báo trước về một điều gì đó thậm chí còn gây sốc hơn.', N'NihonkonkuShoukan_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP53      ', N'THẾ THÂN THIẾU GIA KHÔNG DỄ CHỌC
', 36000, N'Mystery', N'Bị cắm sừng, nếm đủ đắng cay mặn ngọt của đời người, không chịu bị sỉ nhục, bắt đầu phản kích, thế thân hào môn, y võ song tu, cuộc sống giàu sang đợi ta đến thế thân!', N'TheThanThieuGiaKhongDeChoc_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP54      ', N'TA CÓ THỂ RÚT RA THUỘC TÍNH
', 50000, N'Mystery', N'Ta, Cố Thiếu Dương, có thể hấp thụ và dung hợp thuộc tính năng lực. Hấp thụ căn cốt ngộ tính của vô số thiên tài , ta chính là yêu nghiệt cao cấp nhất, tuyệt thế thiên kiêu. Dung hợp vô số Nguyên thạch hạ phẩm , đan dược thấp kém, ta liền có thể vặn ra được Nguyên thạch cực phẩm, đan dược thần kỳ.. Hiện tại ta chỉ muốn hỏi: Ta lúc nào có thể vô địch?!!', N'TaCoTheRutRaThuocTinh_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP55      ', N'CÔNG TỬ THỰC SỰ QUÁ CHÍNH NGHĨA
', 78000, N'Mystery', N'Công tử không hổ là chính nghĩa làm gương mẫu! Phong hoa tuyệt đại, nho nhã hiền hoà, ghét ác như cừu, không háo nữ sắc!Trời không sinh công tử, chính đạo vạn cổ như đêm dài!Thế nhân đều là cảm khái....', N'CongTuThucSuQuaChinhNghia_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP56      ', N'KIẾM NGHỊCH THƯƠNG KHUNG
', 42000, N'Mystery', N'Vì đánh bại kẻ đã khiến hắn tan cửa nát nhà, thiếu niên Huyền Thiên bước lên kiếm đạo tu hành. Từ thiếu niên ngây thơ đến nhất đại Kiếm Thần, đã từng cho rằng cường giả hiện tại đã như hạt bụi nhỏ. Một chỉ tru thần đều im lặng diệt, ta bằng vào ta kiếm nghịch thương khung! hành trình của hắn liền kia vô tận thương khung!', N'KiemNghichThuongKhung_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP57      ', N'ĐẾ BÁ
', 89000, N'Mystery', N'Ngàn vạn năm trước, Lý Thất Dạ trồng xuống một cây Thúy Trúc. Tám trăm vạn năm trước, Lý Thất Dạ nuôi một đầu cá chép.Năm trăm vạn năm trước, Lý Thất Dạ thu dưỡng một cái tiểu cô nương.... Hôm nay, Lý Thất Dạ tỉnh lại sau giấc ngủ, Thúy Trúc tu luyện thành thần linh, cá chép hóa thành Kim Long, tiểu cô nương trở thành Cửu Giới Nữ Đế. Đây là cố sự về một tiểu tử bất tử Nhân tộc dưỡng thành Yêu Thần, dưỡng thành Tiên thú, dưỡng thành Nữ Đế..', N'DeBa_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP58      ', N'CON TRAI ÚT HUYỀN THOẠI NHÀ HẦU TƯỚC
', 120000, N'Mystery', N'Ta tới đây chỉ với mục đích trả thù Ta đã lật đổ vương triều Tulkan đã thống trị cả một lục địa. Ta luôn là kẻ chiến thắng. Ta đã đạt được mọi thứ ta ước muốn và thoả mãn với điều đó. Đó là lý do ta chấp nhận cái chết đang đến gần. Ta không còn lý do gì để sống. Vậy nên tim ta đã ngừng đập. Ta cảm nhận được nó đã ngừng đập. Nhưng mà, chuyện quái gì đây? “Nó không phải ma thuật hắc ám và cũng chẳng giống ảo ảnh.” ', N'ConTraiUtHuyenThoaiNhaHauTuoc_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP59      ', N'TỐI CƯỜNG THĂNG CẤP
', 100000, N'Mystery', N'Hệ thống trong tay, thiên hạ ta có! Ta muốn có người đẹp xinh nhất, quyền lực ta lớn nhất, thân phận ta tôn quý nhất! Cửu thiên thập địa, bát hoang lục hợp, ta phải là chí cao vô thượng!', N'ToiCuongThangCap_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP60      ', N'ĐÔ THỊ CHI NGHỊCH THIÊN TIÊN TÔN
', 41000, N'Mystery', N'Thần quân mang theo cửu thiên thần thạch, trùng sinh tại đô thị, biết luyện đan, có thể luyện khí, hiểu trận pháp, hãy nhìn lâm phàm tại đô thị làm như thế nào trừng trị kẻ ác, từng bước một phi thăng, quan sát chúng sinh.', N'DoThiChiNghichThienTienTon_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP61      ', N'HÒN ĐẢO NỔI TRÊN VŨNG NƯỚC BÙN
', 36000, N'Trinh thám', N'Đồng tác giả với bộ manga nổi tiếng Thị trấn nơi chỉ có mình tôi lưu lạc, Chúng ta đấu tranh để sống bởi vì có hy vọng.Chúng ta tin vào ngày mai và bước tiếp vì ở phương xa có một người cần bảo vệ. Cậu bé Minato MYojin và một tên tội phạm đã hoán đổi tâm trí cho nhau trong một đêm gió mưa tầm tã,trong lốt kẻ phạm tội,Minato đã cố hết sức để bảo về an toàn cho cô em gái của mình trong khi bị truy lùng bởi cảnh sát và xã hội đen.', N'HonDaoNoiTrenVungNuocBun_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP62      ', N'SUMMER TIME RENDER
', 50000, N'Trinh thám', N'Shinpei trở về quê nhà để dự đám tang của bạn cậu ấy. Mọi thứ có vẻ sẽ ổn, cho đến ngày hôm sau, khi cậu thấy thứ lẽ ra không tồn tại..', N'SummerTimeRender_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP63      ', N'THÁM TỬ CONAN
', 45000, N'Trinh thám', N'Mở đầu câu truyện, cậu học sinh trung học 16 tuổi Shinichi Kudo bị biến thành cậu bé Conan Edogawa.', N'ThamTuConan_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP64      ', N'YUKOKU NO MORIARTY
', 60000, N'Trinh thám', N'Câu chuyện về Sherlock Holmes được kể dưới góc nhìn của nhân vật chính Moriarty cũng như động lực khiên Moriaty trở thành tội phạm nguy hiểm nhất trong lịch sử Anh quốc.', N'YukokuNoMoriaty_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP65      ', N'GIẤY BÁO TỬ
', 52000, N'Trinh thám', N'Để đảm bảo sự an bình và thịnh vượng, các nhà lãnh đạo một đất nước đã ban hành một đạo luật đặc biệt, qua đó, tất cả trẻ em khi đến tuổi đi học, đều sẽ được tiêm một loại vắc-xin vào người. Một trong số 1000 trẻ em sẽ có một người lãnh mũi vắc-xin đặc biệt, và người này này sẽ chết vào một ngày giờ nhất định khi đang ở độ tuổi 18-24. Câu chuyện là hành trình của Kengo Fujimoto ', N'GiayBaoTu_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP66      ', N'SHAMAN - PHÁP SƯ
', 24000, N'Trinh thám', N'Hoá chất chết người, chuột thí nghiệm, đột biến nhiễm sắc thể và một cái chết bí hiểm. Pháp sư - những người có thể nhìn thấy và tương tác cùng kẻ đã chết. Một trong số họ thường bám đuổi theo một cô gái, người đã bị người anh em kế của mình bóp cổ chết', N'ShamanPhapSu_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP67      ', N'MAJIN TANTEI NOUGAMI NEURO
', 30000, N'Trinh thám', N'Neuro là sinh vật dưới địa ngục, là kẻ thích ăn những "câu đố" và "bí ẩn", và hắn biết được có rất nhiều điều bí ẩn ở thế giới phía trên, hắn đã lên mặt đất để tìm kiếm câu đố tối thượng, thứ duy nhất có thể thỏa mãn cơn đói không nguôi của hắn. Hắn đến gặp Yako Katsuragi, người có cha vừa bị mưu sát vì ngửi được mùi vị thơm ngon của bí ẩn...và giúp cô ấy. Neuro buộc Yako đóng giả làm thám tử, cùng nhau họ tìm kiếm các câu đố để giải quyết.', N'MajinTanteiNougamiNeuro_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP68      ', N'LIAR X LIAR
', 25000, N'Trinh thám', N'Một bộ shoujo khá độc đáo về nội dung và cách dẫn truyện. Những tình tiết hài hước nhẹ nhàng, xen lẫn lãng mạn xoay quanh cô nàng Minato. Đọc và cảm nhận...', N'LiarXLiar_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP69      ', N'VẠN ÁC BẤT XÁ
', 40000, N'Trinh thám', N'Ngô Kỳ, một sát thủ truyền kỳ lỡ tay bị giết, người sát hại mình là ai cũng không biết. Hệ thống Sát Ý bất ngờ xuất hiện trước mặt hắn, chỉ cần hắn hoàn thành nhiệm vụ là giúp hắn hồi sinh, và cho hắn biết chân tướng về cái chết của hắn. Ngô Kỳ được Hệ thống Sát Ý giúp đã xuyên việt thời gian gian không gian, ngăn cản kẻ địch bị sát ý chi phối, cho dù bản thân là tội ác đầy mình, cũng phải cứu thế giới này.', N'VanAcBatXa_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP70      ', N'THE LAST MALE - NGƯỜI ĐÀN ÔNG CUỐI CÙNG
', 35000, N'Trinh thám', N'Dương Nam sau tai nạn, trở thành con người duy nhất còn lại trên thế giới. Sống từng ngày không bị gò bó, không có mục tiêu. cho đến một hôm, phát hiện một bé gái trên đường, và đứa bé cho Dương Nam biết, trên đời này còn có người khác nữa. Sau đó, Dương Nam và bé gái lên đường tìm kiếm đồng bọn, nhưng không ngờ rằng, bản thân đã thành con mồi của những người khác...', N'TheLastMale_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP71      ', N'BẠO LỰC TRUNG ĐỘC
', 56000, N'Trinh thám', N'Chương trình "Nghịch Thiên Hồn" có bí mật quan trọng, ba thế lực lớn trên thế giới là Khung Thương, Tây Cương và Hồng Liên tìm mọi cách để tranh đoạt Nguyên Đấu, người mang Nghịch Thiên Hồn. Nhưng tại sao máy tính hiện đại nhất lại chọn Nguyên Đấu, người có số mạng cực kỳ đen đủi?', N'BaoLucTrungDoc_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP72      ', N'ĐỔ THẦN
', 50000, N'Trinh thám', N'Thần Bài Cao Tuấn, kỳ nhân bất bại của làng cờ bạc, được các casino Châu Á cử làm đại diện thay mặt tham gia Giải Liên minh Casino Thế Giới. Vượt bao khó khăn cuối cùng Thần Bài có trở thành thiên hạ vô song?', N'DoThan_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP73      ', N'MỘ THÀNH NGỤY SỰ
', 80000, N'Trinh thám', N'Tần Lê kinh doanh việc mua bán đồ cổ, tình cờ quen biết với người bí ẩn Vân Minh Lạc, trong một lần trải nghiệm, họ phát hiện ra bản đồ kho báu trên tấm da dê, theo bản đồ chỉ dẫn, bắt đầu chuyến hành trình đầy ly kỳ và bí ẩn!', N'MoThanhNguySu_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP74      ', N'KHI THÁM TỬ CÒN ĐÁNG SỢ HƠN CẢ TỘI PHẠM
', 45000, N'Trinh thám', N'Nhân vât chính là những thám tử với cô nàng yandere stalker biến thái cuồng yêu những tên tội phạm một cách cuồng nhiệt,yêu cả tên bắt cóc mình,thậm chí đóng khung treo ảnh những tên tội phạm mà cô yêu đầy trên tường. ', N'KhiThamTuConDangSoHonCaToiPham_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP75      ', N'SEIJA NO KOUSHIN REVENGE', 30000, N'Trinh thám', N'Một giáo viên mới với khả năng tâm linh phi thường, Shogo Kamihara đã được chỉ định vào một lớp học nơi mà nạn bắt nạt tràn lan... gặp Rika Tamaki, nữ sinh bị buộc phải tự tử sau khi bị bắt nạt. Cảm nhận được lời nguyền của một linh hồn ác quỷ mạnh mẽ trong cô bé, Kamihara bắt đầu điều tra những mắt xích liên kết với nhau trong chuỗi những vụ án mạng xảy ra trong thành phố này. Một sự hồi hộp kinh hoàng về sự trả thù và đền bù được thêu dệt nên bởi người sống và người chết.', N'SeijaNoKouShinRevenge_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP76      ', N'TRONG BÓNG TỐI
', 60000, N'Trinh thám', N' Rốt cục tôi là ai? Cái chết chỉ là một khởi đầu mới. Trở về cảnh cục sau khi kết thúc nhiệm vụ nằm vùng, một kí ức khác trong người Tạ Lam Sơn dần dần thức tỉnh. Lang thang trên mũi đao nhọn, chạy loạn quanh vùng tội ác. Cảnh sát hình sự hàng đầu lưu manh phong nhã gặp phải chuyên gia mô phỏng chân dung tội phạm lạnh lùng thần bí, sẽ bừng lên "tia lửa" thế nào? Gặp nhau chẳng phải ngẫu nhiên, từng bước đưa anh vào bóng tối...', N'TrongBongToi_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP77      ', N'KẸO BÔNG GÒN VÀ MỘNG GIỮA BAN NGÀY
', 55000, N'Trinh thám', N'Đêm khuya, diễn viên kịch nói Bạch Nhất Mông kết thúc một ngày tập luyện vất vả đến một tiệm mì ramen ăn tối. Đúng lúc ti vi trong tiệm đang chiếu tin tức về Ngô Sở Vị, các vị khách đều nói say sưa về vị “ngôi sao của cục cảnh sát” thần bí này. Mà bản thân Ngô Sở Vị thì lại đang yên tĩnh ngồi uống rượu bên cạnh Bạch Nhất Mông. Một câu chuyện liên quan tới phá án, à không! Một câu chuyện tình yêu bắt đầu từ đó…', N'KeoBongGonVaMongGiuaBanNgay_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP78      ', N'VUA ĂN PHÁ ÁN
', 32000, N'Trinh thám', N'Takano Seiya là một thám tử với năng lực phá án xuất sắc, nhưng cũng cực kì phàm ăn. Cùng cô trợ lí Izumi Ryoko, Takano đã phá giải hàng loạt vụ án liên quan đến ẩm thực, đồng thời không quên theo đuổi đam mê bất tận của cuộc đời mình, đó là... thức ăn.
“Kuitan” là biệt hiệu của nhân vật chính Takano, ghép từ KUIshinbo (phàm ăn) và TANtei (thám tử).', N'VuaAnPhaAn_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP79      ', N'SONG SINH LINH THÁM
', 53000, N'Trinh thám', N'Câu chuyện xoay quanh hai thám tử song sinh chuyên giải quyết chuyện huyền bí, kỳ lạ là Tiểu Hồ và Tiểu Đồ. Thể loại truyện từ kinh dị, bí ẩn đến vụ án huyền hoặc, ly kỳ; có thiếu nữ xinh đẹp, có sát nhân biến thái, và có có cả ma quỷ hoang đường....', N'SongSinhLinhTham_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP80      ', N'HỢP ĐỒNG TỰ TỬ
', 40000, N'Trinh thám', N'Hàng loạt vụ tự tử xảy ra, một truyền thuyết đô thị đáng sợ về Nữ Tư Dụ Tử là thủ phạm gây ra các vụ tự sát. Nhưng sự thật đằng sau đó liệu là gì?! Sau bức màn đầy bí ẩn là nổi kinh hoàng tột cùng.', N'HopDongTuTu_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP81      ', N'NGÀY NÀO THIẾU SOÁI CŨNG GHEN
', 70000, N'Xuyên không', N'Một đại tiểu thư kiêu ngạo ngang ngược chết đi, một thiên tài y học thế kỷ 21 xuyên việt đến. nàng y thuật cao siêu, tâm linh trong sáng, đối mặt với cha mẹ chồng không không thân, trượng phu không thương, còn có ánh mắt săm soi ghen tỵ của các cô vợ bé, chỉ dựa vào một con dao mổ nhỏ nhoi giẫm vợ bé, đạp tâm cơ, đánh đâu thắng đó. Thiếu soái trượng phu vốn coi nàng như cỏ rác nhưng bây giờ đêm đên trèo cửa sổ, bò lên giường của nàng, muốn trở thành một đôi uyên ương thiên trường địa cửu .', N'NgayNaoThieuSoaiCungGhen_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP82      ', N'BẢO BỐI CỦA LÃO ĐẠI ĐÃ XUYÊN KHÔNG TRỞ VỀ!
', 50000, N'Xuyên không', N'Quân Khinh cuối cùng cũng trở lại được thế giới của mình, nhưng phát hiện ra cơ thể của mình bị một người khác chiếm hữu trong vòng hai năm. Không biết cô ấy đã là gì, đến cả người mà cô thầm yêu nhiều năm ”Tứ ca” cũng đối xử lạnh lùng đối với cô. Quyết tâm làm lại từ đầu giải quyết mớ hỗn độn kia và giành lại được trái tim Tứ ca. Đối với việc này Quân Khinh dõng dạt nói : ” “Không có gì là không thể giải quyết”', N'BaoBoiCuaLaoDaiDaXuyenKhongTroVe_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP83      ', N'SINH RA LÀM CON GÁI ÁC NỮ
', 41000, N'Xuyên không', N'Tôi được sinh ra là con gái của một người phụ nữ độc ác trong tiểu thuyết. Khi mới sinh, mẹ tôi đã bị phơi bày những hành động xấu xa của mình và bị giam cầm trong ngọn lửa, sẽ sớm phải đối mặt với cái chết đau khổ trong tay các nhân vật chính. Tôi nhìn mẹ, người vẫn đang tìm kiếm chồng cũ của mình cho đến giây phút mẹ mất. Bàn tay nhỏ của t nằm trong bàn tay thô ráp của mẹ và ánh mắt ấm áp của mẹ nhìn tôi. Con hiểu mà mẹ ....', N'SinhRaLamConGaiAcNu_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP84      ', N'VÔ ĐỊCH TỪ CƯỠNG HÔN MA NỮ
', 35000, N'Xuyên không', N'Cưỡng hôn ma nữ, còn thức tỉnh dị năng cấp SSS, cái này là thao tác gì? Ôn nhu la lỵ muội muội, lãnh diễm thiên tài ngự tỷ, thanh thuần nữ thần giáo hoa, vũ mị ác linh nữ vương...... Đối mặt từng lớp từng lớp điềm đại hung, rừng thiếu biểu thị áp lực như núi, chỉ muốn an tĩnh đánh quái tu hành, làm cái vô địch cường giả!', N'VoDichTuCuongHonMaNu_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP85      ', N'QUÝ PHI LÚC NÀO CŨNG MUỐN ĐƯỢC LƯỜI BIẾNG
', 84000, N'Xuyên không', N'Tiêu Hề Hề xuyên không về thời cổ đại, trở thành một trong những phi tần của thái tử. Vốn nghĩ rằng sẽ bắt đầu đấu tranh trong cung, nhưng cô ấy chỉ muốn trở thành cá. Tranh giành sủng ái? Không tồn tại! Trở thành cá mới lạ đạo lý để sinh tồn, ăn hỗn tạp và chờ chết mới chính là bản chất của cuộc đời! Nhưng thái tử lạnh lùng lại yêu thích mặt này của cô ấy.', N'QuyPhiLucNaoCungMuonDuocLuoiBieng_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP86      ', N'NGUYÊN LONG
', 50000, N'Xuyên không', N'Nguyên Hồn thế giới, huyền huyễn thần kỳ, gia tộc bộc phát, tông môn đứng vững, cường giả phân ra, cao thủ như mây.Vương bài tay đánh lén Vương Thắng xuyên qua đến Nguyên Hồn thế giới, đâm đầu vào không đủ tư cách nhất cá chép tàn hồn, thành người gặp người bắt nạt phế vật.
Ta tới là giết người, không phải đến bị các ngươi cười nhạo.', N'NguyenLong_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP87      ', N'KẾ HOẠCH TỰ CỨU CỦA PHẢN PHÁI MA NỮ
', 51000, N'Xuyên không', N'Là một thiên kim gia đình đệ nhất thế gia ,Tiêu Dao mắc bệnh hiểm nghèo qua đời và xuyên không vào bộ truyện...', N'KeHoachTuCuuCuaPhanPhaiMaNu_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP88      ', N'CÔNG CHÚA PHẢN DIỆN MUỐN Ở TRONG TIỆM BÁNH NGỌT
', 43000, N'Xuyên không', N'Anastasia là một cô gái hiện đại xuyên không thành 1 đứa bé thời Âu cổ, Anastasia cứ ngỡ mình con của 1 gia đình nghèo khó, cha là quân nhân mang phần tử phản quốc, nhưng một ngày có một binh lính đến và bảo muốn đón cô về nhưng cô nhưng ba mẹ dẫn cô bỏ trốn và đã bị binh lính bắt gặp được và rồi họ bảo " Chúng tôi đến đón Hoàng Tôn Anastasia ". Thế là cô đã biết thân phận thật của ba mẹ mình là Hoàng Tử và Vương Phi.', N'CongChuaPhanDienMuonOTrongTiemBanhNgot_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP89      ', N'BÀ XÃ NHÀ TÔI ĐẾN TỪ NGÀN NĂM TRƯỚC
', 57000, N'Xuyên không', N'Đường triều thiếu nữ khương lúa xuyên qua ngàn năm qua đến hứa mắt xanh trước, vận mệnh dắt cái này vượt qua ngàn năm yêu thương. Thiếu nữ quen thuộc hết thảy, đều đã biến thành lịch sử. Thân bằng, hảo hữu, địch nhân, toàn bộ yên lặng tại 1,200 năm trước. Thiếu niên thì không giữ lại chút nào, mang theo thiếu nữ mở ra cuộc sống hoàn toàn mới. Thống khổ, mê mang, tiếng hoan hô, cười nói đều đem lưu tại cái này thế giới mới.', N'BaXaNhaToiDenTuNganNamTruoc_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP90      ', N'HỆ THỐNG XUYÊN NHANH: ÁC NAM KHÔNG DỄ CHỌC
', 90000, N'Xuyên không', N'Hệ Thống Xuyên Nhanh: Lão Đại Phản Diện Không Dễ Chọc
Nữ thần cai quản 3000 không gian Lăng Thanh Huyền bất ngờ qua đời. Để tìm kiếm ký ức và sinh mạng, cô buộc phải xuyên vào các không gian, “tấn công” nam chính độc ác trong không gian đó, ngăn cản hắn biến thành kẻ ác. Để có thể kéo đóa sen đen đó về làm một đóa sen trắng, nữ chính dùng hành động thực tế của mình để nói với đám yêu diễm tiện nhân xung quanh các nam chính đó: Dù trong thế giới nào thì hắn vẫn là hắn!', N'HeThongXuyenNhanhAcMaKhongDeChoc_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP91      ', N'ÔM KHẨN TIỂU MÃ GIÁP CỦA TÔI
', 150000, N'Xuyên không', N'Nhà giàu Lục Gia gặp cảnh trớ trêu rằng đứa con gái nuôi hơn chục năm hóa ra chỉ là đồ giả! Hoắc Yểu vừa mới xuyên qua liền xách hành lý cùng thiên kim tiểu thư hang thật mỗi người ai trở về nhà nấy.', N'OmKhanTieuMaGiapCuaToi_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP92      ', N'NHỮNG NHÂN VẬT MẠNH NHẤT THẾ GIỚI ÁM ẢNH TÔI
', 33000, N'Xuyên không', N'*Một ngày của tuổi 13, khi đang nhai bánh mì như một món ăn nhẹ, Dahlia Pesteros đột nhiên nhớ lại kiếp trước của chính mình. Đây là nơi các nhân vậy chính phát cuồng trong thế giới hướng về nhân vật nữ chính nghèo khó, còn cô thì xuyên vào em gái của nhân vật phản diện tồi tệ nhất trong tương lai!*', N'NhungNhanVatManhMeNhatTheGioiAmAnhToi_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP93      ', N'CUỒNG MA TÁI THẾ
', 50000, N'Xuyên không', N'Yi Zaha. Con quỷ điên cuồng vì võ thuật. Trong khi đang bỏ chạy sau khi đánh cắp viên ngọc trời của Lãnh đạo Giáo phái Quỷ, anh ta đã bị rơi xuống một vách đá. Sau khi nghĩ rằng mọi thứ đã kết thúc, anh ấy mở mắt ra và thấy rằng anh ấy đã trở lại khi anh ấy là một người phục vụ… Và anh ta đang bị đánh đập vì điều gì đó mà anh ta không làm. Con quỷ điên khùng đã trở lại những ngày đầu làm bồi bàn! Anh ta sẽ phát điên một lần nữa, hay anh ta sẽ làm cho kẻ thù của mình phát điên?', N'CuongMaTaiThe_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP94      ', N'CON GÁI CHỒNG THẬT DỄ THƯƠNG
', 39000, N'Xuyên không', N'Nữ chính bị chết và xuyên vào vai ác nữ - mẹ kế của công chúa Bạch Tuyết - Blansh

', N'ConGaiChongThatDeThuong_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP95      ', N'CHÂN VÕ THẾ GIỚI
', 44000, N'Xuyên không', N'Có một ngày, Dịch Vân đi leo núi, tại trong hang núi phát hiện một trương thần bí màu tím tấm thẻ.Hắn chạm đến tấm thẻ trong nháy mắt, sơn thể sạt lở.Tại hắn thật vất vả sau khi bò ra, đã thấy đến cực độ bất khả tư nghị một màn, ách. . . Cụ thể cái gì không thể tưởng tượng nổi, mời xem quyển sách chương 1.—— Đây là một cái tuyệt đẹp mà lại tràn ngập không biết Chân Võ thế giới, đây là một cái tầm thường thiếu niên thành tựu cường giả tuyệt thế truyền kỳ.', N'ChanVoTheGioi_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP96      ', N'KẺ SĂN ANH HÙNG
', 65000, N'Xuyên không', N'Một thế gian nơi hầm ngục , quái thú và cả người chơi đều xuất hiện.
Trong thế giới đó, chỉ có một mình ta biết được sự thật.
Hãy cùng ta cứu lấy thế giới.
Hãy chấm dứt trò chơi.', N'KeSanAnhHung_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP97      ', N'KIỀU MỴ PHU LANG, TẠI TUYẾN LỤC TRÀ
', 100000, N'Xuyên không', N'Nữ chính xuyên việt tới thế giới nữ quyền, nữ nhân thi công danh làm quan làm tướng, cưới 5 7 phu lang.

', N'KieuMyPhuLangTaiLuyenLucTra_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP98      ', N'LƯNG DỰA NÚI LỚN ĐỨNG VỮNG C VỊ
', 80000, N'Xuyên không', N'Diệp Diên – nữ nghệ sĩ phái thực lực hàng đầu xuyên vào nhân vật nữ phụ độc ác Diệp Diên trong tiểu thuyết “Ảnh Đế Ngạo Kiều Độc Sủng Tôi”, cũng dựa vào nhan sắc và thực lực thật, thành công ngược gió lật bàn, hút hàng triệu fan bạn gái điên cuồng theo đuổi. Vốn cho rằng sự nghiệp tiền đồ xán lạn, nhưng không ngờ “chọc” phải đại lão đẳng cấp chống lưng cho nam chính trong nguyên tác – Bạc Đình Thâm.', N'LungDuaNuiLonDungVungCVi_01.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaTien], [Tags], [MoTa], [ImageSP]) VALUES (N'SP99      ', N'TA VÔ ĐỊCH LÚC NÀO
', 94000, N'Xuyên không', N'Hắn vẫn cho rằng mình là phàm nhân, lại không biết trong viện chất đầy Thần khí, nuôi gà lại là Phượng Hoàng! Thẳng đến sinh sống tại phàm nhân tiểu trấn năm năm, hệ thống rốt cục để hắn tiếp xúc tu luyện giả. Lúc này hắn mới phát hiện, mặc kệ người mạnh cỡ nào, lúc nhìn thấy hắn, đều sẽ dọa đến run chân, gọi hắn là tiền bối. Hơn nữa còn quỳ xuống đất triều bái... Cuốn sách này sa điêu vô lý, chuyên trị không vui, phong cách kì lạ, xem hết có kinh hỉ!', N'TaVoDichLucNao_01.jpg')
GO
ALTER TABLE [dbo].[ChiTietMatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietMatHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietMatHang] CHECK CONSTRAINT [FK_ChiTietMatHang_SanPham]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_HoaDon]
GO
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
USE [master]
GO
ALTER DATABASE [qlBanTruyen] SET  READ_WRITE 
GO

select * from [dbo].[KhachHang]