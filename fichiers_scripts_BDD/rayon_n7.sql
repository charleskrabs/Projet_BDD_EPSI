IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('Rayon'))
BEGIN;
    DROP TABLE [Rayon];
END;
GO

CREATE TABLE [Rayon] (
    [RayonID] INTEGER NOT NULL IDENTITY(1, 1),
    [Quantite] VARCHAR(255) NULL,
    PRIMARY KEY ([RayonID])
);
GO

INSERT INTO Rayon([Quantite]) VALUES('100'),('50'),('150'),('70'),('110'),('180'),('130'),('150'),('130'),('170');
INSERT INTO Rayon([Quantite]) VALUES('170'),('200'),('60'),('100'),('90'),('200'),('110'),('80'),('130'),('150');
INSERT INTO Rayon([Quantite]) VALUES('190'),('80'),('130'),('180'),('120'),('160'),('190'),('70'),('90'),('110');
INSERT INTO Rayon([Quantite]) VALUES('80'),('70'),('100'),('90'),('200'),('110'),('70'),('160'),('70'),('150');
INSERT INTO Rayon([Quantite]) VALUES('170'),('90'),('190'),('170'),('180'),('190'),('170'),('110'),('200'),('80');
INSERT INTO Rayon([Quantite]) VALUES('150'),('100'),('120'),('200'),('60'),('90'),('200'),('90'),('120'),('140');
INSERT INTO Rayon([Quantite]) VALUES('130'),('140'),('120'),('90'),('160'),('160'),('180'),('130'),('60'),('70');
INSERT INTO Rayon([Quantite]) VALUES('130'),('60'),('200'),('170'),('170'),('150'),('50'),('200'),('180'),('110');
INSERT INTO Rayon([Quantite]) VALUES('130'),('80'),('100'),('150'),('200'),('50'),('90'),('120'),('180'),('200');
INSERT INTO Rayon([Quantite]) VALUES('60'),('150'),('110'),('110'),('200'),('170'),('150'),('180'),('120'),('200');