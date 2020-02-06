USE [grande_surface]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 06/02/2020 14:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [varchar](255) NULL,
	[Prenom] [varchar](255) NULL,
	[Mail] [varchar](255) NULL,
	[MagasinsID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Commande]    Script Date: 06/02/2020 14:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commande](
	[CommandeID] [int] IDENTITY(1,1) NOT NULL,
	[Numero_commande] [varchar](15) NULL,
	[PrixTTC] [varchar](255) NULL,
	[ClientsID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CommandeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contrats]    Script Date: 06/02/2020 14:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contrats](
	[ContratsID] [int] IDENTITY(1,1) NOT NULL,
	[Types] [varchar](max) NULL,
	[Salaire] [varchar](100) NULL,
	[EmployeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContratsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employe]    Script Date: 06/02/2020 14:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employe](
	[EmployeID] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [varchar](255) NULL,
	[Prenom] [varchar](255) NULL,
	[Estlivreur] [varchar](255) NULL,
	[MagasinID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facture]    Script Date: 06/02/2020 14:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facture](
	[FactureID] [int] IDENTITY(1,1) NOT NULL,
	[Numero_facture] [varchar](15) NULL,
	[PrixTTC] [varchar](255) NULL,
	[ClientID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FactureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fournisseur]    Script Date: 06/02/2020 14:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fournisseur](
	[FournisseurID] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [varchar](255) NULL,
	[Produit] [varchar](255) NULL,
	[Reference] [varchar](14) NULL,
	[Localisation] [varchar](255) NULL,
	[MagasintsID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FournisseurID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Magasin]    Script Date: 06/02/2020 14:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Magasin](
	[MagasinID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](255) NULL,
	[Ville] [varchar](255) NULL,
	[Code postal] [varchar](10) NULL,
	[Adresse] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MagasinID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produit]    Script Date: 06/02/2020 14:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produit](
	[ProduitID] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [varchar](255) NULL,
	[Prix] [varchar](255) NULL,
	[Reference] [varchar](15) NULL,
	[MagasintID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProduitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rayon]    Script Date: 06/02/2020 14:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rayon](
	[RayonID] [int] IDENTITY(1,1) NOT NULL,
	[Quantite] [varchar](255) NULL,
	[ProduitsID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RayonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 06/02/2020 14:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[StockID] [int] IDENTITY(1,1) NOT NULL,
	[Quantite] [varchar](255) NULL,
	[ProduittID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vente]    Script Date: 06/02/2020 14:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vente](
	[VenteID] [int] IDENTITY(1,1) NOT NULL,
	[Numero_de_vente] [varchar](255) NULL,
	[ProduitID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[VenteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [MagasinsID] FOREIGN KEY([MagasinsID])
REFERENCES [dbo].[Magasin] ([MagasinID])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [MagasinsID]
GO
ALTER TABLE [dbo].[Commande]  WITH CHECK ADD  CONSTRAINT [ClientsID] FOREIGN KEY([ClientsID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[Commande] CHECK CONSTRAINT [ClientsID]
GO
ALTER TABLE [dbo].[Contrats]  WITH CHECK ADD  CONSTRAINT [EmployeID] FOREIGN KEY([EmployeID])
REFERENCES [dbo].[Employe] ([EmployeID])
GO
ALTER TABLE [dbo].[Contrats] CHECK CONSTRAINT [EmployeID]
GO
ALTER TABLE [dbo].[Employe]  WITH CHECK ADD  CONSTRAINT [MagasinID] FOREIGN KEY([MagasinID])
REFERENCES [dbo].[Magasin] ([MagasinID])
GO
ALTER TABLE [dbo].[Employe] CHECK CONSTRAINT [MagasinID]
GO
ALTER TABLE [dbo].[Facture]  WITH CHECK ADD  CONSTRAINT [ClientID] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[Facture] CHECK CONSTRAINT [ClientID]
GO
ALTER TABLE [dbo].[Fournisseur]  WITH CHECK ADD  CONSTRAINT [MagasintsID] FOREIGN KEY([MagasintsID])
REFERENCES [dbo].[Magasin] ([MagasinID])
GO
ALTER TABLE [dbo].[Fournisseur] CHECK CONSTRAINT [MagasintsID]
GO
ALTER TABLE [dbo].[Produit]  WITH CHECK ADD  CONSTRAINT [MagasintID] FOREIGN KEY([MagasintID])
REFERENCES [dbo].[Magasin] ([MagasinID])
GO
ALTER TABLE [dbo].[Produit] CHECK CONSTRAINT [MagasintID]
GO
ALTER TABLE [dbo].[Rayon]  WITH CHECK ADD  CONSTRAINT [ProduitsID] FOREIGN KEY([ProduitsID])
REFERENCES [dbo].[Produit] ([ProduitID])
GO
ALTER TABLE [dbo].[Rayon] CHECK CONSTRAINT [ProduitsID]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [ProduittID] FOREIGN KEY([ProduittID])
REFERENCES [dbo].[Produit] ([ProduitID])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [ProduittID]
GO
ALTER TABLE [dbo].[Vente]  WITH CHECK ADD  CONSTRAINT [ProduitID] FOREIGN KEY([ProduitID])
REFERENCES [dbo].[Produit] ([ProduitID])
GO
ALTER TABLE [dbo].[Vente] CHECK CONSTRAINT [ProduitID]
GO
