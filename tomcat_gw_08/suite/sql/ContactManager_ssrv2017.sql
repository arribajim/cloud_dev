USE [master]
GO

/****** Object:  Database [ContactManagerDB]    Script Date: 6/30/2020 3:21:27 PM ******/
CREATE DATABASE [ContactManagerDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ContactManagerDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_2017\MSSQL\DATA\ContactManagerDB.mdf' , SIZE = 1024000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 0), 
 FILEGROUP [ADMINFG_CM] 
( NAME = N'adminfg_cmdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_2017\MSSQL\DATA\adminfg_cmdb.ndf' , SIZE = 1024000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 0), 
 FILEGROUP [INDEXFG_CM] 
( NAME = N'indexfg_cmdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_2017\MSSQL\DATA\indexfg_cmdb.ndf' , SIZE = 1024000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 0), 
 FILEGROUP [LOBFG_CM] 
( NAME = N'lobfg_cmdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_2017\MSSQL\DATA\lobfg_cmdb.ndf' , SIZE = 1024000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 0), 
 FILEGROUP [OPFG_CM] 
( NAME = N'opfg_cmdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_2017\MSSQL\DATA\opfg_cmdb.ndf' , SIZE = 1024000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 0), 
 FILEGROUP [STAGINGFG_CM] 
( NAME = N'stagingfg_cmdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_2017\MSSQL\DATA\stagingfg_cmdb.ndf' , SIZE = 1024000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 0), 
 FILEGROUP [TYPELISTFG_CM] 
( NAME = N'typelistfg_cmdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_2017\MSSQL\DATA\typelistfg_cmdb.ndf' , SIZE = 1024000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 0)
 LOG ON 
( NAME = N'ContactManagerDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_2017\MSSQL\DATA\ContactManagerDB_log.ldf' , SIZE = 512000KB , MAXSIZE = 2048GB , FILEGROWTH = 0)
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ContactManagerDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ContactManagerDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ContactManagerDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ContactManagerDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ContactManagerDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ContactManagerDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [ContactManagerDB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ContactManagerDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ContactManagerDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ContactManagerDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ContactManagerDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ContactManagerDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ContactManagerDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ContactManagerDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ContactManagerDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ContactManagerDB] SET  DISABLE_BROKER 
GO

ALTER DATABASE [ContactManagerDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ContactManagerDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ContactManagerDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ContactManagerDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ContactManagerDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ContactManagerDB] SET READ_COMMITTED_SNAPSHOT ON 
GO

ALTER DATABASE [ContactManagerDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ContactManagerDB] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [ContactManagerDB] SET  MULTI_USER 
GO

ALTER DATABASE [ContactManagerDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ContactManagerDB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ContactManagerDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ContactManagerDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [ContactManagerDB] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [ContactManagerDB] SET QUERY_STORE = OFF
GO

ALTER DATABASE [ContactManagerDB] SET  READ_WRITE 
GO




ALTER DATABASE ContactManagerDB
SET READ_COMMITTED_SNAPSHOT ON
WITH ROLLBACK IMMEDIATE
GO 