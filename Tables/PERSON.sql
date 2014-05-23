USE [dbdf]
GO

/****** Object:  Table [dbo].[PERSON]    Script Date: 01/19/2012 15:42:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[PERSON](
	[ID] [char](10) NOT NULL,
	[NAME] [varchar](50) NOT NULL,
	[ADDRESS] [varchar](50) NOT NULL,
	[POSTAL_CODE] [numeric](5, 0) NOT NULL,
	[TEL_NUM] [numeric](10, 0) NOT NULL,
	[CITY] [varchar](20) NOT NULL,
 CONSTRAINT [PK_PERSON] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
