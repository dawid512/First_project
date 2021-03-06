USE [master]
GO
/****** Object:  Database [simple_order_processing]    Script Date: 16.04.2020 22:06:34 ******/
CREATE DATABASE [simple_order_processing]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'simple_order_processing', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\simple_order_processing.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'simple_order_processing_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\simple_order_processing_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [simple_order_processing] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [simple_order_processing].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [simple_order_processing] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [simple_order_processing] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [simple_order_processing] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [simple_order_processing] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [simple_order_processing] SET ARITHABORT OFF 
GO
ALTER DATABASE [simple_order_processing] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [simple_order_processing] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [simple_order_processing] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [simple_order_processing] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [simple_order_processing] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [simple_order_processing] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [simple_order_processing] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [simple_order_processing] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [simple_order_processing] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [simple_order_processing] SET  ENABLE_BROKER 
GO
ALTER DATABASE [simple_order_processing] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [simple_order_processing] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [simple_order_processing] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [simple_order_processing] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [simple_order_processing] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [simple_order_processing] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [simple_order_processing] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [simple_order_processing] SET RECOVERY FULL 
GO
ALTER DATABASE [simple_order_processing] SET  MULTI_USER 
GO
ALTER DATABASE [simple_order_processing] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [simple_order_processing] SET DB_CHAINING OFF 
GO
ALTER DATABASE [simple_order_processing] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [simple_order_processing] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [simple_order_processing] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'simple_order_processing', N'ON'
GO
ALTER DATABASE [simple_order_processing] SET QUERY_STORE = OFF
GO
USE [simple_order_processing]
GO
/****** Object:  Table [dbo].[Dostawy]    Script Date: 16.04.2020 22:06:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dostawy](
	[id_dostawy] [int] IDENTITY(1,1) NOT NULL,
	[nazwa] [nvarchar](50) NULL,
	[opis] [nvarchar](250) NULL,
	[cena] [money] NULL,
 CONSTRAINT [Dostawy_pk] PRIMARY KEY NONCLUSTERED 
(
	[id_dostawy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategorie]    Script Date: 16.04.2020 22:06:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategorie](
	[id_kategori] [int] IDENTITY(1,1) NOT NULL,
	[nazwa] [nvarchar](50) NULL,
	[opis] [nvarchar](250) NULL,
 CONSTRAINT [Kategorie_pk] PRIMARY KEY NONCLUSTERED 
(
	[id_kategori] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klient]    Script Date: 16.04.2020 22:06:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klient](
	[id_klienta] [int] IDENTITY(1,1) NOT NULL,
	[Imie] [nvarchar](50) NULL,
	[Nazwisko] [nvarchar](80) NULL,
	[telefon] [int] NULL,
	[e-mail] [nvarchar](200) NULL,
	[adres] [nvarchar](300) NULL,
 CONSTRAINT [Klient_pk] PRIMARY KEY NONCLUSTERED 
(
	[id_klienta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Platnosc]    Script Date: 16.04.2020 22:06:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platnosc](
	[id_platnosci] [int] IDENTITY(1,1) NOT NULL,
	[nazwa] [nvarchar](50) NULL,
	[opis] [nvarchar](250) NULL,
 CONSTRAINT [Platnosc_pk] PRIMARY KEY NONCLUSTERED 
(
	[id_platnosci] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pracownik]    Script Date: 16.04.2020 22:06:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pracownik](
	[id_pracownika] [int] IDENTITY(1,1) NOT NULL,
	[Imie] [nvarchar](50) NULL,
	[Nazwisko] [nvarchar](50) NULL,
	[telefon] [int] NULL,
	[e-mail] [nvarchar](200) NULL,
	[login] [varchar](25) NULL,
	[password] [varchar](25) NULL,
	[rules] [int] NULL,
 CONSTRAINT [Pracownik_pk] PRIMARY KEY NONCLUSTERED 
(
	[id_pracownika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producent]    Script Date: 16.04.2020 22:06:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producent](
	[id_producenta] [int] IDENTITY(1,1) NOT NULL,
	[nazwa] [nvarchar](100) NOT NULL,
	[adres] [nvarchar](300) NOT NULL,
	[telefon] [decimal](9, 0) NULL,
	[e-mail] [nvarchar](200) NULL,
	[id_przedstawiciel] [int] NULL,
	[ranga] [int] NULL,
 CONSTRAINT [Producent_pk] PRIMARY KEY NONCLUSTERED 
(
	[id_producenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkty]    Script Date: 16.04.2020 22:06:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkty](
	[id_produktu] [int] IDENTITY(1,1) NOT NULL,
	[id_producenta] [int] NULL,
	[nazwa] [nvarchar](80) NULL,
	[cena_jednostkowa] [money] NOT NULL,
	[ilosc] [decimal](18, 0) NULL,
	[VATStawka] [decimal](18, 0) NULL,
	[id_kategori] [int] NULL,
 CONSTRAINT [Produkty_pk] PRIMARY KEY NONCLUSTERED 
(
	[id_produktu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Przedstawiciel]    Script Date: 16.04.2020 22:06:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Przedstawiciel](
	[id_przedstawicela] [int] IDENTITY(1,1) NOT NULL,
	[Imie] [nvarchar](50) NULL,
	[Nazwisko] [nvarchar](80) NULL,
	[e-mail] [nvarchar](200) NULL,
	[telefon] [int] NULL,
 CONSTRAINT [Przedstawiciel_pk] PRIMARY KEY NONCLUSTERED 
(
	[id_przedstawicela] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 16.04.2020 22:06:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[id_statusu] [int] IDENTITY(1,1) NOT NULL,
	[nazwa] [nvarchar](50) NULL,
	[znaczenie] [nvarchar](100) NULL,
	[opis] [nvarchar](250) NULL,
	[piorytet] [decimal](18, 0) NULL,
 CONSTRAINT [Status_pk] PRIMARY KEY NONCLUSTERED 
(
	[id_statusu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zamowienia]    Script Date: 16.04.2020 22:06:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zamowienia](
	[id_zamowienia] [int] IDENTITY(1,1) NOT NULL,
	[id_klienta] [int] NULL,
	[id_produktu] [int] NULL,
	[id_platnosci] [int] NULL,
	[id_statusu] [int] NULL,
	[id_dostawy] [int] NULL,
	[ilosc] [int] NULL,
	[data] [date] NULL,
	[faktura_vat] [bit] NULL,
	[VATStawka] [decimal](18, 0) NULL,
	[Wartosc_netto] [decimal](18, 0) NULL,
	[Wartosc_brutto] [decimal](18, 0) NULL,
	[Wartosc_VAT] [decimal](18, 0) NULL,
	[id_pracownika] [int] NULL,
 CONSTRAINT [Sprzedaz_pk] PRIMARY KEY NONCLUSTERED 
(
	[id_zamowienia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Dostawy_id_dostawy_uindex]    Script Date: 16.04.2020 22:06:34 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Dostawy_id_dostawy_uindex] ON [dbo].[Dostawy]
(
	[id_dostawy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Kategorie_id_kategori_uindex]    Script Date: 16.04.2020 22:06:34 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Kategorie_id_kategori_uindex] ON [dbo].[Kategorie]
(
	[id_kategori] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Klient_id_klienta_uindex]    Script Date: 16.04.2020 22:06:34 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Klient_id_klienta_uindex] ON [dbo].[Klient]
(
	[id_klienta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Platnosc_id_platnosci_uindex]    Script Date: 16.04.2020 22:06:34 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Platnosc_id_platnosci_uindex] ON [dbo].[Platnosc]
(
	[id_platnosci] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Pracownik_id_pracownika_uindex]    Script Date: 16.04.2020 22:06:34 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Pracownik_id_pracownika_uindex] ON [dbo].[Pracownik]
(
	[id_pracownika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Producent_id_producent_uindex]    Script Date: 16.04.2020 22:06:34 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Producent_id_producent_uindex] ON [dbo].[Producent]
(
	[id_producenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Produkty_id_producent_uindex]    Script Date: 16.04.2020 22:06:34 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Produkty_id_producent_uindex] ON [dbo].[Produkty]
(
	[id_producenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Produkty_id-produktu_uindex]    Script Date: 16.04.2020 22:06:34 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Produkty_id-produktu_uindex] ON [dbo].[Produkty]
(
	[id_produktu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Przedstawiciel_id_przedstawicel_uindex]    Script Date: 16.04.2020 22:06:34 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Przedstawiciel_id_przedstawicel_uindex] ON [dbo].[Przedstawiciel]
(
	[id_przedstawicela] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Status_id_statusu_uindex]    Script Date: 16.04.2020 22:06:34 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Status_id_statusu_uindex] ON [dbo].[Status]
(
	[id_statusu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Sprzedaz_id_sprzedazy_uindex]    Script Date: 16.04.2020 22:06:34 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Sprzedaz_id_sprzedazy_uindex] ON [dbo].[Zamowienia]
(
	[id_zamowienia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Producent]  WITH CHECK ADD  CONSTRAINT [Producent_Przedstawiciel_id_przedstawicela_fk] FOREIGN KEY([id_przedstawiciel])
REFERENCES [dbo].[Przedstawiciel] ([id_przedstawicela])
GO
ALTER TABLE [dbo].[Producent] CHECK CONSTRAINT [Producent_Przedstawiciel_id_przedstawicela_fk]
GO
ALTER TABLE [dbo].[Produkty]  WITH CHECK ADD  CONSTRAINT [Produkty_Kategorie_id_kategori_fk] FOREIGN KEY([id_kategori])
REFERENCES [dbo].[Kategorie] ([id_kategori])
GO
ALTER TABLE [dbo].[Produkty] CHECK CONSTRAINT [Produkty_Kategorie_id_kategori_fk]
GO
ALTER TABLE [dbo].[Produkty]  WITH CHECK ADD  CONSTRAINT [Produkty_Producent_id_producenta_fk] FOREIGN KEY([id_producenta])
REFERENCES [dbo].[Producent] ([id_producenta])
GO
ALTER TABLE [dbo].[Produkty] CHECK CONSTRAINT [Produkty_Producent_id_producenta_fk]
GO
ALTER TABLE [dbo].[Zamowienia]  WITH CHECK ADD  CONSTRAINT [Sprzedaz_Dostawy_id_dostawy_fk] FOREIGN KEY([id_dostawy])
REFERENCES [dbo].[Dostawy] ([id_dostawy])
GO
ALTER TABLE [dbo].[Zamowienia] CHECK CONSTRAINT [Sprzedaz_Dostawy_id_dostawy_fk]
GO
ALTER TABLE [dbo].[Zamowienia]  WITH CHECK ADD  CONSTRAINT [Sprzedaz_Klient_id_klienta_fk] FOREIGN KEY([id_klienta])
REFERENCES [dbo].[Klient] ([id_klienta])
GO
ALTER TABLE [dbo].[Zamowienia] CHECK CONSTRAINT [Sprzedaz_Klient_id_klienta_fk]
GO
ALTER TABLE [dbo].[Zamowienia]  WITH CHECK ADD  CONSTRAINT [Sprzedaz_Platnosc_id_platnosci_fk] FOREIGN KEY([id_platnosci])
REFERENCES [dbo].[Platnosc] ([id_platnosci])
GO
ALTER TABLE [dbo].[Zamowienia] CHECK CONSTRAINT [Sprzedaz_Platnosc_id_platnosci_fk]
GO
ALTER TABLE [dbo].[Zamowienia]  WITH CHECK ADD  CONSTRAINT [Sprzedaz_Produkty_id_produktu_fk] FOREIGN KEY([id_produktu])
REFERENCES [dbo].[Produkty] ([id_produktu])
GO
ALTER TABLE [dbo].[Zamowienia] CHECK CONSTRAINT [Sprzedaz_Produkty_id_produktu_fk]
GO
ALTER TABLE [dbo].[Zamowienia]  WITH CHECK ADD  CONSTRAINT [Sprzedaz_Status_id_statusu_fk] FOREIGN KEY([id_statusu])
REFERENCES [dbo].[Status] ([id_statusu])
GO
ALTER TABLE [dbo].[Zamowienia] CHECK CONSTRAINT [Sprzedaz_Status_id_statusu_fk]
GO
ALTER TABLE [dbo].[Zamowienia]  WITH CHECK ADD  CONSTRAINT [Zamowienia_Pracownik_id_pracownika_fk] FOREIGN KEY([id_pracownika])
REFERENCES [dbo].[Pracownik] ([id_pracownika])
GO
ALTER TABLE [dbo].[Zamowienia] CHECK CONSTRAINT [Zamowienia_Pracownik_id_pracownika_fk]
GO
USE [master]
GO
ALTER DATABASE [simple_order_processing] SET  READ_WRITE 
GO
