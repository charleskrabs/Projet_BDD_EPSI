IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('Magasin'))
BEGIN;
    DROP TABLE [Magasin];
END;
GO

CREATE TABLE [Magasin] (
    [MagasinID] INTEGER NOT NULL IDENTITY(1, 1),
    [Type] VARCHAR(255) NULL,
    [Ville] VARCHAR(255) NULL,
    [Code postal] VARCHAR(10) NULL,
    [Adresse] VARCHAR(255) NULL,
    PRIMARY KEY ([MagasinID])
);
GO

INSERT INTO Magasin([Type],[Ville],[Code postal],[Adresse]) VALUES('grande_surface','Cañete','26074-772','Appartement 554-9840 Tincidunt, Impasse'),('grande_surface','Fahler','F5L 2XM','858-4727 Enim Rue'),('drive','Sint-Pieters-Kapelle','Z9334','CP 799, 3121 Duis Rd.'),('drive','Huppaye','972659','CP 791, 7369 Molestie Rue'),('grande_surface','Recanati','5890','9858 Mollis. Ave'),('grande_surface','Rawalakot','294758','3856 Blandit. Route'),('drive','Esneux','595891','561-6010 Ut Rd.'),('grande_surface','Bergen','7749','4552 Elit Av.'),('drive','Río Ibáñez','1286','Appartement 851-3156 Fringilla Chemin'),('grande_surface','Darmstadt','257419','CP 166, 6983 Ante Av.');