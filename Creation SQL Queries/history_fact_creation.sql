USE [GarvityBooksDWH]
GO

/****** Object:  Table [dbo].[orders_History]    Script Date: 1/27/2024 2:56:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[orders_History](
	[order_id_bk] [nchar](10) NOT NULL,
	[Recieved_At] [datetime] NULL,
	[Pending_delivery_at] [datetime] NULL,
	[Delivery_in_progress_at] [datetime] NULL,
	[Delivered_at] [datetime] NULL,
	[returned_at] [datetime] NULL,
	[cancelled_at] [datetime] NULL,
	[created_at] [datetime] NULL,
	[Recieved_At_fk] [int] NULL,
	[Pending_delivery_at_fk] [int] NULL,
	[Delivery_in_progress_at_fk] [int] NULL,
	[Delivered_at_fk] [int] NULL,
	[returned_at_fk] [int] NULL,
	[cancelled_at_fk] [int] NULL,
 CONSTRAINT [PK_orders_History] PRIMARY KEY CLUSTERED 
(
	[order_id_bk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[orders_History]  WITH CHECK ADD  CONSTRAINT [FK_orders_History_DimDate] FOREIGN KEY([Recieved_At_fk])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[orders_History] CHECK CONSTRAINT [FK_orders_History_DimDate]
GO

ALTER TABLE [dbo].[orders_History]  WITH CHECK ADD  CONSTRAINT [FK_orders_History_DimDate1] FOREIGN KEY([Pending_delivery_at_fk])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[orders_History] CHECK CONSTRAINT [FK_orders_History_DimDate1]
GO

ALTER TABLE [dbo].[orders_History]  WITH CHECK ADD  CONSTRAINT [FK_orders_History_DimDate2] FOREIGN KEY([Delivery_in_progress_at_fk])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[orders_History] CHECK CONSTRAINT [FK_orders_History_DimDate2]
GO

ALTER TABLE [dbo].[orders_History]  WITH CHECK ADD  CONSTRAINT [FK_orders_History_DimDate3] FOREIGN KEY([Delivered_at_fk])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[orders_History] CHECK CONSTRAINT [FK_orders_History_DimDate3]
GO

ALTER TABLE [dbo].[orders_History]  WITH CHECK ADD  CONSTRAINT [FK_orders_History_DimDate4] FOREIGN KEY([returned_at_fk])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[orders_History] CHECK CONSTRAINT [FK_orders_History_DimDate4]
GO

ALTER TABLE [dbo].[orders_History]  WITH CHECK ADD  CONSTRAINT [FK_orders_History_DimDate5] FOREIGN KEY([cancelled_at_fk])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[orders_History] CHECK CONSTRAINT [FK_orders_History_DimDate5]
GO

