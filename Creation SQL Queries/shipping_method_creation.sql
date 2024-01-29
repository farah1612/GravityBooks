USE [GarvityBooksDWH]
GO

/****** Object:  Table [dbo].[shipping_method]    Script Date: 1/27/2024 2:58:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[shipping_method](
	[method_id_sk] [int] IDENTITY(1,1) NOT NULL,
	[method_name] [varchar](100) NULL,
	[cost] [decimal](6, 2) NULL,
	[is_curr] [int] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[method_bk] [int] NULL,
 CONSTRAINT [PK_shipping_method] PRIMARY KEY CLUSTERED 
(
	[method_id_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[shipping_method] ADD  CONSTRAINT [DF_shipping_method_is_curr]  DEFAULT ((1)) FOR [is_curr]
GO

