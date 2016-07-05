<<<<<<< HEAD
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Fee]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Fee]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Login]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Login]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Marks]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Marks]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Time_Table]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Time_Table]
GO

CREATE TABLE [dbo].[Fee] (
	[Student_ID] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Hostel_Fee] [int] NOT NULL ,
	[Mess_Fee] [int] NOT NULL ,
	[Academic_Fee] [int] NOT NULL ,
	[fine] [int] NOT NULL ,
	[fine_reason] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Login] (
	[Class_ID] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Student_ID] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[email_id] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[username] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[password] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Marks] (
	[Student_ID] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[sem_1] [float] NULL ,
	[sem_2] [float] NULL ,
	[sem_3] [float] NULL ,
	[sem_4] [float] NULL ,
	[sem_5] [float] NULL ,
	[sem_6] [float] NULL ,
	[sem_7] [float] NULL ,
	[sem_8] [float] NULL ,
	[sem_9] [float] NULL ,
	[sem_10] [float] NULL ,
	[CGPA] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Time_Table] (
	[Class_ID] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Week_Day] [int] NOT NULL ,
	[P_1] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[P_2] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[P_3] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[P_4] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[P_5] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[P_6] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[P_7] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[P_8] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

=======
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Attendance]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Attendance]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Fee]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Fee]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Login]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Login]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Marks]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Marks]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Time_Table]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Time_Table]
GO

CREATE TABLE [dbo].[Attendance] (
	[class_id] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[student_id] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[subject_id] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[username] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Lectures] [int] NOT NULL ,
	[Lectures_Attended] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Fee] (
	[Student_ID] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Hostel_Fee] [int] NOT NULL ,
	[Mess_Fee] [int] NOT NULL ,
	[Academic_Fee] [int] NOT NULL ,
	[fine] [int] NOT NULL ,
	[fine_reason] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Login] (
	[Class_ID] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Student_ID] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Recovery_email] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[email_id] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[username] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[password] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Marks] (
	[Student_ID] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[sem_1] [float] NULL ,
	[sem_2] [float] NULL ,
	[sem_3] [float] NULL ,
	[sem_4] [float] NULL ,
	[sem_5] [float] NULL ,
	[sem_6] [float] NULL ,
	[sem_7] [float] NULL ,
	[sem_8] [float] NULL ,
	[sem_9] [float] NULL ,
	[sem_10] [float] NULL ,
	[CGPA] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Time_Table] (
	[Class_ID] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Week_Day] [int] NOT NULL ,
	[P_1] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[P_2] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[P_3] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[P_4] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[P_5] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[P_6] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[P_7] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[P_8] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

>>>>>>> db2f0ec8a71eda091d2295bdc1b74e5f04865bc4
