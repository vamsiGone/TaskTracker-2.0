USE [master]
GO
/****** Object:  Database [TaskTracker]    Script Date: 15-06-2023 10:06:27 PM ******/
CREATE DATABASE [TaskTracker]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TaskTracker', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TaskTracker.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TaskTracker_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TaskTracker_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TaskTracker] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TaskTracker].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TaskTracker] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TaskTracker] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TaskTracker] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TaskTracker] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TaskTracker] SET ARITHABORT OFF 
GO
ALTER DATABASE [TaskTracker] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TaskTracker] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TaskTracker] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TaskTracker] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TaskTracker] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TaskTracker] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TaskTracker] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TaskTracker] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TaskTracker] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TaskTracker] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TaskTracker] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TaskTracker] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TaskTracker] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TaskTracker] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TaskTracker] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TaskTracker] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TaskTracker] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TaskTracker] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TaskTracker] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TaskTracker] SET  MULTI_USER 
GO
ALTER DATABASE [TaskTracker] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TaskTracker] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TaskTracker] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TaskTracker] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TaskTracker]
GO
/****** Object:  StoredProcedure [dbo].[RegisterDetails]    Script Date: 15-06-2023 10:06:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- exec registerdetails 'check','vamsi','vamsigone00@gmail.com','v@1a2ms34i'

CREATE procedure [dbo].[RegisterDetails]
(
@Action varchar(100),
@Name varchar(100), 
@Email varchar(100), 
@Password varchar(100),
@Otp varchar(20),
@PhotoUrl varchar(100)
)
as
begin
if(@Action='Check')
begin
IF EXISTS(select * from Register where Email=@Email)
select 1 as com
ELSE
select 0 as com

end

if(@Action='Insert')
begin
Insert into Register(UserName,Email,Password,OTP,PhotoUrl)values(@Name,@Email,@Password,@Otp,@PhotoUrl)
if(@@ROWCOUNT>0)
select 1 as com
else
select 0 as com
end
end








GO
/****** Object:  Table [dbo].[Events]    Script Date: 15-06-2023 10:06:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Events](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[EventTitle] [nvarchar](50) NOT NULL,
	[EventDesc] [nvarchar](max) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[AllDay] [int] NULL,
	[StartTime] [date] NOT NULL,
	[EndTime] [date] NULL,
	[Status] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Register]    Script Date: 15-06-2023 10:06:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Register](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Usertitle] [nvarchar](50) NULL,
	[Email] [varchar](100) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Number] [varchar](20) NULL,
	[PhotoUrl] [varchar](100) NOT NULL,
	[Region] [varchar](50) NULL,
	[Address] [varchar](1000) NULL,
	[OTP] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 15-06-2023 10:06:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tasks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TaskTitle] [nvarchar](50) NOT NULL,
	[TaskDesc] [nvarchar](max) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[StartTime] [date] NOT NULL,
	[EndTime] [date] NULL,
	[Status] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TimeLine]    Script Date: 15-06-2023 10:06:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TimeLine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ETtype] [varchar](50) NOT NULL,
	[ETtitle] [nvarchar](max) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[StartTime] [date] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Events] ADD  DEFAULT ((1)) FOR [AllDay]
GO
ALTER TABLE [dbo].[Events] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Tasks] ADD  DEFAULT ((0)) FOR [Status]
GO
USE [master]
GO
ALTER DATABASE [TaskTracker] SET  READ_WRITE 
GO
