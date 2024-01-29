USE [GarvityBooksDWH]
GO

/****** Object:  Table [dbo].[cutomer_address]    Script Date: 1/27/2024 2:53:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[cutomer_address](
	[customer_address_sk] [int] IDENTITY(1,1) NOT NULL,
	[cust_id_fk] [int] NULL,
	[address_status] [varchar](30) NULL,
	[address_id_fk] [int] NULL,
	[address_status_id_bk] [int] NULL,
 CONSTRAINT [PK_cutomer_address] PRIMARY KEY CLUSTERED 
(
	[customer_address_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[cutomer_address]  WITH CHECK ADD  CONSTRAINT [FK_cutomer_address_address] FOREIGN KEY([address_id_fk])
REFERENCES [dbo].[address] ([address_sk])
GO

ALTER TABLE [dbo].[cutomer_address] CHECK CONSTRAINT [FK_cutomer_address_address]
GO

ALTER TABLE [dbo].[cutomer_address]  WITH CHECK ADD  CONSTRAINT [FK_cutomer_address_Customer] FOREIGN KEY([cust_id_fk])
REFERENCES [dbo].[Customer] ([customer_id_sk])
GO

ALTER TABLE [dbo].[cutomer_address] CHECK CONSTRAINT [FK_cutomer_address_Customer]
GO

