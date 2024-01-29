USE [GarvityBooksDWH]
GO

/****** Object:  Table [dbo].[meta_control_fact_load]    Script Date: 1/27/2024 2:54:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[meta_control_fact_load](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[last_load_date] [datetime] NULL,
	[line_id_fk] [int] NULL,
 CONSTRAINT [PK__meta_con__3213E83FEA4C10BF] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[meta_control_fact_load] ADD  CONSTRAINT [DF_meta_control_fact_load_last_load_date]  DEFAULT ('1/1/1900 00:00:00') FOR [last_load_date]
GO

ALTER TABLE [dbo].[meta_control_fact_load]  WITH CHECK ADD  CONSTRAINT [FK_meta_control_fact_load_order_line] FOREIGN KEY([line_id_fk])
REFERENCES [dbo].[order_line] ([line_id_sk])
GO

ALTER TABLE [dbo].[meta_control_fact_load] CHECK CONSTRAINT [FK_meta_control_fact_load_order_line]
GO

