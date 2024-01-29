USE [GarvityBooksDWH]
GO

/****** Object:  Table [dbo].[Customer]    Script Date: 1/27/2024 2:53:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer](
	[customer_id_sk] [int] IDENTITY(1,1) NOT NULL,
	[customer_id_BK] [int] NULL,
	[Fname] [varchar](200) NULL,
	[Lname] [varchar](200) NULL,
	[email] [varchar](350) NULL,
	[is_curr] [int] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[customer_id_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_is_curr]  DEFAULT ((1)) FOR [is_curr]
GO

