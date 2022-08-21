USE [JRSHOP]
GO
/****** Object:  Table [dbo].[CATEGORIA]    Script Date: 21/8/2022 10:47:20 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIA](
	[IDCATEGORIA] [int] NOT NULL,
	[DESCRIPCION] [varchar](100) NULL,
	[FECHAREGISTRO] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCATEGORIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 21/8/2022 10:47:20 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[APELLIDO] [nvarchar](50) NULL,
	[TELEFONO] [nvarchar](30) NULL,
	[CEDULA] [nvarchar](100) NULL,
	[DIRECCION] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 21/8/2022 10:47:20 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [nvarchar](40) NULL,
	[APELLIDO] [nvarchar](40) NULL,
	[CEDULA] [nvarchar](15) NULL,
	[CODIGO] [nvarchar](10) NULL,
	[IMAGEN] [nvarchar](100) NULL,
	[SALARIO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 21/8/2022 10:47:20 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[IDPRODUCTO] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](50) NULL,
	[DESCRIPCION] [varchar](50) NULL,
	[CODIGO] [varchar](50) NULL,
	[IMAGEN] [varchar](50) NULL,
	[IDCATEGORIA] [int] NULL,
	[FECHAREGISTRO] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPRODUCTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENTAS]    Script Date: 21/8/2022 10:47:20 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTAS](
	[IDVENTA] [int] IDENTITY(1,1) NOT NULL,
	[TIPODEPAGO] [varchar](50) NULL,
	[NOMBRECLIENTE] [varchar](50) NULL,
	[DOCUMENTOCLIENTE] [varchar](50) NULL,
	[MONTOPAGOCON] [varchar](50) NULL,
	[MONTOSUBTOTAL] [varchar](50) NULL,
	[MONTOCAMBIO] [varchar](50) NULL,
	[MONTOTOTAL] [varchar](50) NULL,
	[FECHAREGISTRO] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDVENTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CATEGORIA] ADD  DEFAULT (getdate()) FOR [FECHAREGISTRO]
GO
ALTER TABLE [dbo].[PRODUCTO] ADD  DEFAULT (getdate()) FOR [FECHAREGISTRO]
GO
ALTER TABLE [dbo].[VENTAS] ADD  DEFAULT (getdate()) FOR [FECHAREGISTRO]
GO
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD FOREIGN KEY([IDCATEGORIA])
REFERENCES [dbo].[CATEGORIA] ([IDCATEGORIA])
GO
