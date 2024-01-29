USE [GarvityBooksDWH]
GO

/****** Object:  Table [dbo].[address]    Script Date: 1/27/2024 2:50:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[address](
	[address_sk] [int] IDENTITY(1,1) NOT NULL,
	[stNo] [varchar](10) NULL,
	[stName] [varchar](200) NULL,
	[city] [varchar](100) NULL,
	[countryName] [varchar](200) NULL,
	[is_curr] [int] NULL,
	[startDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[address_bk] [int] NULL,
	[country_id] [int] NULL,
 CONSTRAINT [PK_address] PRIMARY KEY CLUSTERED 
(
	[address_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[address] ADD  CONSTRAINT [DF_address_is_curr]  DEFAULT ((1)) FOR [is_curr]
GO


