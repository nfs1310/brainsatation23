USE [master]
GO
/****** Object:  Database [BrainStation23]    Script Date: 9/18/2020 4:15:43 PM ******/
CREATE DATABASE [BrainStation23]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'test', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\test.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'test_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\test_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BrainStation23] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BrainStation23].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BrainStation23] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BrainStation23] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BrainStation23] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BrainStation23] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BrainStation23] SET ARITHABORT OFF 
GO
ALTER DATABASE [BrainStation23] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BrainStation23] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BrainStation23] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BrainStation23] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BrainStation23] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BrainStation23] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BrainStation23] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BrainStation23] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BrainStation23] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BrainStation23] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BrainStation23] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BrainStation23] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BrainStation23] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BrainStation23] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BrainStation23] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BrainStation23] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BrainStation23] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BrainStation23] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BrainStation23] SET  MULTI_USER 
GO
ALTER DATABASE [BrainStation23] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BrainStation23] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BrainStation23] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BrainStation23] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BrainStation23] SET DELAYED_DURABILITY = DISABLED 
GO
USE [BrainStation23]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 9/18/2020 4:15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NOT NULL,
	[CommentBody] [nvarchar](500) NOT NULL,
	[UserType] [nvarchar](50) NOT NULL,
	[Likes] [int] NOT NULL,
	[Dislikes] [int] NULL,
	[AddedOn] [datetime] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post]    Script Date: 9/18/2020 4:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[PostBody] [nvarchar](500) NOT NULL,
	[UserType] [nvarchar](50) NOT NULL,
	[AddedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (1, 1, N'Comment 1', N'User1', 0, 0, CAST(N'2020-09-17 21:07:02.510' AS DateTime))
INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (2, 1, N'Comment 2', N'User 2', 0, 0, CAST(N'2020-09-17 21:07:37.430' AS DateTime))
INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (3, 1, N'Comment 3', N'User 3', 0, 0, CAST(N'2020-09-17 21:07:46.647' AS DateTime))
INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (4, 2, N'Comment 4', N'User 1', 0, 0, CAST(N'2020-09-17 21:07:59.707' AS DateTime))
INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (5, 2, N'Comment 5', N'User 2', 0, 0, CAST(N'2020-09-17 21:08:05.563' AS DateTime))
INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (6, 2, N'Comment 6', N'User 3', 0, 0, CAST(N'2020-09-17 21:08:13.150' AS DateTime))
INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (7, 2, N'Comment 7', N'User 3', 0, 0, CAST(N'2020-09-17 21:08:22.033' AS DateTime))
INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (8, 3, N'Comment 8', N'User 1', 0, 0, CAST(N'2020-09-17 21:08:35.540' AS DateTime))
INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (9, 4, N'Comment 9', N'User 1', 0, 0, CAST(N'2020-09-17 21:08:50.150' AS DateTime))
INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (10, 4, N'Comment 10', N'User 2', 0, 0, CAST(N'2020-09-17 21:08:58.390' AS DateTime))
INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (11, 5, N'Comment 11', N'User 1', 0, 0, CAST(N'2020-09-17 21:09:12.813' AS DateTime))
INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (12, 5, N'Comment 12', N'User 1', 0, 0, CAST(N'2020-09-17 21:09:20.503' AS DateTime))
INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (13, 5, N'Comment 13', N'User 2', 0, 0, CAST(N'2020-09-17 21:09:27.610' AS DateTime))
INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (14, 5, N'Comment 14', N'User 2', 0, 0, CAST(N'2020-09-17 21:09:29.760' AS DateTime))
INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (15, 5, N'Comment 15', N'User 3', 0, 0, CAST(N'2020-09-17 21:09:35.667' AS DateTime))
INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (16, 5, N'Comment 15', N'User 3', 0, 0, CAST(N'2020-09-17 21:11:36.693' AS DateTime))
INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (17, 5, N'Comment 15', N'User 3', 0, 0, CAST(N'2020-09-17 21:11:43.817' AS DateTime))
INSERT [dbo].[Comment] ([CommentID], [PostID], [CommentBody], [UserType], [Likes], [Dislikes], [AddedOn]) VALUES (18, 5, N'Comment 15', N'User 3', 0, 0, CAST(N'2020-09-17 21:12:01.593' AS DateTime))
SET IDENTITY_INSERT [dbo].[Comment] OFF
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([PostID], [PostBody], [UserType], [AddedDate]) VALUES (1, N'Post 1', N'Admin', CAST(N'2020-09-17 21:04:35.633' AS DateTime))
INSERT [dbo].[Post] ([PostID], [PostBody], [UserType], [AddedDate]) VALUES (2, N'Post 2', N'Admin', CAST(N'2020-09-17 21:05:19.280' AS DateTime))
INSERT [dbo].[Post] ([PostID], [PostBody], [UserType], [AddedDate]) VALUES (3, N'Post 3', N'Admin', CAST(N'2020-09-17 21:05:24.453' AS DateTime))
INSERT [dbo].[Post] ([PostID], [PostBody], [UserType], [AddedDate]) VALUES (4, N'Post 4', N'Admin', CAST(N'2020-09-17 21:05:26.920' AS DateTime))
INSERT [dbo].[Post] ([PostID], [PostBody], [UserType], [AddedDate]) VALUES (5, N'Post 5', N'Admin', CAST(N'2020-09-17 21:05:39.597' AS DateTime))
INSERT [dbo].[Post] ([PostID], [PostBody], [UserType], [AddedDate]) VALUES (6, N'Post 6', N'Admin', CAST(N'2020-09-17 21:05:41.880' AS DateTime))
SET IDENTITY_INSERT [dbo].[Post] OFF
/****** Object:  StoredProcedure [dbo].[sp_Feedback]    Script Date: 9/18/2020 4:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Feedback]
	
AS
BEGIN
	SET NOCOUNT ON;

    SELECT p.PostBody, p.UserType, p.AddedDate, c.CommentBody, c.UserType, c.AddedOn, c.Likes, c.Dislikes 
	FROM [dbo].[Post] p 
	JOIN [dbo].[Comment] c ON p.PostID = c.PostID
	ORDER BY p.PostBody, c.CommentBody
	
END

GO
USE [master]
GO
ALTER DATABASE [BrainStation23] SET  READ_WRITE 
GO
