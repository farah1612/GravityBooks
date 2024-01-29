USE [GarvityBooksDWH]
GO

/****** Object:  Table [dbo].[order_line]    Script Date: 1/27/2024 2:55:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[order_line](
	[line_id_sk] [int] IDENTITY(1,1) NOT NULL,
	[line_id_bk] [int] NOT NULL,
	[order_id_bk] [int] NULL,
	[book_id_bk] [int] NULL,
	[price] [decimal](5, 2) NULL,
 CONSTRAINT [PK__order_li__15110FE95236C4DE] PRIMARY KEY CLUSTERED 
(
	[line_id_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[order_line]  WITH CHECK ADD  CONSTRAINT [FK_order_line_Book] FOREIGN KEY([book_id_bk])
REFERENCES [dbo].[Book] ([Bood_id_sk])
GO

ALTER TABLE [dbo].[order_line] CHECK CONSTRAINT [FK_order_line_Book]
GO

