USE [dbdf]
GO

/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 01/19/2012 15:39:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[EMPLOYEE](
	[ID_NUM] [varchar](10) NOT NULL,
	[AMKA] [bigint] NOT NULL,
	[AFM] [bigint] NOT NULL,
	[BIRTH_DATE] [date] NOT NULL,
	[HIRE_DATE] [date] NOT NULL,
	[SALARY] [money] NOT NULL,
	[WORKING_DEPT] [numeric](3, 0) NOT NULL,
	[ID] [char](10) NOT NULL,
	[IS_SUPERVISOR] [bit] NOT NULL,
 CONSTRAINT [PK_EMPLOYEE] PRIMARY KEY CLUSTERED 
(
	[ID_NUM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

