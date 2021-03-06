USE [KARIYER_NET_DB]
GO
/****** Object:  Table [dbo].[CvProje]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CvProje](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cvId] [int] NOT NULL,
	[projeAdi] [nvarchar](50) NOT NULL,
	[projeTarih] [datetime] NOT NULL,
	[projeUrl] [nvarchar](100) NULL,
	[projeAciklama] [nvarchar](3000) NULL,
 CONSTRAINT [PK_TBL_CV_PROJE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CvReferans]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CvReferans](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cvId] [int] NOT NULL,
	[firmaPozisyonId] [int] NOT NULL,
	[referansAdi] [nvarchar](50) NOT NULL,
	[referansSoyadi] [nvarchar](50) NOT NULL,
	[firma] [nvarchar](100) NULL,
	[eposta] [nvarchar](50) NOT NULL,
	[telefon] [nchar](11) NOT NULL,
 CONSTRAINT [PK_TBL_CV_REFERANS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CvYetenek]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CvYetenek](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cvId] [int] NOT NULL,
	[yetenekId] [int] NOT NULL,
 CONSTRAINT [PK_TBL_CV_YETENEK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Firma]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Firma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sehirId] [int] NOT NULL,
	[sektorId] [int] NOT NULL,
	[ad] [nvarchar](100) NOT NULL,
	[telefon] [nvarchar](11) NOT NULL,
	[eposta] [nvarchar](50) NOT NULL,
	[sifre] [nvarchar](50) NOT NULL,
	[adres] [nvarchar](100) NULL,
	[vergiNumarası] [nvarchar](50) NOT NULL,
	[hakkinda] [nvarchar](4000) NULL,
	[kurulusTarihi] [datetime] NOT NULL,
	[kurumsalWebSite] [nvarchar](100) NULL,
	[logo] [nvarchar](max) NULL,
 CONSTRAINT [PK_TBL_FIRMA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ilan]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ilan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firmaId] [int] NOT NULL,
	[sehirId] [int] NOT NULL,
	[ilanAdi] [nvarchar](50) NOT NULL,
	[calismaTur] [int] NOT NULL,
	[pozisyonId] [int] NOT NULL,
	[departmanId] [int] NOT NULL,
	[minTecrube] [int] NULL,
	[maxTecrube] [int] NULL,
	[tanim] [nvarchar](4000) NOT NULL,
	[askerlikId] [int] NULL,
	[egitimId] [int] NULL,
	[ilanDurum] [bit] NOT NULL,
 CONSTRAINT [PK_TBL_ILAN] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IlanBasvuru]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IlanBasvuru](
	[id] [int] NOT NULL,
	[ilanId] [int] NOT NULL,
	[kullaniciId] [int] NOT NULL,
 CONSTRAINT [PK_TBL_ILAN_BASVURU] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IlanDil]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IlanDil](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ilanId] [int] NOT NULL,
	[ilanDil] [int] NOT NULL,
 CONSTRAINT [PK_TBL_ILAN_DIL] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IlanEgitim]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IlanEgitim](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ilanId] [int] NOT NULL,
	[egitimId] [int] NOT NULL,
 CONSTRAINT [PK_TBL_ILAN_EGITIM] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IlanEhliyet]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IlanEhliyet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ilanId] [int] NOT NULL,
	[ehliyetId] [int] NULL,
 CONSTRAINT [PK_TBL_ILAN_EHLIYET] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sehirId] [int] NOT NULL,
	[fotograf] [nvarchar](max) NULL,
	[ad] [nvarchar](50) NOT NULL,
	[soyad] [nvarchar](50) NOT NULL,
	[eposta] [nvarchar](50) NOT NULL,
	[sifre] [nvarchar](50) NOT NULL,
	[unvan] [nvarchar](50) NULL,
	[dogumTarihi] [datetime] NOT NULL,
	[telefon] [nvarchar](11) NOT NULL,
	[kisiselWebSite] [nvarchar](100) NULL,
	[cinsiyet] [bit] NOT NULL,
	[askerlikDurum] [int] NOT NULL,
	[durum] [bit] NOT NULL,
 CONSTRAINT [PK_TBL_KULLANICI] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciCv]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciCv](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciId] [int] NOT NULL,
	[cvAdi] [nvarchar](50) NOT NULL,
	[ozetBilgi] [nvarchar](3000) NULL,
	[bilgisayarBilgisi] [nvarchar](1000) NULL,
	[olusturmaTarihi] [datetime] NOT NULL,
 CONSTRAINT [PK_TBL_KULLANICI_CV] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciDeneyim]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciDeneyim](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cvId] [int] NOT NULL,
	[kullaniciId] [int] NOT NULL,
	[sehirId] [int] NULL,
	[firmaAdi] [nvarchar](50) NOT NULL,
	[pozisyonId] [int] NOT NULL,
	[firmaSektorId] [int] NOT NULL,
	[calismaTur] [int] NOT NULL,
	[isTanim] [nvarchar](2000) NULL,
	[baslangicTarihi] [datetime] NOT NULL,
	[bitisTarihi] [datetime] NULL,
	[devamDurum] [bit] NOT NULL,
 CONSTRAINT [PK_TBL_KULLANICI_DENEYIM] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciDil]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciDil](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciId] [int] NOT NULL,
	[dilId] [int] NOT NULL,
 CONSTRAINT [PK_TBL_KULLANICI_DIL_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciEgitim]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciEgitim](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciId] [int] NOT NULL,
	[egitimDurum] [int] NOT NULL,
	[baslangicTarihi] [datetime] NOT NULL,
	[bitisTarihi] [datetime] NULL,
	[devamDurum] [bit] NOT NULL,
	[okul] [nvarchar](50) NOT NULL,
	[bolum] [nvarchar](50) NOT NULL,
	[diplomaNotu] [float] NULL,
	[aciklama] [nvarchar](1000) NULL,
	[ogretimTur] [int] NULL,
	[ogretimDil] [int] NULL,
	[bursTur] [int] NULL,
 CONSTRAINT [PK_TBL_KULLANICI_EGITIM] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciEhliyet]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciEhliyet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciId] [int] NOT NULL,
	[ehliyetTurId] [int] NOT NULL,
 CONSTRAINT [PK_TBL_KULLANICI_EHLIYET_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciOnyazi]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciOnyazi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciId] [int] NOT NULL,
	[onyaziAdi] [nvarchar](50) NOT NULL,
	[aciklama] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_TBL_KULLANICI_ONYAZI] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysAskerlikDurum]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysAskerlikDurum](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TBL_ASKERLIK_DURUM] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysBursTur]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysBursTur](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TBL_BURS_TUR] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysCalismaTur]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysCalismaTur](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TBL_CALISMA_TUR] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysDepartman]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysDepartman](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SysDepartman] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysDil]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysDil](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TBL_DIL] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysEgitimDurum]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysEgitimDurum](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TBL_EGITIM_TUR] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysEhliyetTur]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysEhliyetTur](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TBL_EHLIYET_TUR] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysOgretimTur]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysOgretimTur](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TBL_OGRETIM_TUR] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysPozisyon]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysPozisyon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TBL_POZISYON] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysSehir]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysSehir](
	[id] [int] NOT NULL,
	[ad] [nvarchar](20) NOT NULL,
	[sira] [int] NOT NULL,
 CONSTRAINT [PK_Sehirler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysSektor]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysSektor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TBL_SYS_SEKTOR] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SysYetenek]    Script Date: 15.03.2022 00:04:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysYetenek](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TBL_YETENEK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CvYetenek] ON 

INSERT [dbo].[CvYetenek] ([id], [cvId], [yetenekId]) VALUES (1, 2, 1)
INSERT [dbo].[CvYetenek] ([id], [cvId], [yetenekId]) VALUES (2, 2, 3)
INSERT [dbo].[CvYetenek] ([id], [cvId], [yetenekId]) VALUES (3, 2, 5)
INSERT [dbo].[CvYetenek] ([id], [cvId], [yetenekId]) VALUES (4, 2, 7)
INSERT [dbo].[CvYetenek] ([id], [cvId], [yetenekId]) VALUES (5, 2, 2)
SET IDENTITY_INSERT [dbo].[CvYetenek] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([id], [sehirId], [fotograf], [ad], [soyad], [eposta], [sifre], [unvan], [dogumTarihi], [telefon], [kisiselWebSite], [cinsiyet], [askerlikDurum], [durum]) VALUES (1, 28, N'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', N'Mehmet', N'Kanyılmaz', N'mehmetkanyilmaz@outlook.com.tr', N'123456', N'Yönetim Bilişim Sistemleri Uzmanı', CAST(N'1996-05-31T00:00:00.000' AS DateTime), N'05520000000', NULL, 1, 3, 1)
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
GO
SET IDENTITY_INSERT [dbo].[KullaniciCv] ON 

INSERT [dbo].[KullaniciCv] ([id], [kullaniciId], [cvAdi], [ozetBilgi], [bilgisayarBilgisi], [olusturmaTarihi]) VALUES (2, 1, N'My Cv', N'Bu bir deneme özet bilgisidir.', N'Ms Sql, My Sql, Ms Office', CAST(N'2022-03-12T00:00:00.000' AS DateTime))
INSERT [dbo].[KullaniciCv] ([id], [kullaniciId], [cvAdi], [ozetBilgi], [bilgisayarBilgisi], [olusturmaTarihi]) VALUES (3, 1, N'My Cv 2', NULL, NULL, CAST(N'2022-03-11T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KullaniciCv] OFF
GO
SET IDENTITY_INSERT [dbo].[KullaniciDeneyim] ON 

INSERT [dbo].[KullaniciDeneyim] ([id], [cvId], [kullaniciId], [sehirId], [firmaAdi], [pozisyonId], [firmaSektorId], [calismaTur], [isTanim], [baslangicTarihi], [bitisTarihi], [devamDurum]) VALUES (1, 2, 1, 28, N'BYM Yazılım', 1, 3, 1, NULL, CAST(N'2021-07-12T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[KullaniciDeneyim] ([id], [cvId], [kullaniciId], [sehirId], [firmaAdi], [pozisyonId], [firmaSektorId], [calismaTur], [isTanim], [baslangicTarihi], [bitisTarihi], [devamDurum]) VALUES (2, 2, 1, 28, N'Ayhan Bilgisayar', 7, 3, 1, NULL, CAST(N'2019-12-12T00:00:00.000' AS DateTime), CAST(N'2020-07-18T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[KullaniciDeneyim] OFF
GO
SET IDENTITY_INSERT [dbo].[KullaniciDil] ON 

INSERT [dbo].[KullaniciDil] ([id], [kullaniciId], [dilId]) VALUES (1, 1, 1)
INSERT [dbo].[KullaniciDil] ([id], [kullaniciId], [dilId]) VALUES (2, 1, 2)
SET IDENTITY_INSERT [dbo].[KullaniciDil] OFF
GO
SET IDENTITY_INSERT [dbo].[KullaniciEgitim] ON 

INSERT [dbo].[KullaniciEgitim] ([id], [kullaniciId], [egitimDurum], [baslangicTarihi], [bitisTarihi], [devamDurum], [okul], [bolum], [diplomaNotu], [aciklama], [ogretimTur], [ogretimDil], [bursTur]) VALUES (1, 1, 4, CAST(N'2015-08-28T00:00:00.000' AS DateTime), CAST(N'2019-10-02T00:00:00.000' AS DateTime), 0, N'Pamukkale Üniveristesi', N'Yönetim Bilişim Sistemleri', 3.28, NULL, 3, 1, 1)
SET IDENTITY_INSERT [dbo].[KullaniciEgitim] OFF
GO
SET IDENTITY_INSERT [dbo].[KullaniciEhliyet] ON 

INSERT [dbo].[KullaniciEhliyet] ([id], [kullaniciId], [ehliyetTurId]) VALUES (3, 1, 1)
INSERT [dbo].[KullaniciEhliyet] ([id], [kullaniciId], [ehliyetTurId]) VALUES (4, 1, 3)
SET IDENTITY_INSERT [dbo].[KullaniciEhliyet] OFF
GO
SET IDENTITY_INSERT [dbo].[KullaniciOnyazi] ON 

INSERT [dbo].[KullaniciOnyazi] ([id], [kullaniciId], [onyaziAdi], [aciklama]) VALUES (1, 1, N'Ön Yazı 1', N'Bu bir deneme amaçlı ön yazıdır. Lütfen dikkate almayınız.')
INSERT [dbo].[KullaniciOnyazi] ([id], [kullaniciId], [onyaziAdi], [aciklama]) VALUES (2, 1, N'Deneme', N'Deneme önyazı.')
INSERT [dbo].[KullaniciOnyazi] ([id], [kullaniciId], [onyaziAdi], [aciklama]) VALUES (3, 1, N'Deneme 2', N'Deneme 2 için önyazı örneği.')
SET IDENTITY_INSERT [dbo].[KullaniciOnyazi] OFF
GO
SET IDENTITY_INSERT [dbo].[SysAskerlikDurum] ON 

INSERT [dbo].[SysAskerlikDurum] ([id], [ad]) VALUES (1, N'Muaf')
INSERT [dbo].[SysAskerlikDurum] ([id], [ad]) VALUES (2, N'Tecilli')
INSERT [dbo].[SysAskerlikDurum] ([id], [ad]) VALUES (3, N'Yapıldı')
INSERT [dbo].[SysAskerlikDurum] ([id], [ad]) VALUES (4, N'Yapılıyor')
INSERT [dbo].[SysAskerlikDurum] ([id], [ad]) VALUES (5, N'Yapılmadı')
SET IDENTITY_INSERT [dbo].[SysAskerlikDurum] OFF
GO
SET IDENTITY_INSERT [dbo].[SysBursTur] ON 

INSERT [dbo].[SysBursTur] ([id], [ad]) VALUES (1, N'Burs Yok')
INSERT [dbo].[SysBursTur] ([id], [ad]) VALUES (2, N'Destek Bursu')
INSERT [dbo].[SysBursTur] ([id], [ad]) VALUES (3, N'Başarı Bursu')
INSERT [dbo].[SysBursTur] ([id], [ad]) VALUES (4, N'Üstün Başarı')
SET IDENTITY_INSERT [dbo].[SysBursTur] OFF
GO
SET IDENTITY_INSERT [dbo].[SysCalismaTur] ON 

INSERT [dbo].[SysCalismaTur] ([id], [ad]) VALUES (1, N'Tam Zamanlı')
INSERT [dbo].[SysCalismaTur] ([id], [ad]) VALUES (2, N'Proje Bazlı')
INSERT [dbo].[SysCalismaTur] ([id], [ad]) VALUES (3, N'Stajyer')
INSERT [dbo].[SysCalismaTur] ([id], [ad]) VALUES (4, N'Yarı Zamanlı')
INSERT [dbo].[SysCalismaTur] ([id], [ad]) VALUES (5, N'Serbest')
SET IDENTITY_INSERT [dbo].[SysCalismaTur] OFF
GO
SET IDENTITY_INSERT [dbo].[SysDepartman] ON 

INSERT [dbo].[SysDepartman] ([id], [ad]) VALUES (1, N'Bilgi İşlem')
INSERT [dbo].[SysDepartman] ([id], [ad]) VALUES (2, N'Arge')
INSERT [dbo].[SysDepartman] ([id], [ad]) VALUES (3, N'Bakım Onarım')
INSERT [dbo].[SysDepartman] ([id], [ad]) VALUES (4, N'Depo')
INSERT [dbo].[SysDepartman] ([id], [ad]) VALUES (5, N'İnsan Kaynakları')
INSERT [dbo].[SysDepartman] ([id], [ad]) VALUES (6, N'Güvenlik')
INSERT [dbo].[SysDepartman] ([id], [ad]) VALUES (7, N'Halkla İlişkiler')
INSERT [dbo].[SysDepartman] ([id], [ad]) VALUES (8, N'Hizmet')
INSERT [dbo].[SysDepartman] ([id], [ad]) VALUES (9, N'Hukuk')
INSERT [dbo].[SysDepartman] ([id], [ad]) VALUES (10, N'Kalite')
INSERT [dbo].[SysDepartman] ([id], [ad]) VALUES (11, N'Lojistik')
INSERT [dbo].[SysDepartman] ([id], [ad]) VALUES (12, N'Muhasebe')
INSERT [dbo].[SysDepartman] ([id], [ad]) VALUES (13, N'Pazarlama')
INSERT [dbo].[SysDepartman] ([id], [ad]) VALUES (14, N'Sağlık')
SET IDENTITY_INSERT [dbo].[SysDepartman] OFF
GO
SET IDENTITY_INSERT [dbo].[SysDil] ON 

INSERT [dbo].[SysDil] ([id], [ad]) VALUES (1, N'Türkçe')
INSERT [dbo].[SysDil] ([id], [ad]) VALUES (2, N'İngilizce')
INSERT [dbo].[SysDil] ([id], [ad]) VALUES (3, N'Almanca')
INSERT [dbo].[SysDil] ([id], [ad]) VALUES (4, N'Fransızca')
INSERT [dbo].[SysDil] ([id], [ad]) VALUES (5, N'İtalyanca')
INSERT [dbo].[SysDil] ([id], [ad]) VALUES (6, N'İspanyolca')
INSERT [dbo].[SysDil] ([id], [ad]) VALUES (7, N'Portekizce')
INSERT [dbo].[SysDil] ([id], [ad]) VALUES (8, N'Rusça')
SET IDENTITY_INSERT [dbo].[SysDil] OFF
GO
SET IDENTITY_INSERT [dbo].[SysEgitimDurum] ON 

INSERT [dbo].[SysEgitimDurum] ([id], [ad]) VALUES (1, N'İlköğretim')
INSERT [dbo].[SysEgitimDurum] ([id], [ad]) VALUES (2, N'Lise')
INSERT [dbo].[SysEgitimDurum] ([id], [ad]) VALUES (3, N'Ön Lisans')
INSERT [dbo].[SysEgitimDurum] ([id], [ad]) VALUES (4, N'Lisans')
INSERT [dbo].[SysEgitimDurum] ([id], [ad]) VALUES (5, N'Yüksek Lisans')
INSERT [dbo].[SysEgitimDurum] ([id], [ad]) VALUES (6, N'Doktora')
SET IDENTITY_INSERT [dbo].[SysEgitimDurum] OFF
GO
SET IDENTITY_INSERT [dbo].[SysEhliyetTur] ON 

INSERT [dbo].[SysEhliyetTur] ([id], [ad]) VALUES (1, N'A')
INSERT [dbo].[SysEhliyetTur] ([id], [ad]) VALUES (2, N'A1')
INSERT [dbo].[SysEhliyetTur] ([id], [ad]) VALUES (3, N'A2')
INSERT [dbo].[SysEhliyetTur] ([id], [ad]) VALUES (4, N'B')
INSERT [dbo].[SysEhliyetTur] ([id], [ad]) VALUES (5, N'B2')
INSERT [dbo].[SysEhliyetTur] ([id], [ad]) VALUES (6, N'C')
INSERT [dbo].[SysEhliyetTur] ([id], [ad]) VALUES (7, N'D')
INSERT [dbo].[SysEhliyetTur] ([id], [ad]) VALUES (8, N'E')
INSERT [dbo].[SysEhliyetTur] ([id], [ad]) VALUES (9, N'F')
INSERT [dbo].[SysEhliyetTur] ([id], [ad]) VALUES (10, N'G')
INSERT [dbo].[SysEhliyetTur] ([id], [ad]) VALUES (11, N'H')
INSERT [dbo].[SysEhliyetTur] ([id], [ad]) VALUES (12, N'K')
SET IDENTITY_INSERT [dbo].[SysEhliyetTur] OFF
GO
SET IDENTITY_INSERT [dbo].[SysOgretimTur] ON 

INSERT [dbo].[SysOgretimTur] ([id], [ad]) VALUES (1, N'Açık Öğretim')
INSERT [dbo].[SysOgretimTur] ([id], [ad]) VALUES (2, N'İkinci Öğretim')
INSERT [dbo].[SysOgretimTur] ([id], [ad]) VALUES (3, N'Örgün Öğretim')
INSERT [dbo].[SysOgretimTur] ([id], [ad]) VALUES (4, N'Uzaktan Öğretim')
SET IDENTITY_INSERT [dbo].[SysOgretimTur] OFF
GO
SET IDENTITY_INSERT [dbo].[SysPozisyon] ON 

INSERT [dbo].[SysPozisyon] ([id], [ad]) VALUES (1, N'Yazılım Uzmanı')
INSERT [dbo].[SysPozisyon] ([id], [ad]) VALUES (2, N'Yazılım Uzman Yardımcısı')
INSERT [dbo].[SysPozisyon] ([id], [ad]) VALUES (3, N'Muhasebe Uzmanı')
INSERT [dbo].[SysPozisyon] ([id], [ad]) VALUES (4, N'Satış Danışmanı')
INSERT [dbo].[SysPozisyon] ([id], [ad]) VALUES (5, N'Müşteri Temsilcisi')
INSERT [dbo].[SysPozisyon] ([id], [ad]) VALUES (6, N'Mağaza Müdürü')
INSERT [dbo].[SysPozisyon] ([id], [ad]) VALUES (7, N'Bilgi İşlem Uzmanı')
SET IDENTITY_INSERT [dbo].[SysPozisyon] OFF
GO
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (1, N'DÜZCE', 82)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (2, N'OSMANİYE', 81)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (3, N'KİLİS', 80)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (4, N'KARABÜK', 79)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (5, N'YALOVA', 78)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (6, N'IĞDIR', 77)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (7, N'ARDAHAN', 76)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (8, N'BARTIN', 75)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (9, N'ŞIRNAK', 74)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (10, N'BATMAN', 73)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (11, N'KIRIKKALE', 72)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (12, N'KARAMAN', 71)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (13, N'BAYBURT', 70)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (14, N'AKSARAY', 69)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (15, N'ZONGULDAK', 68)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (16, N'YOZGAT', 67)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (17, N'VAN', 66)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (18, N'UŞAK', 65)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (19, N'ŞANLIURFA', 64)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (20, N'TUNCELİ', 63)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (21, N'TRABZON', 62)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (22, N'TOKAT', 61)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (23, N'TEKİRDAĞ', 60)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (24, N'SİVAS', 59)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (25, N'SİNOP', 58)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (26, N'SİİRT', 57)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (27, N'SAMSUN', 56)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (28, N'SAKARYA', 55)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (29, N'RİZE', 54)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (30, N'ORDU', 53)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (31, N'NİĞDE', 52)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (32, N'NEVŞEHİR', 51)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (33, N'MUŞ', 50)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (34, N'MUĞLA', 49)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (35, N'MARDİN', 48)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (36, N'KAHRAMANMARAŞ', 47)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (37, N'MANİSA', 46)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (38, N'MALATYA', 45)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (39, N'KÜTAHYA', 44)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (40, N'KONYA', 43)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (41, N'KOCAELİ', 42)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (42, N'KIRŞEHİR', 41)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (43, N'KIRKLARELİ', 40)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (44, N'KAYSERİ', 39)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (45, N'KASTAMONU', 38)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (46, N'KARS', 37)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (47, N'İZMİR', 36)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (48, N'İSTANBUL (AVR)', 34)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (49, N'MERSİN', 33)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (50, N'ISPARTA', 32)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (51, N'HATAY', 31)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (52, N'HAKKARİ', 30)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (53, N'GÜMÜŞHANE', 29)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (54, N'GİRESUN', 28)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (55, N'GAZİANTEP', 27)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (56, N'ESKİŞEHİR', 26)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (57, N'ERZURUM', 25)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (58, N'ERZİNCAN', 24)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (59, N'ELAZIĞ', 23)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (60, N'EDİRNE', 22)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (61, N'DİYARBAKIR', 21)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (62, N'DENİZLİ', 20)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (63, N'ÇORUM', 19)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (64, N'ÇANKIRI', 18)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (65, N'ÇANAKKALE', 17)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (66, N'BURSA', 16)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (67, N'BURDUR', 15)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (68, N'BOLU', 14)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (69, N'BİTLİS', 13)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (70, N'BİNGÖL', 12)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (71, N'BİLECİK', 11)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (72, N'BALIKESİR', 10)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (73, N'AYDIN', 9)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (74, N'ARTVİN', 8)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (75, N'ANTALYA', 7)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (76, N'ANKARA', 6)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (77, N'AMASYA', 5)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (78, N'AĞRI', 4)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (79, N'AFYONKARAHİSAR', 3)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (80, N'ADIYAMAN', 2)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (81, N'ADANA', 1)
INSERT [dbo].[SysSehir] ([id], [ad], [sira]) VALUES (83, N'İSTANBUL (ASYA)', 35)
GO
SET IDENTITY_INSERT [dbo].[SysSektor] ON 

INSERT [dbo].[SysSektor] ([id], [ad]) VALUES (1, N'MEDYA')
INSERT [dbo].[SysSektor] ([id], [ad]) VALUES (2, N'OTOMOTİV')
INSERT [dbo].[SysSektor] ([id], [ad]) VALUES (3, N'BİLİŞİM')
INSERT [dbo].[SysSektor] ([id], [ad]) VALUES (4, N'GÜVENLİK')
INSERT [dbo].[SysSektor] ([id], [ad]) VALUES (5, N'BANKACILIK')
INSERT [dbo].[SysSektor] ([id], [ad]) VALUES (6, N'TEKNOLOJİ')
INSERT [dbo].[SysSektor] ([id], [ad]) VALUES (7, N'ELEKTRİK VE ALTYAPI')
INSERT [dbo].[SysSektor] ([id], [ad]) VALUES (8, N'MADENCİLİK')
INSERT [dbo].[SysSektor] ([id], [ad]) VALUES (9, N'SAĞLIK')
SET IDENTITY_INSERT [dbo].[SysSektor] OFF
GO
SET IDENTITY_INSERT [dbo].[SysYetenek] ON 

INSERT [dbo].[SysYetenek] ([id], [ad]) VALUES (1, N'Bootstrap')
INSERT [dbo].[SysYetenek] ([id], [ad]) VALUES (2, N'Linq')
INSERT [dbo].[SysYetenek] ([id], [ad]) VALUES (3, N'Ajax')
INSERT [dbo].[SysYetenek] ([id], [ad]) VALUES (4, N'.Net Core')
INSERT [dbo].[SysYetenek] ([id], [ad]) VALUES (5, N'Asp.Net')
INSERT [dbo].[SysYetenek] ([id], [ad]) VALUES (6, N'Css')
INSERT [dbo].[SysYetenek] ([id], [ad]) VALUES (7, N'EF')
INSERT [dbo].[SysYetenek] ([id], [ad]) VALUES (8, N'HTML')
INSERT [dbo].[SysYetenek] ([id], [ad]) VALUES (9, N'JS')
INSERT [dbo].[SysYetenek] ([id], [ad]) VALUES (10, N'Ms Sql')
INSERT [dbo].[SysYetenek] ([id], [ad]) VALUES (11, N'My Sql')
INSERT [dbo].[SysYetenek] ([id], [ad]) VALUES (12, N'C#')
INSERT [dbo].[SysYetenek] ([id], [ad]) VALUES (13, N'Php')
SET IDENTITY_INSERT [dbo].[SysYetenek] OFF
GO
