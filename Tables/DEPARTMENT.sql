USE [dbdf]
GO

/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 01/19/2012 16:14:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[DEPARTMENT](
	[DEPT_ID] [numeric](3, 0) NOT NULL,
	[DEPT_TITLE] [varchar](25) NOT NULL,
	[CENTER] [numeric](18, 0) NULL,
 CONSTRAINT [PK_DEPARTMENT] PRIMARY KEY CLUSTERED 
(
	[DEPT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[DEPARTMENT]  WITH CHECK ADD  CONSTRAINT [FK_DEPT_CENTER_CENTER] FOREIGN KEY([CENTER])
REFERENCES [dbo].[CENTER] ([C_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[DEPARTMENT] CHECK CONSTRAINT [FK_DEPT_CENTER_CENTER]
GO

