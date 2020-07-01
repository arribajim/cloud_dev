/****** Object:  Database [PolicyCenterDb]    Script Date: 6/30/2020 3:21:27 PM ******/
CREATE DATABASE [PolicyCenterDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PolicyCenterDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_2017\MSSQL\DATA\PolicyCenterDb.mdf' , SIZE = 1024000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 0), 
 FILEGROUP [ADMINFG_pc] 
( NAME = N'adminfg_pcdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_2017\MSSQL\DATA\adminfg_pcdb.ndf' , SIZE = 1024000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 0), 
 FILEGROUP [INDEXFG_pc] 
( NAME = N'indexfg_pcdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_2017\MSSQL\DATA\indexfg_pcdb.ndf' , SIZE = 1024000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 0), 
 FILEGROUP [LOBFG_pc] 
( NAME = N'lobfg_pcdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_2017\MSSQL\DATA\lobfg_pcdb.ndf' , SIZE = 1024000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 0), 
 FILEGROUP [OPFG_pc] 
( NAME = N'opfg_pcdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_2017\MSSQL\DATA\opfg_pcdb.ndf' , SIZE = 1024000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 0), 
 FILEGROUP [STAGINGFG_pc] 
( NAME = N'stagingfg_pcdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_2017\MSSQL\DATA\stagingfg_pcdb.ndf' , SIZE = 1024000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 0), 
 FILEGROUP [TYPELISTFG_pc] 
( NAME = N'typelistfg_pcdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_2017\MSSQL\DATA\typelistfg_pcdb.ndf' , SIZE = 1024000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 0)
 LOG ON 
( NAME = N'PolicyCenterDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER_2017\MSSQL\DATA\PolicyCenterDb_log.ldf' , SIZE = 512000KB , MAXSIZE = 2048GB , FILEGROWTH = 0)
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PolicyCenterDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [PolicyCenterDb] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET ARITHABORT OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [PolicyCenterDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [PolicyCenterDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET  DISABLE_BROKER 
GO

ALTER DATABASE [PolicyCenterDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [PolicyCenterDb] SET READ_COMMITTED_SNAPSHOT ON 
GO

ALTER DATABASE [PolicyCenterDb] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [PolicyCenterDb] SET  MULTI_USER 
GO

ALTER DATABASE [PolicyCenterDb] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [PolicyCenterDb] SET DB_CHAINING OFF 
GO

ALTER DATABASE [PolicyCenterDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [PolicyCenterDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [PolicyCenterDb] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [PolicyCenterDb] SET QUERY_STORE = OFF
GO

ALTER DATABASE [PolicyCenterDb] SET  READ_WRITE 
GO


ALTER DATABASE PolicyCenterDb
SET READ_COMMITTED_SNAPSHOT ON
WITH ROLLBACK IMMEDIATE
GO 