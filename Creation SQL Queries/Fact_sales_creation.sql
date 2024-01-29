USE [GarvityBooksDWH]
GO

/****** Object:  Table [dbo].[Sales_fact_table]    Script Date: 1/27/2024 2:57:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Sales_fact_table](
	[sales_sk] [int] IDENTITY(1,1) NOT NULL,
	[price] [int] NULL,
	[date_fk] [int] NULL,
	[line_id_fk] [int] NULL,
	[customer_id_fk] [int] NULL,
	[method_fk] [int] NULL,
	[created_at] [datetime] NULL,
	[order_date_bk] [date] NULL,
 CONSTRAINT [PK_Sales_fact_table] PRIMARY KEY CLUSTERED 
(
	[sales_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Sales_fact_table]  WITH CHECK ADD  CONSTRAINT [FK_Sales_fact_table_Customer] FOREIGN KEY([customer_id_fk])
REFERENCES [dbo].[Customer] ([customer_id_sk])
GO

ALTER TABLE [dbo].[Sales_fact_table] CHECK CONSTRAINT [FK_Sales_fact_table_Customer]
GO

ALTER TABLE [dbo].[Sales_fact_table]  WITH CHECK ADD  CONSTRAINT [FK_Sales_fact_table_DimDate1] FOREIGN KEY([date_fk])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[Sales_fact_table] CHECK CONSTRAINT [FK_Sales_fact_table_DimDate1]
GO

ALTER TABLE [dbo].[Sales_fact_table]  WITH CHECK ADD  CONSTRAINT [FK_Sales_fact_table_order_line] FOREIGN KEY([line_id_fk])
REFERENCES [dbo].[order_line] ([line_id_sk])
GO

ALTER TABLE [dbo].[Sales_fact_table] CHECK CONSTRAINT [FK_Sales_fact_table_order_line]
GO

ALTER TABLE [dbo].[Sales_fact_table]  WITH CHECK ADD  CONSTRAINT [FK_Sales_fact_table_shipping_method] FOREIGN KEY([method_fk])
REFERENCES [dbo].[shipping_method] ([method_id_sk])
GO

ALTER TABLE [dbo].[Sales_fact_table] CHECK CONSTRAINT [FK_Sales_fact_table_shipping_method]
GO

