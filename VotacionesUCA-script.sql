USE [VotacionesUCA]
GO

CREATE TABLE [dbo].[Candidatos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdEstudiante] [int] NULL,
	[NombreCandidato] [varchar](50) NULL,
	[IdVotacion] [int] NULL,
	[VotosObtenidos] [int] NULL CONSTRAINT [DF_Candidatos_VotosObtenidos]  DEFAULT ((0)),
 CONSTRAINT [PK_Candidatos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Estudiantes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodGrupo] [varchar](20) NULL,
	[NombreCompleto] [varchar](50) NULL,
	[NumCarnet] [varchar](20) NULL,
 CONSTRAINT [PK_Estudiantes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](20) NULL,
	[Clave] [varchar](50) NULL,
	[Gestiona] [bit] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


CREATE TABLE [dbo].[Votaciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[CodGrupo] [varchar](20) NULL,
	[Abierto] [bit] NOT NULL,
 CONSTRAINT [PK_Votaciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


CREATE TABLE [dbo].[Votos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdEstudiante] [int] NULL,
	[IdVotacion] [int] NULL,
 CONSTRAINT [PK_Votos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET IDENTITY_INSERT [dbo].[Estudiantes] ON 

GO
INSERT [dbo].[Estudiantes] ([Id], [CodGrupo], [NombreCompleto], [NumCarnet]) VALUES (1, N'101', N'Rafael Owens', N'23015')
GO
INSERT [dbo].[Estudiantes] ([Id], [CodGrupo], [NombreCompleto], [NumCarnet]) VALUES (2, N'123', N'Miranda Adams', N'74584')
GO
INSERT [dbo].[Estudiantes] ([Id], [CodGrupo], [NombreCompleto], [NumCarnet]) VALUES (3, N'123', N'Briony Payne', N'36490')
GO
INSERT [dbo].[Estudiantes] ([Id], [CodGrupo], [NombreCompleto], [NumCarnet]) VALUES (4, N'101', N'Lana Brooks', N'76457')
GO
INSERT [dbo].[Estudiantes] ([Id], [CodGrupo], [NombreCompleto], [NumCarnet]) VALUES (5, N'101', N'Robert Elliott', N'26066')
GO
INSERT [dbo].[Estudiantes] ([Id], [CodGrupo], [NombreCompleto], [NumCarnet]) VALUES (6, N'123', N'Sophia Hamilton', N'27240')
GO
INSERT [dbo].[Estudiantes] ([Id], [CodGrupo], [NombreCompleto], [NumCarnet]) VALUES (7, N'123', N'Cristian Smith', N'46499')
GO
INSERT [dbo].[Estudiantes] ([Id], [CodGrupo], [NombreCompleto], [NumCarnet]) VALUES (8, N'101', N'Chester Turner', N'87901')
GO
INSERT [dbo].[Estudiantes] ([Id], [CodGrupo], [NombreCompleto], [NumCarnet]) VALUES (9, N'101', N'Adele Gray', N'12345')
GO
INSERT [dbo].[Estudiantes] ([Id], [CodGrupo], [NombreCompleto], [NumCarnet]) VALUES (10, N'123', N'Kimberly Barrett', N'54179')
GO
INSERT [dbo].[Estudiantes] ([Id], [CodGrupo], [NombreCompleto], [NumCarnet]) VALUES (11, N'123', N'Maddie Montgomery', N'37269')
GO
INSERT [dbo].[Estudiantes] ([Id], [CodGrupo], [NombreCompleto], [NumCarnet]) VALUES (12, N'101', N'Lilliana Foster', N'66389')
GO
INSERT [dbo].[Estudiantes] ([Id], [CodGrupo], [NombreCompleto], [NumCarnet]) VALUES (13, N'123', N'John Dickson', N'77777')
GO
SET IDENTITY_INSERT [dbo].[Estudiantes] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

GO
INSERT [dbo].[Usuarios] ([Id], [Usuario], [Clave], [Gestiona]) VALUES (1, N'admin', N'uca', 1)
GO
INSERT [dbo].[Usuarios] ([Id], [Usuario], [Clave], [Gestiona]) VALUES (2, N'12345', N'isi', 0)
GO
INSERT [dbo].[Usuarios] ([Id], [Usuario], [Clave], [Gestiona]) VALUES (3, N'77777', N'isi', 0)
GO
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Votaciones] ON 

GO
INSERT [dbo].[Votaciones] ([Id], [Descripcion], [CodGrupo], [Abierto]) VALUES (2, N'Elección Representante 2do Semestre 2020', N'123', 1)
GO
INSERT [dbo].[Votaciones] ([Id], [Descripcion], [CodGrupo], [Abierto]) VALUES (3, N'Presidente Grupo 101 - 2021 1S', N'101', 1)
GO
INSERT [dbo].[Votaciones] ([Id], [Descripcion], [CodGrupo], [Abierto]) VALUES (4, N'Rep. 2019 3er Cuatrimestre', N'101', 1)
GO
INSERT [dbo].[Votaciones] ([Id], [Descripcion], [CodGrupo], [Abierto]) VALUES (5, N'Rep. 2019 2C', N'123', 1)
GO
SET IDENTITY_INSERT [dbo].[Votaciones] OFF
GO

SET IDENTITY_INSERT [dbo].[Candidatos] ON 

GO
INSERT [dbo].[Candidatos] ([Id], [IdEstudiante], [NombreCandidato], [IdVotacion], [VotosObtenidos]) VALUES (3, 5, NULL, 3, 0)
GO
INSERT [dbo].[Candidatos] ([Id], [IdEstudiante], [NombreCandidato], [IdVotacion], [VotosObtenidos]) VALUES (4, 12, NULL, 3, 0)
GO
INSERT [dbo].[Candidatos] ([Id], [IdEstudiante], [NombreCandidato], [IdVotacion], [VotosObtenidos]) VALUES (7, 2, NULL, 2, 0)
GO
INSERT [dbo].[Candidatos] ([Id], [IdEstudiante], [NombreCandidato], [IdVotacion], [VotosObtenidos]) VALUES (8, 6, NULL, 2, 0)
GO
INSERT [dbo].[Candidatos] ([Id], [IdEstudiante], [NombreCandidato], [IdVotacion], [VotosObtenidos]) VALUES (9, 1, NULL, 4, 0)
GO
INSERT [dbo].[Candidatos] ([Id], [IdEstudiante], [NombreCandidato], [IdVotacion], [VotosObtenidos]) VALUES (10, 8, NULL, 4, 0)
GO
INSERT [dbo].[Candidatos] ([Id], [IdEstudiante], [NombreCandidato], [IdVotacion], [VotosObtenidos]) VALUES (11, 10, NULL, 5, 0)
GO
INSERT [dbo].[Candidatos] ([Id], [IdEstudiante], [NombreCandidato], [IdVotacion], [VotosObtenidos]) VALUES (12, 11, NULL, 5, 0)
GO
SET IDENTITY_INSERT [dbo].[Candidatos] OFF
GO