USE [GarvityBooksDWH]
GO

/****** Object:  Table [dbo].[order_status]    Script Date: 1/27/2024 2:56:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[order_status](
	[status_value] [varchar](50) NULL,
	[status_sk] [int] IDENTITY(1,1) NOT NULL,
	[is_curr] [int] NULL,
	[starr_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[source_sy_code] [tinyint] NULL,
 CONSTRAINT [PK_order_status] PRIMARY KEY CLUSTERED 
(
	[status_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[order_status] ADD  CONSTRAINT [DF_order_status_is_curr]  DEFAULT ((1)) FOR [is_curr]
GO

