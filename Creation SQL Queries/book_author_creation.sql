USE [GarvityBooksDWH]
GO

/****** Object:  Table [dbo].[Book_author]    Script Date: 1/27/2024 2:52:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Book_author](
	[book_author_sk] [int] IDENTITY(1,1) NOT NULL,
	[author_fk] [int] NULL,
	[book_id_fk] [int] NULL,
	[source_sy_code] [tinyint] NULL,
 CONSTRAINT [PK_Book_author] PRIMARY KEY CLUSTERED 
(
	[book_author_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Book_author]  WITH CHECK ADD  CONSTRAINT [FK_Book_author_author] FOREIGN KEY([author_fk])
REFERENCES [dbo].[author] ([author_sk])
GO

ALTER TABLE [dbo].[Book_author] CHECK CONSTRAINT [FK_Book_author_author]
GO

ALTER TABLE [dbo].[Book_author]  WITH CHECK ADD  CONSTRAINT [FK_Book_author_Book] FOREIGN KEY([book_id_fk])
REFERENCES [dbo].[Book] ([Bood_id_sk])
GO

ALTER TABLE [dbo].[Book_author] CHECK CONSTRAINT [FK_Book_author_Book]
GO

