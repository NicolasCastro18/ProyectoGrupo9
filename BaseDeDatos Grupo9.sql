USE [master]
GO
/****** Object:  Database [Proyecto PAV]    Script Date: 18/11/2021 19:04:48 ******/
CREATE DATABASE [Proyecto PAV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyecto PAV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Proyecto PAV.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Proyecto PAV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Proyecto PAV_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Proyecto PAV] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyecto PAV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proyecto PAV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proyecto PAV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proyecto PAV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proyecto PAV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proyecto PAV] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proyecto PAV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Proyecto PAV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proyecto PAV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proyecto PAV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proyecto PAV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proyecto PAV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proyecto PAV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proyecto PAV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proyecto PAV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proyecto PAV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Proyecto PAV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proyecto PAV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proyecto PAV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proyecto PAV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proyecto PAV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proyecto PAV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proyecto PAV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proyecto PAV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Proyecto PAV] SET  MULTI_USER 
GO
ALTER DATABASE [Proyecto PAV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proyecto PAV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proyecto PAV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proyecto PAV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Proyecto PAV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Proyecto PAV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Proyecto PAV] SET QUERY_STORE = OFF
GO
USE [Proyecto PAV]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 18/11/2021 19:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[id_area] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[borrado] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 18/11/2021 19:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[id_ciudad] [int] IDENTITY(1,1) NOT NULL,
	[provincia] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[id_ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 18/11/2021 19:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudades](
	[id_ciudad] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[provincia] [int] NOT NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Ciudades] PRIMARY KEY CLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallesTurnos]    Script Date: 18/11/2021 19:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesTurnos](
	[id_detalleTurno] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[id_turno] [int] NULL,
 CONSTRAINT [PK_DetallesTurnos] PRIMARY KEY CLUSTERED 
(
	[id_detalleTurno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 18/11/2021 19:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[id_empleado] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](50) NULL,
	[contraseña] [varchar](50) NULL,
	[mail] [varchar](50) NULL,
	[borrado] [bit] NULL,
	[rol] [varchar](50) NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipos]    Script Date: 18/11/2021 19:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipos](
	[id_equipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[borrado] [bit] NULL,
	[area] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 18/11/2021 19:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidad](
	[id_especialidad] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
(
	[id_especialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudio]    Script Date: 18/11/2021 19:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudio](
	[id_estudio] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[borrado] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horas]    Script Date: 18/11/2021 19:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horas](
	[borrado] [bit] NULL,
	[nombre] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medico]    Script Date: 18/11/2021 19:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medico](
	[id_medico] [int] IDENTITY(1,1) NOT NULL,
	[matricula] [int] NULL,
	[honorarios] [int] NULL,
	[especialidad] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[telefono] [int] NULL,
	[mail] [varchar](50) NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [PK_Medico] PRIMARY KEY CLUSTERED 
(
	[id_medico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ObraSocial]    Script Date: 18/11/2021 19:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ObraSocial](
	[id_obra_social] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Obra Social] PRIMARY KEY CLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 18/11/2021 19:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacientes](
	[id_paciente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[dni] [int] NULL,
	[fecha_nacimiento] [date] NULL,
	[calle] [varchar](50) NULL,
	[altura_Calle] [int] NULL,
	[obra_social] [varchar](50) NULL,
	[ciudad] [varchar](50) NULL,
	[provincia] [varchar](50) NULL,
	[borrado] [bit] NULL,
	[mail] [varchar](50) NULL,
 CONSTRAINT [PK_Pacientes] PRIMARY KEY CLUSTERED 
(
	[id_paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 18/11/2021 19:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[id_provincia] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Provincias] PRIMARY KEY CLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 18/11/2021 19:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[id_rol] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipos]    Script Date: 18/11/2021 19:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipos](
	[id_tipo_consulta] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[borrado] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turnos]    Script Date: 18/11/2021 19:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turnos](
	[id_turno] [int] IDENTITY(1,1) NOT NULL,
	[nombre_paciente] [varchar](50) NULL,
	[apellido_paciente] [varchar](50) NULL,
	[fecha] [date] NULL,
	[hora] [varchar](50) NULL,
	[medico] [varchar](50) NULL,
	[estudio] [varchar](50) NULL,
	[equipo] [varchar](50) NULL,
	[borrado] [bit] NULL,
	[obra_social] [varchar](50) NULL,
	[costo] [int] NULL,
 CONSTRAINT [PK_Turnos] PRIMARY KEY CLUSTERED 
(
	[id_turno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Area] ON 

INSERT [dbo].[Area] ([id_area], [nombre], [borrado]) VALUES (1, N'Pabellon 1', 0)
INSERT [dbo].[Area] ([id_area], [nombre], [borrado]) VALUES (2, N'Primer Piso', 0)
INSERT [dbo].[Area] ([id_area], [nombre], [borrado]) VALUES (3, N'SubSuelo', 0)
INSERT [dbo].[Area] ([id_area], [nombre], [borrado]) VALUES (4, N'Pabellon 2 hermanas', 0)
SET IDENTITY_INSERT [dbo].[Area] OFF
GO
SET IDENTITY_INSERT [dbo].[Ciudad] ON 

INSERT [dbo].[Ciudad] ([id_ciudad], [provincia], [nombre], [borrado]) VALUES (1, N'Cordoba', N'Rio Segundo', 0)
INSERT [dbo].[Ciudad] ([id_ciudad], [provincia], [nombre], [borrado]) VALUES (4, N'Cordoba', N'Villa del Rosario', 0)
INSERT [dbo].[Ciudad] ([id_ciudad], [provincia], [nombre], [borrado]) VALUES (8, N'Cordoba', N'San Carlos Mina', 0)
SET IDENTITY_INSERT [dbo].[Ciudad] OFF
GO
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (31, N'Achiras', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (40, N'Alma Fuerte', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (2, N'Alta Gracia', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (10, N'Arrollito', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (13, N'Bell Ville', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (20, N'Capilla del Monte', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (5, N'Carloz Paz', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (44, N'Cerro Colorado', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (15, N'Colonia Carolla', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (1, N'Cordoba', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (3, N'Cosquin', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (4, N'Cruz del Eje', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (37, N'Cura Brochero', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (18, N'Dean Funes', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (32, N'Embalse', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (27, N'Huerta Grande', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (6, N'Jesus Maria', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (43, N'Juarez Celman', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (12, N'La Boulaye', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (14, N'La Calera', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (22, N'La Carlota', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (48, N'La Cumbre', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (26, N'La Cumbrecita', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (11, N'La Falda', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (19, N'Las Varillas', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (41, N'Leones', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (46, N'Los Cerrillos', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (47, N'Los Hornillos', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (42, N'Malagueño', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (21, N'Marco Juarea', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (38, N'Mina Clavero', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (16, N'Morteros', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (29, N'Nono', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (23, N'Oliva ', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (28, N'Oncativo', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (35, N'Rio Ceballos', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (7, N'Rio Cuarto', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (30, N'Rio Segundo', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (25, N'Rio Tercero', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (9, N'San Francisco', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (45, N'Santa Rosa', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (36, N'Totoral', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (49, N'Unquillo', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (24, N'Vialet Masse', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (34, N'Villa Allende', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (33, N'Villa del Rosario', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (17, N'Villa Dolores', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (39, N'Villa General Belgrano', 1, 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [provincia], [borrado]) VALUES (8, N'Villa Maria', 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([nombre], [apellido], [id_empleado], [usuario], [contraseña], [mail], [borrado], [rol]) VALUES (N'Nicolas', N'Castro Cervantes', 1, N'nicocastro', N'luis1912', N'nicocastro@gmail.com', 0, N'Administrador')
INSERT [dbo].[Empleados] ([nombre], [apellido], [id_empleado], [usuario], [contraseña], [mail], [borrado], [rol]) VALUES (N'Alejo', N'Mercado', 6, N'amercado', N'alepub', N'', 0, N'Administrador')
INSERT [dbo].[Empleados] ([nombre], [apellido], [id_empleado], [usuario], [contraseña], [mail], [borrado], [rol]) VALUES (N'Claudia ', N'Cervantes', 12, N'ccervantes', N'nicolas', N'', 0, N'Secretario')
INSERT [dbo].[Empleados] ([nombre], [apellido], [id_empleado], [usuario], [contraseña], [mail], [borrado], [rol]) VALUES (N'Martin', N'Perez', 13, N'mperez', N'martin2015', N'martinpere@gmail.com', 0, N'Especialista')
INSERT [dbo].[Empleados] ([nombre], [apellido], [id_empleado], [usuario], [contraseña], [mail], [borrado], [rol]) VALUES (N'Luis', N'Suarez', 14, N'lsuarez', N'lsuarez', N'luisito@gmail.com', 0, N'Secretario')
INSERT [dbo].[Empleados] ([nombre], [apellido], [id_empleado], [usuario], [contraseña], [mail], [borrado], [rol]) VALUES (N'Joaquin', N'Manero', 15, N'jmanero', N'jmanero', N'dsda', 0, N'Gerente')
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipos] ON 

INSERT [dbo].[Equipos] ([id_equipo], [nombre], [borrado], [area]) VALUES (1, N'Ecografo 1', 0, N'Primer Piso')
INSERT [dbo].[Equipos] ([id_equipo], [nombre], [borrado], [area]) VALUES (2, N'Radiografo 1', 0, N'Primer Piso')
INSERT [dbo].[Equipos] ([id_equipo], [nombre], [borrado], [area]) VALUES (3, N'Mamomografo 1', 0, N'Primer Piso')
SET IDENTITY_INSERT [dbo].[Equipos] OFF
GO
SET IDENTITY_INSERT [dbo].[Especialidad] ON 

INSERT [dbo].[Especialidad] ([id_especialidad], [nombre], [borrado]) VALUES (1, N'cardiologia', 0)
INSERT [dbo].[Especialidad] ([id_especialidad], [nombre], [borrado]) VALUES (2, N'oncologia', 0)
INSERT [dbo].[Especialidad] ([id_especialidad], [nombre], [borrado]) VALUES (3, N'ginecologia', 0)
INSERT [dbo].[Especialidad] ([id_especialidad], [nombre], [borrado]) VALUES (4, N'traumatologia', 0)
INSERT [dbo].[Especialidad] ([id_especialidad], [nombre], [borrado]) VALUES (5, N'pediatria', 0)
INSERT [dbo].[Especialidad] ([id_especialidad], [nombre], [borrado]) VALUES (6, N'imagenes', 0)
SET IDENTITY_INSERT [dbo].[Especialidad] OFF
GO
SET IDENTITY_INSERT [dbo].[Estudio] ON 

INSERT [dbo].[Estudio] ([id_estudio], [nombre], [borrado]) VALUES (1, N'Consulta', 0)
INSERT [dbo].[Estudio] ([id_estudio], [nombre], [borrado]) VALUES (2, N'Ecografia', 0)
INSERT [dbo].[Estudio] ([id_estudio], [nombre], [borrado]) VALUES (3, N'Radiografia', 0)
INSERT [dbo].[Estudio] ([id_estudio], [nombre], [borrado]) VALUES (4, N'Mamografia', 0)
INSERT [dbo].[Estudio] ([id_estudio], [nombre], [borrado]) VALUES (5, N'Resonancia', 0)
SET IDENTITY_INSERT [dbo].[Estudio] OFF
GO
INSERT [dbo].[Horas] ([borrado], [nombre]) VALUES (0, N'8:00')
INSERT [dbo].[Horas] ([borrado], [nombre]) VALUES (0, N'8:30')
INSERT [dbo].[Horas] ([borrado], [nombre]) VALUES (0, N'9:00')
INSERT [dbo].[Horas] ([borrado], [nombre]) VALUES (0, N'9:30')
INSERT [dbo].[Horas] ([borrado], [nombre]) VALUES (0, N'10:00')
INSERT [dbo].[Horas] ([borrado], [nombre]) VALUES (0, N'10:30')
INSERT [dbo].[Horas] ([borrado], [nombre]) VALUES (0, N'11:00')
INSERT [dbo].[Horas] ([borrado], [nombre]) VALUES (0, N'11:30')
INSERT [dbo].[Horas] ([borrado], [nombre]) VALUES (0, N'12:00')
INSERT [dbo].[Horas] ([borrado], [nombre]) VALUES (0, N'12:30')
INSERT [dbo].[Horas] ([borrado], [nombre]) VALUES (0, N'13:00')
GO
SET IDENTITY_INSERT [dbo].[Medico] ON 

INSERT [dbo].[Medico] ([id_medico], [matricula], [honorarios], [especialidad], [nombre], [apellido], [telefono], [mail], [borrado]) VALUES (5, 8899, 150, N'cardiologia', N'Nicolas', N'Castro', 351234, N'nicocc@hotmail.com', 0)
INSERT [dbo].[Medico] ([id_medico], [matricula], [honorarios], [especialidad], [nombre], [apellido], [telefono], [mail], [borrado]) VALUES (7, 7563, 200, N'imagenes', N'Martin', N'Caceres', 351475, N'caceresmartin28@gmail.com', 0)
INSERT [dbo].[Medico] ([id_medico], [matricula], [honorarios], [especialidad], [nombre], [apellido], [telefono], [mail], [borrado]) VALUES (8, 3589, 200, N'imagenes', N'Lucas', N'Gomez', 351478, N'lucasgomestra@gmail.com', 0)
INSERT [dbo].[Medico] ([id_medico], [matricula], [honorarios], [especialidad], [nombre], [apellido], [telefono], [mail], [borrado]) VALUES (10, 6312, 500, N'oncologia', N'Luciano', N'Pereyra', 517869, N'lupereyra@hotmail.com', 0)
INSERT [dbo].[Medico] ([id_medico], [matricula], [honorarios], [especialidad], [nombre], [apellido], [telefono], [mail], [borrado]) VALUES (11, 4102, 450, N'traumatologia', N'Karina', N'Barrios', 351478, N'karibarrios@gmail.com', 0)
INSERT [dbo].[Medico] ([id_medico], [matricula], [honorarios], [especialidad], [nombre], [apellido], [telefono], [mail], [borrado]) VALUES (12, 9635, 790, N'imagenes', N'Luis', N'Sanches', 0, N'sanchesluis@gmail.com', 0)
SET IDENTITY_INSERT [dbo].[Medico] OFF
GO
INSERT [dbo].[ObraSocial] ([id_obra_social], [nombre], [borrado]) VALUES (1, N'APROSS', 0)
INSERT [dbo].[ObraSocial] ([id_obra_social], [nombre], [borrado]) VALUES (3, N'OMIN', 0)
INSERT [dbo].[ObraSocial] ([id_obra_social], [nombre], [borrado]) VALUES (2, N'OSDE', 0)
INSERT [dbo].[ObraSocial] ([id_obra_social], [nombre], [borrado]) VALUES (4, N'PAMI', 0)
GO
SET IDENTITY_INSERT [dbo].[Pacientes] ON 

INSERT [dbo].[Pacientes] ([id_paciente], [nombre], [apellido], [dni], [fecha_nacimiento], [calle], [altura_Calle], [obra_social], [ciudad], [provincia], [borrado], [mail]) VALUES (2, N'luis eduardo', N'castro', 20916307, NULL, N'litun', 540, N'APROSS', N'Marco Juarea', N'Cordoba', NULL, N'luisito@gmail.com')
INSERT [dbo].[Pacientes] ([id_paciente], [nombre], [apellido], [dni], [fecha_nacimiento], [calle], [altura_Calle], [obra_social], [ciudad], [provincia], [borrado], [mail]) VALUES (15, N'Alejo Miguel', N'Mercado', 42692162, NULL, N'sierra', 195, N'OSDE', N'Marco Juarea', N'Cordoba', 0, N'pub@gamil')
INSERT [dbo].[Pacientes] ([id_paciente], [nombre], [apellido], [dni], [fecha_nacimiento], [calle], [altura_Calle], [obra_social], [ciudad], [provincia], [borrado], [mail]) VALUES (21, N'Martin', N'Perez', 42978152, NULL, N'Salomone', 895, N'APROSS', N'Rio Ceballos', N'Cordoba', 0, N'martinp@gmail.com')
INSERT [dbo].[Pacientes] ([id_paciente], [nombre], [apellido], [dni], [fecha_nacimiento], [calle], [altura_Calle], [obra_social], [ciudad], [provincia], [borrado], [mail]) VALUES (22, N'Gonzalo', N'Gil', 12456789, NULL, N'Martin Torres', 156, N'PAMI', N'Los Hornillos', N'Cordoba', 0, N'')
INSERT [dbo].[Pacientes] ([id_paciente], [nombre], [apellido], [dni], [fecha_nacimiento], [calle], [altura_Calle], [obra_social], [ciudad], [provincia], [borrado], [mail]) VALUES (23, N'Alejandro', N'Ruiz', 25631489, NULL, N'7 de Septiembtre', 165, N'OSDE', N'Villa Allende', N'Cordoba', 0, N'aleruiz@gmail.com')
INSERT [dbo].[Pacientes] ([id_paciente], [nombre], [apellido], [dni], [fecha_nacimiento], [calle], [altura_Calle], [obra_social], [ciudad], [provincia], [borrado], [mail]) VALUES (1023, N'Martin', N'Torres', 35124924, NULL, N'10 de Octubre', 763, N'APROSS', N'Villa Allende', N'Cordoba', 0, N'mart@gmail.com')
INSERT [dbo].[Pacientes] ([id_paciente], [nombre], [apellido], [dni], [fecha_nacimiento], [calle], [altura_Calle], [obra_social], [ciudad], [provincia], [borrado], [mail]) VALUES (1024, N'Guillermo', N'Castro', 35162489, NULL, N'cerro de los linderos', 56, N'OSDE', N'Cordoba', N'Cordoba', 0, N'guillecastro@gmail.com')
INSERT [dbo].[Pacientes] ([id_paciente], [nombre], [apellido], [dni], [fecha_nacimiento], [calle], [altura_Calle], [obra_social], [ciudad], [provincia], [borrado], [mail]) VALUES (1025, N'Manuel', N'Perez', 156522271, NULL, N'recta martinolli', 5000, N'APROSS', N'Villa Allende', N'Cordoba', 0, N'manuperez@hotmail.com')
INSERT [dbo].[Pacientes] ([id_paciente], [nombre], [apellido], [dni], [fecha_nacimiento], [calle], [altura_Calle], [obra_social], [ciudad], [provincia], [borrado], [mail]) VALUES (1026, N'Hugo', N'Gil', 142569632, NULL, N'padre mariani', 1100, N'PAMI', N'Rio Ceballos', N'Cordoba', 0, NULL)
SET IDENTITY_INSERT [dbo].[Pacientes] OFF
GO
INSERT [dbo].[Provincias] ([id_provincia], [nombre], [borrado]) VALUES (1, N'Cordoba', 0)
GO
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([id_rol], [nombre], [borrado]) VALUES (1, N'Administrador', 0)
INSERT [dbo].[Rol] ([id_rol], [nombre], [borrado]) VALUES (5, N'Especialista', 0)
INSERT [dbo].[Rol] ([id_rol], [nombre], [borrado]) VALUES (2, N'Gerente', 0)
INSERT [dbo].[Rol] ([id_rol], [nombre], [borrado]) VALUES (3, N'Medico', 0)
INSERT [dbo].[Rol] ([id_rol], [nombre], [borrado]) VALUES (4, N'Secretario', 0)
SET IDENTITY_INSERT [dbo].[Rol] OFF
GO
SET IDENTITY_INSERT [dbo].[Turnos] ON 

INSERT [dbo].[Turnos] ([id_turno], [nombre_paciente], [apellido_paciente], [fecha], [hora], [medico], [estudio], [equipo], [borrado], [obra_social], [costo]) VALUES (1, N'Luis', N'Suarez', CAST(N'2021-07-05' AS Date), NULL, N'Gomez', N'Radiografia', N'Radiografo 1', 0, N'OSDE', 200)
INSERT [dbo].[Turnos] ([id_turno], [nombre_paciente], [apellido_paciente], [fecha], [hora], [medico], [estudio], [equipo], [borrado], [obra_social], [costo]) VALUES (2, N'Alejo Miguel', N'Mercado', CAST(N'2021-07-01' AS Date), N'11:00', N'Castro', N'Consulta', N'', 0, N'OSDE', 150)
INSERT [dbo].[Turnos] ([id_turno], [nombre_paciente], [apellido_paciente], [fecha], [hora], [medico], [estudio], [equipo], [borrado], [obra_social], [costo]) VALUES (3, N'Luis', N'Suarez', CAST(N'2021-07-04' AS Date), N'12:00', N'Castro', N'Consulta', N'', 0, N'OSDE', 150)
INSERT [dbo].[Turnos] ([id_turno], [nombre_paciente], [apellido_paciente], [fecha], [hora], [medico], [estudio], [equipo], [borrado], [obra_social], [costo]) VALUES (4, N'Martin', N'Perez', CAST(N'2021-07-06' AS Date), N'11:00', N'Pereyra', N'Consulta', N'', 0, N'APROSS', 500)
INSERT [dbo].[Turnos] ([id_turno], [nombre_paciente], [apellido_paciente], [fecha], [hora], [medico], [estudio], [equipo], [borrado], [obra_social], [costo]) VALUES (5, N'Martin', N'Perez', CAST(N'2021-07-08' AS Date), N'11:00', N'Gomez', N'Ecografia', N'Ecografo 1', 0, N'APROSS', 200)
INSERT [dbo].[Turnos] ([id_turno], [nombre_paciente], [apellido_paciente], [fecha], [hora], [medico], [estudio], [equipo], [borrado], [obra_social], [costo]) VALUES (6, N'Hugo', N'Gil', CAST(N'2021-08-13' AS Date), N'11:30', N'Sanches', N'Mamografia', N'Mamomografo 1', 0, N'PAMI', 790)
INSERT [dbo].[Turnos] ([id_turno], [nombre_paciente], [apellido_paciente], [fecha], [hora], [medico], [estudio], [equipo], [borrado], [obra_social], [costo]) VALUES (7, N'Alejandro', N'Ruiz', CAST(N'2021-11-03' AS Date), N'8:30', N'Caceres', N'Radiografia', N'Radiografo 1', 0, N'OSDE', 200)
INSERT [dbo].[Turnos] ([id_turno], [nombre_paciente], [apellido_paciente], [fecha], [hora], [medico], [estudio], [equipo], [borrado], [obra_social], [costo]) VALUES (8, N'Guillermo', N'Castro', CAST(N'2021-11-03' AS Date), N'9:30', N'Caceres', N'Radiografia', N'Radiografo 1', 0, N'OSDE', 200)
INSERT [dbo].[Turnos] ([id_turno], [nombre_paciente], [apellido_paciente], [fecha], [hora], [medico], [estudio], [equipo], [borrado], [obra_social], [costo]) VALUES (9, N'Manuel', N'Perez', CAST(N'2021-11-19' AS Date), N'10:00', N'Gomez', N'Ecografia', N'Ecografo 1', 0, N'APROSS', 200)
SET IDENTITY_INSERT [dbo].[Turnos] OFF
GO
ALTER TABLE [dbo].[Area] ADD  CONSTRAINT [DF_Area_borrado]  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Ciudad] ADD  CONSTRAINT [DF_Ciudad_borrado]  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Empleados] ADD  CONSTRAINT [DF_Empleados_borrado]  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Equipos] ADD  CONSTRAINT [DF_Equipos_borrado]  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Especialidad] ADD  CONSTRAINT [DF_Especialidad_borrado]  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Estudio] ADD  CONSTRAINT [DF_Estudio_borrado]  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Horas] ADD  CONSTRAINT [DF_Horas_borrado]  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Medico] ADD  CONSTRAINT [DF_Medico_borrado]  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Pacientes] ADD  CONSTRAINT [DF_Pacientes_borrado]  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Rol] ADD  CONSTRAINT [DF_Rol_borrado]  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Turnos] ADD  CONSTRAINT [DF_Turnos_borrado]  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[DetallesTurnos]  WITH CHECK ADD  CONSTRAINT [FK_DetallesTurnos_Turnos] FOREIGN KEY([id_turno])
REFERENCES [dbo].[Turnos] ([id_turno])
GO
ALTER TABLE [dbo].[DetallesTurnos] CHECK CONSTRAINT [FK_DetallesTurnos_Turnos]
GO
ALTER TABLE [dbo].[Pacientes]  WITH CHECK ADD  CONSTRAINT [FK_Pacientes_ObraSocial] FOREIGN KEY([obra_social])
REFERENCES [dbo].[ObraSocial] ([nombre])
GO
ALTER TABLE [dbo].[Pacientes] CHECK CONSTRAINT [FK_Pacientes_ObraSocial]
GO
USE [master]
GO
ALTER DATABASE [Proyecto PAV] SET  READ_WRITE 
GO
