USE [GarvityBooksDWH]
GO

/****** Object:  Table [dbo].[author]    Script Date: 1/27/2024 2:51:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[author](
	[author_sk] [int] IDENTITY(1,1) NOT NULL,
	[author_bk] [int] NULL,
	[author_name] [varchar](400) NULL,
	[is_curr] [int] NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[source_sy_code] [tinyint] NULL,
 CONSTRAINT [PK_author dim] PRIMARY KEY CLUSTERED 
(
	[author_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[author] ADD  CONSTRAINT [DF_author dim_is_curr]  DEFAULT ((1)) FOR [is_curr]
GO

