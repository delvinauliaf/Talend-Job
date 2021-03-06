USE [delman_io]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 23/09/2021 06:54:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[message] [varchar](255) NULL,
	[row_number] [int] NULL,
	[file_name] [varchar](50) NULL,
	[created_at] [datetime] NOT NULL,
 CONSTRAINT [PK__Logs__3213E83F82C8D4CE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Logs] ON 

INSERT [dbo].[Logs] ([id], [message], [row_number], [file_name], [created_at]) VALUES (1, N'Kabupaten Seoul not found in master_kabupaten', NULL, N'USER_20210923.txt', CAST(N'2021-09-23T06:50:19.000' AS DateTime))
INSERT [dbo].[Logs] ([id], [message], [row_number], [file_name], [created_at]) VALUES (2, N'Kabupaten New York not found in master_kabupaten', NULL, N'USER_20210923.txt', CAST(N'2021-09-23T06:50:19.000' AS DateTime))
INSERT [dbo].[Logs] ([id], [message], [row_number], [file_name], [created_at]) VALUES (3, N'Dupicate data with name :Jiso and handphone : 87655556876', NULL, N'USER_20210923.txt', CAST(N'2021-09-23T06:50:19.000' AS DateTime))
INSERT [dbo].[Logs] ([id], [message], [row_number], [file_name], [created_at]) VALUES (4, N'Date format :07-08-2001 is invalid', NULL, N'USER_20210923.txt', CAST(N'2021-09-23T06:50:19.000' AS DateTime))
INSERT [dbo].[Logs] ([id], [message], [row_number], [file_name], [created_at]) VALUES (5, N'handphone:exceed max length', NULL, N'USER_20210923.txt', CAST(N'2021-09-23T06:50:19.000' AS DateTime))
INSERT [dbo].[Logs] ([id], [message], [row_number], [file_name], [created_at]) VALUES (6, N'handphone:empty or null', NULL, N'USER_20210923.txt', CAST(N'2021-09-23T06:50:19.000' AS DateTime))
INSERT [dbo].[Logs] ([id], [message], [row_number], [file_name], [created_at]) VALUES (7, N'java.lang.RuntimeException:No file found in directory D:/DEE NITIP/Jobseeker/delman.io/Textfile', NULL, NULL, CAST(N'2021-09-23T06:51:25.103' AS DateTime))
SET IDENTITY_INSERT [dbo].[Logs] OFF
GO
