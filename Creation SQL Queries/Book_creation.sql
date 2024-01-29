USE [GarvityBooksDWH]
GO

/****** Object:  Table [dbo].[Book]    Script Date: 1/27/2024 2:52:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Book](
	[Bood_id_sk] [int] IDENTITY(1,1) NOT NULL,
	[book_id_BK] [int] NOT NULL,
	[title] [varchar](400) NULL,
	[isbn13] [varchar](13) NULL,
	[language_id] [int] NULL,
	[language_code] [varchar](8) NULL,
	[language_name] [varchar](50) NULL,
	[is_cur] [int] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[num_pages] [int] NULL,
	[publication_date] [date] NULL,
	[publisherID_BK] [int] NULL,
	[publisher_name] [nvarchar](1000) NULL,
	[source_sy_code] [tinyint] NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[Bood_id_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [DF_Book_is_cur]  DEFAULT ((1)) FOR [is_cur]
GO

