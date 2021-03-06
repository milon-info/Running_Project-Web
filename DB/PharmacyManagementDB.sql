USE [master]
GO
/****** Object:  Database [PharmacyManagementDB]    Script Date: 8/6/2015 2:42:26 PM ******/
CREATE DATABASE [PharmacyManagementDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PharmacyManagementDB', FILENAME = N'E:\Software Development (Faruk)\Pharmacy Management System\PMSApp\DB\PharmacyManagementDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PharmacyManagementDB_log', FILENAME = N'E:\Software Development (Faruk)\Pharmacy Management System\PMSApp\DB\PharmacyManagementDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PharmacyManagementDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PharmacyManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PharmacyManagementDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [PharmacyManagementDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PharmacyManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PharmacyManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PharmacyManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PharmacyManagementDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PharmacyManagementDB] SET  MULTI_USER 
GO
ALTER DATABASE [PharmacyManagementDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PharmacyManagementDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PharmacyManagementDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PharmacyManagementDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [PharmacyManagementDB]
GO
/****** Object:  Table [dbo].[tbl_appointment]    Script Date: 8/6/2015 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_appointment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[appointment_date] [datetime] NULL,
	[appointment_serial] [int] NULL,
	[patient_id] [int] NOT NULL,
	[doctor_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_appointment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_category]    Script Date: 8/6/2015 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_code] [varchar](50) NULL,
	[category_name] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_company]    Script Date: 8/6/2015 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_company](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[company_code] [varchar](50) NULL,
	[company_name] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_company] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_doctor]    Script Date: 8/6/2015 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_doctor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[doctor_code] [int] NOT NULL,
	[doctor_name] [varchar](50) NULL,
	[doctor_degree] [varchar](50) NULL,
	[specialist] [varchar](50) NULL,
	[doctor_position] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[contact_number] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_doctor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_medicine]    Script Date: 8/6/2015 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_medicine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[medicine_code] [varchar](50) NULL,
	[medicine_name] [varchar](50) NULL,
	[description] [varchar](50) NULL,
	[categoryId] [int] NOT NULL,
	[companyId] [int] NOT NULL,
	[price] [nchar](10) NULL,
 CONSTRAINT [PK_tbl_medicine] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_patient]    Script Date: 8/6/2015 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_patient](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[patient_name] [varchar](50) NULL,
	[address] [varchar](100) NULL,
	[email] [varchar](50) NULL,
	[contact_number] [varchar](50) NULL,
	[age] [int] NULL,
 CONSTRAINT [PK_tbl_patient] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_prescription]    Script Date: 8/6/2015 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_prescription](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[prescription_date] [datetime] NULL,
	[patient_id] [int] NOT NULL,
	[doctor_id] [int] NOT NULL,
	[prescription_details] [varchar](200) NULL,
 CONSTRAINT [PK_tbl_prescription] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 8/6/2015 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [varchar](100) NULL,
	[email_address] [varchar](50) NULL,
	[contact_number] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](25) NULL,
 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[view_appointmentList]    Script Date: 8/6/2015 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[view_appointmentList] as 
	select a.appointment_date,a.appointment_serial,p.patient_name,p.contact_number,d.doctor_name from tbl_appointment as a
	inner join tbl_patient as p on a.patient_id = p.id
	inner join tbl_doctor as d 
	on a.doctor_id = d.id
GO
/****** Object:  View [dbo].[view_medicineList]    Script Date: 8/6/2015 2:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_medicineList]
					AS SELECT m.medicine_code,m.medicine_name,m.description,c.category_name,co.company_name,m.price FROM (tbl_category AS c
						INNER JOIN tbl_medicine AS m
							ON c.id = m.categoryId)
							INNER JOIN tbl_company AS co ON (m.companyId = co.id);
GO
SET IDENTITY_INSERT [dbo].[tbl_appointment] ON 

INSERT [dbo].[tbl_appointment] ([id], [appointment_date], [appointment_serial], [patient_id], [doctor_id]) VALUES (3, CAST(0x0000A4E900000000 AS DateTime), 1, 1, 1)
SET IDENTITY_INSERT [dbo].[tbl_appointment] OFF
SET IDENTITY_INSERT [dbo].[tbl_category] ON 

INSERT [dbo].[tbl_category] ([id], [category_code], [category_name]) VALUES (1, N'cate-101', N'Vitamin')
INSERT [dbo].[tbl_category] ([id], [category_code], [category_name]) VALUES (2, N'cate102', N'Insepta')
SET IDENTITY_INSERT [dbo].[tbl_category] OFF
SET IDENTITY_INSERT [dbo].[tbl_company] ON 

INSERT [dbo].[tbl_company] ([id], [company_code], [company_name]) VALUES (1, N'com-1001', N'Beximco')
INSERT [dbo].[tbl_company] ([id], [company_code], [company_name]) VALUES (2, N'com-130', N'Insepta')
SET IDENTITY_INSERT [dbo].[tbl_company] OFF
SET IDENTITY_INSERT [dbo].[tbl_doctor] ON 

INSERT [dbo].[tbl_doctor] ([id], [doctor_code], [doctor_name], [doctor_degree], [specialist], [doctor_position], [email], [contact_number]) VALUES (1, 12310440, N'Hanif sarder', N'MBBS', N'Neurologist', N'Dhaka,Bangladesh', N'hanif@mail.com', N'123456789')
INSERT [dbo].[tbl_doctor] ([id], [doctor_code], [doctor_name], [doctor_degree], [specialist], [doctor_position], [email], [contact_number]) VALUES (2, 550, N'Milon', N'MBBS', N'Neurologist', N'Comilla', N'm@gmail.com', N'362303')
INSERT [dbo].[tbl_doctor] ([id], [doctor_code], [doctor_name], [doctor_degree], [specialist], [doctor_position], [email], [contact_number]) VALUES (3, 12345, N'Sobuj Ahmed', N'MBBS', N'Medicine', N'Lecturer Dhaka Medical College', N'sobuj@gmail.com', N'01812362303')
SET IDENTITY_INSERT [dbo].[tbl_doctor] OFF
SET IDENTITY_INSERT [dbo].[tbl_medicine] ON 

INSERT [dbo].[tbl_medicine] ([id], [medicine_code], [medicine_name], [description], [categoryId], [companyId], [price]) VALUES (1, N'101', N'Napa', N'Fever', 1, 1, N'10        ')
INSERT [dbo].[tbl_medicine] ([id], [medicine_code], [medicine_name], [description], [categoryId], [companyId], [price]) VALUES (2, N'102', N'Histasin', N'Fever', 1, 1, N'30        ')
INSERT [dbo].[tbl_medicine] ([id], [medicine_code], [medicine_name], [description], [categoryId], [companyId], [price]) VALUES (3, N'111', N'NEXE', N'Gestic', 1, 2, N'35        ')
INSERT [dbo].[tbl_medicine] ([id], [medicine_code], [medicine_name], [description], [categoryId], [companyId], [price]) VALUES (1002, N'350', N'Losectil', N'Gestic', 1, 2, N'10        ')
SET IDENTITY_INSERT [dbo].[tbl_medicine] OFF
SET IDENTITY_INSERT [dbo].[tbl_patient] ON 

INSERT [dbo].[tbl_patient] ([id], [patient_name], [address], [email], [contact_number], [age]) VALUES (1, N'Maruf', N'Dhaka', N'maruf@gmail.com', N'12345', 22)
INSERT [dbo].[tbl_patient] ([id], [patient_name], [address], [email], [contact_number], [age]) VALUES (2, N'Rasel', N'Comilla', N'rasel@gmail.com', N'123456789', 25)
INSERT [dbo].[tbl_patient] ([id], [patient_name], [address], [email], [contact_number], [age]) VALUES (1002, N'Sobuj', N'Comilla', N'm@gmail.com', N'362303', 22)
INSERT [dbo].[tbl_patient] ([id], [patient_name], [address], [email], [contact_number], [age]) VALUES (1004, N'Ripon', N'Dhaka,Bangladesh', N'r@gmail.com', N'362303', 25)
SET IDENTITY_INSERT [dbo].[tbl_patient] OFF
SET IDENTITY_INSERT [dbo].[tbl_prescription] ON 

INSERT [dbo].[tbl_prescription] ([id], [prescription_date], [patient_id], [doctor_id], [prescription_details]) VALUES (3, CAST(0x0000A4E800000000 AS DateTime), 1, 1, N'Napa')
INSERT [dbo].[tbl_prescription] ([id], [prescription_date], [patient_id], [doctor_id], [prescription_details]) VALUES (4, CAST(0x0000A4EA00000000 AS DateTime), 1, 1, N'')
INSERT [dbo].[tbl_prescription] ([id], [prescription_date], [patient_id], [doctor_id], [prescription_details]) VALUES (5, CAST(0x0000000000000000 AS DateTime), 1, 1, N'')
INSERT [dbo].[tbl_prescription] ([id], [prescription_date], [patient_id], [doctor_id], [prescription_details]) VALUES (1003, CAST(0x0000A4EB00000000 AS DateTime), 1002, 3, N'MBBS')
SET IDENTITY_INSERT [dbo].[tbl_prescription] OFF
SET IDENTITY_INSERT [dbo].[tbl_user] ON 

INSERT [dbo].[tbl_user] ([id], [full_name], [email_address], [contact_number], [username], [password]) VALUES (1, N'Md. Omar Faruk Chowdhury', N'faruk@gmail.com', N'01676457450', N'Faruk', N'12345')
SET IDENTITY_INSERT [dbo].[tbl_user] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_category]    Script Date: 8/6/2015 2:42:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_category] ON [dbo].[tbl_category]
(
	[category_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_company]    Script Date: 8/6/2015 2:42:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_company] ON [dbo].[tbl_company]
(
	[company_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_tbl_doctor]    Script Date: 8/6/2015 2:42:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_doctor] ON [dbo].[tbl_doctor]
(
	[doctor_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_medicine]    Script Date: 8/6/2015 2:42:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_medicine] ON [dbo].[tbl_medicine]
(
	[medicine_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_patient]    Script Date: 8/6/2015 2:42:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_patient] ON [dbo].[tbl_patient]
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_appointment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_appointment_tbl_doctor] FOREIGN KEY([doctor_id])
REFERENCES [dbo].[tbl_doctor] ([id])
GO
ALTER TABLE [dbo].[tbl_appointment] CHECK CONSTRAINT [FK_tbl_appointment_tbl_doctor]
GO
ALTER TABLE [dbo].[tbl_appointment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_appointment_tbl_patient] FOREIGN KEY([patient_id])
REFERENCES [dbo].[tbl_patient] ([id])
GO
ALTER TABLE [dbo].[tbl_appointment] CHECK CONSTRAINT [FK_tbl_appointment_tbl_patient]
GO
ALTER TABLE [dbo].[tbl_medicine]  WITH CHECK ADD  CONSTRAINT [FK_tbl_medicine_tbl_category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[tbl_category] ([id])
GO
ALTER TABLE [dbo].[tbl_medicine] CHECK CONSTRAINT [FK_tbl_medicine_tbl_category]
GO
ALTER TABLE [dbo].[tbl_medicine]  WITH CHECK ADD  CONSTRAINT [FK_tbl_medicine_tbl_company] FOREIGN KEY([companyId])
REFERENCES [dbo].[tbl_company] ([id])
GO
ALTER TABLE [dbo].[tbl_medicine] CHECK CONSTRAINT [FK_tbl_medicine_tbl_company]
GO
ALTER TABLE [dbo].[tbl_prescription]  WITH CHECK ADD  CONSTRAINT [FK_tbl_prescription_tbl_doctor] FOREIGN KEY([doctor_id])
REFERENCES [dbo].[tbl_doctor] ([id])
GO
ALTER TABLE [dbo].[tbl_prescription] CHECK CONSTRAINT [FK_tbl_prescription_tbl_doctor]
GO
ALTER TABLE [dbo].[tbl_prescription]  WITH CHECK ADD  CONSTRAINT [FK_tbl_prescription_tbl_patient] FOREIGN KEY([patient_id])
REFERENCES [dbo].[tbl_patient] ([id])
GO
ALTER TABLE [dbo].[tbl_prescription] CHECK CONSTRAINT [FK_tbl_prescription_tbl_patient]
GO
USE [master]
GO
ALTER DATABASE [PharmacyManagementDB] SET  READ_WRITE 
GO
