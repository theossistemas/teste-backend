USE [LivrariaContext]
GO
/****** Object:  Table [dbo].[Autor]    Script Date: 14/03/2019 17:28:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autor](
	[AutorId] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NULL,
 CONSTRAINT [PK_Autor] PRIMARY KEY CLUSTERED 
(
	[AutorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 14/03/2019 17:28:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[CategoriaId] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[CategoriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Livro]    Script Date: 14/03/2019 17:28:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Livro](
	[LivroId] [int] IDENTITY(1,1) NOT NULL,
	[AutorId] [int] NOT NULL,
	[CategoriaId] [int] NOT NULL,
	[Titulo] [nvarchar](max) NULL,
	[Valor] [real] NOT NULL,
	[DataCadastro] [datetime2](7) NOT NULL,
	[DataAlteracao] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Livro] PRIMARY KEY CLUSTERED 
(
	[LivroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 14/03/2019 17:28:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfil](
	[PerfilId] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nvarchar](max) NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[PerfilId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 14/03/2019 17:28:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[UsuarioId] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Senha] [nvarchar](max) NULL,
	[PerfilId] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Autor] ON 

INSERT [dbo].[Autor] ([AutorId], [Nome]) VALUES (1, N'Otavio')
INSERT [dbo].[Autor] ([AutorId], [Nome]) VALUES (2, N'Cleber')
INSERT [dbo].[Autor] ([AutorId], [Nome]) VALUES (4, N'Juca')
INSERT [dbo].[Autor] ([AutorId], [Nome]) VALUES (5, N'Milton')
INSERT [dbo].[Autor] ([AutorId], [Nome]) VALUES (6, N'Carlos Bill')
SET IDENTITY_INSERT [dbo].[Autor] OFF
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([CategoriaId], [Descricao]) VALUES (1, N'Programação')
INSERT [dbo].[Categoria] ([CategoriaId], [Descricao]) VALUES (2, N'História')
INSERT [dbo].[Categoria] ([CategoriaId], [Descricao]) VALUES (3, N'Aventura')
INSERT [dbo].[Categoria] ([CategoriaId], [Descricao]) VALUES (4, N'Suspense')
INSERT [dbo].[Categoria] ([CategoriaId], [Descricao]) VALUES (5, N'Comedia')
INSERT [dbo].[Categoria] ([CategoriaId], [Descricao]) VALUES (6, N'Esportes')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
SET IDENTITY_INSERT [dbo].[Livro] ON 

INSERT [dbo].[Livro] ([LivroId], [AutorId], [CategoriaId], [Titulo], [Valor], [DataCadastro], [DataAlteracao]) VALUES (1, 2, 1, N'SQL SERVER 2017', 100, CAST(N'2019-03-14T14:51:28.7475181' AS DateTime2), CAST(N'2019-03-14T15:15:02.9491125' AS DateTime2))
INSERT [dbo].[Livro] ([LivroId], [AutorId], [CategoriaId], [Titulo], [Valor], [DataCadastro], [DataAlteracao]) VALUES (2, 1, 1, N'DDD .NET 2', 50, CAST(N'2019-03-14T15:02:04.6170647' AS DateTime2), CAST(N'2019-03-14T15:03:52.9645163' AS DateTime2))
INSERT [dbo].[Livro] ([LivroId], [AutorId], [CategoriaId], [Titulo], [Valor], [DataCadastro], [DataAlteracao]) VALUES (3, 6, 5, N'ELES E ELAS', 20, CAST(N'2019-03-14T15:08:09.9506704' AS DateTime2), CAST(N'2019-03-14T15:08:32.3416832' AS DateTime2))
INSERT [dbo].[Livro] ([LivroId], [AutorId], [CategoriaId], [Titulo], [Valor], [DataCadastro], [DataAlteracao]) VALUES (4, 4, 3, N'CASA AZUL', 34, CAST(N'2019-03-14T15:14:01.9676323' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Livro] ([LivroId], [AutorId], [CategoriaId], [Titulo], [Valor], [DataCadastro], [DataAlteracao]) VALUES (5, 1, 5, N'MONSTROS', 41, CAST(N'2019-03-14T15:14:24.2659111' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Livro] ([LivroId], [AutorId], [CategoriaId], [Titulo], [Valor], [DataCadastro], [DataAlteracao]) VALUES (6, 5, 2, N'Porquê?', 50, CAST(N'2019-03-14T15:18:36.2206316' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Livro] OFF
SET IDENTITY_INSERT [dbo].[Perfil] ON 

INSERT [dbo].[Perfil] ([PerfilId], [Descricao]) VALUES (1, N'amdin')
SET IDENTITY_INSERT [dbo].[Perfil] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([UsuarioId], [Nome], [Email], [Senha], [PerfilId]) VALUES (1, N'Rafael', N'rafael@email.com', N'1234', 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
ALTER TABLE [dbo].[Livro]  WITH CHECK ADD  CONSTRAINT [FK_Livro_Autor_AutorId] FOREIGN KEY([AutorId])
REFERENCES [dbo].[Autor] ([AutorId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Livro] CHECK CONSTRAINT [FK_Livro_Autor_AutorId]
GO
ALTER TABLE [dbo].[Livro]  WITH CHECK ADD  CONSTRAINT [FK_Livro_Categoria_CategoriaId] FOREIGN KEY([CategoriaId])
REFERENCES [dbo].[Categoria] ([CategoriaId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Livro] CHECK CONSTRAINT [FK_Livro_Categoria_CategoriaId]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Perfil_PerfilId] FOREIGN KEY([PerfilId])
REFERENCES [dbo].[Perfil] ([PerfilId])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Perfil_PerfilId]
GO
