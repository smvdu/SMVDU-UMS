if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Time_table]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Time_table]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[challan_paid]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[challan_paid]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[faculty]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[faculty]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fee]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[fee]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fee_dues]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[fee_dues]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[registration]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[registration]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[student]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[student]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[student_report]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[student_report]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[subject_id_yearly]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[subject_id_yearly]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[subject_name]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[subject_name]
GO

CREATE TABLE [dbo].[Time_table] (
	[_id] [int] NOT NULL ,
	[class_id] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[week_day] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[p1] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[p2] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[p3] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[p4] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[p5] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[p6] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[p7] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[p8] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[challan_paid] (
	[_id] [int] NOT NULL ,
	[challan_no] [int] NOT NULL ,
	[challan_date] [datetime] NOT NULL ,
	[amount_challan] [float] NOT NULL ,
	[amount_deduced] [float] NOT NULL ,
	[amount_left] [float] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[faculty] (
	[_id] [int] NOT NULL ,
	[department] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[designation] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[mothers_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[fathers_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[fee] (
	[_id] [int] NOT NULL ,
	[reg_id] [int] NOT NULL ,
	[fee_type] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[challan_no] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[amount] [float] NOT NULL ,
	[check_amount] [float] NOT NULL ,
	[verified] [bit] NOT NULL ,
	[status] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[fee_dues] (
	[_id] [int] NOT NULL ,
	[fee_id] [int] NOT NULL ,
	[fee_due] [float] NOT NULL ,
	[last_date_submission] [datetime] NOT NULL ,
	[fine] [float] NOT NULL ,
	[status] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[registration] (
	[_id] [int] NOT NULL ,
	[student_id] [int] NOT NULL ,
	[class_id] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[time_of_registration] [timestamp] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[student] (
	[_id] [int] NOT NULL ,
	[class_id] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[mothers_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[fatthers_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[state_domicile] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[country] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[contact_no] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[cgpa] [float] NOT NULL ,
	[course_opted] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[degree] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[credits_earned] [float] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[student_report] (
	[_id] [int] NOT NULL ,
	[subject_id] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[student_id] [int] NOT NULL ,
	[attendance] [int] NOT NULL ,
	[total_attendance] [float] NOT NULL ,
	[minor1] [float] NOT NULL ,
	[minor2] [float] NOT NULL ,
	[major] [float] NOT NULL ,
	[assignment] [float] NOT NULL ,
	[total] [float] NOT NULL ,
	[grade] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[subject_id_yearly] (
	[_id] [int] NOT NULL ,
	[subject_id] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[faculty_id] [int] NOT NULL ,
	[year] [int] NOT NULL ,
	[lecture] [int] NOT NULL ,
	[tutorial] [int] NOT NULL ,
	[lab] [int] NOT NULL ,
	[credits] [float] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[subject_name] (
	[_id] [int] NOT NULL ,
	[subject_id] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[name] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[lecture] [int] NOT NULL ,
	[tutorial] [int] NOT NULL ,
	[lab] [int] NOT NULL ,
	[credits] [float] NOT NULL 
) ON [PRIMARY]
GO

