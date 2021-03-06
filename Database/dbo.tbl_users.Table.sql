USE [delman_io]
GO
/****** Object:  Table [dbo].[tbl_users]    Script Date: 23/09/2021 06:54:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[handphone] [numeric](13, 0) NOT NULL,
	[place_of_birth] [varchar](200) NULL,
	[date_of_birth] [date] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK__tbl_user__0EE6263D35A7E174] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[name] ASC,
	[handphone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_users] ON 

INSERT [dbo].[tbl_users] ([id], [name], [handphone], [place_of_birth], [date_of_birth], [created_at], [updated_at]) VALUES (1, N'Rose', CAST(83356768888 AS Numeric(13, 0)), N'Mojokerto', CAST(N'1999-05-02' AS Date), CAST(N'2021-09-23T06:50:19.000' AS DateTime), NULL)
INSERT [dbo].[tbl_users] ([id], [name], [handphone], [place_of_birth], [date_of_birth], [created_at], [updated_at]) VALUES (2, N'Jiso', CAST(87655556876 AS Numeric(13, 0)), N'Sikka', CAST(N'1998-09-09' AS Date), CAST(N'2021-09-23T06:50:19.000' AS DateTime), NULL)
INSERT [dbo].[tbl_users] ([id], [name], [handphone], [place_of_birth], [date_of_birth], [created_at], [updated_at]) VALUES (3, N'Seulgi', CAST(82266784467 AS Numeric(13, 0)), N'Wakatobi', CAST(N'2000-02-02' AS Date), CAST(N'2021-09-23T06:50:19.000' AS DateTime), NULL)
INSERT [dbo].[tbl_users] ([id], [name], [handphone], [place_of_birth], [date_of_birth], [created_at], [updated_at]) VALUES (4, N'Yeri', CAST(85672223344 AS Numeric(13, 0)), N'Morowali Utara', CAST(N'2004-09-20' AS Date), CAST(N'2021-09-23T06:50:19.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tbl_users] OFF
GO
