CREATE TABLE [Vente] (
    [VenteID] INTEGER NOT NULL IDENTITY(1, 1),
    [Numero_de_vente] VARCHAR(255) NULL,
    PRIMARY KEY ([VenteID])
);
GO

INSERT INTO Vente([Numero_de_vente]) VALUES('2000'),('2000'),('10500'),('2500'),('8000'),('6500'),('2000'),('9000'),('6500'),('3000');
INSERT INTO Vente([Numero_de_vente]) VALUES('8000'),('10500'),('5500'),('2000'),('8000'),('10500'),('10500'),('5500'),('2500'),('7500');
INSERT INTO Vente([Numero_de_vente]) VALUES('7500'),('2000'),('2000'),('6500'),('4500'),('8000'),('8000'),('3000'),('5000'),('2000');
INSERT INTO Vente([Numero_de_vente]) VALUES('2500'),('4000'),('10000'),('9000'),('7500'),('7500'),('8000'),('3000'),('4500'),('6000');
INSERT INTO Vente([Numero_de_vente]) VALUES('3500'),('2000'),('2500'),('9000'),('9000'),('2500'),('9500'),('2500'),('2500'),('3000');
INSERT INTO Vente([Numero_de_vente]) VALUES('8500'),('9000'),('7500'),('6500'),('2500'),('4500'),('5000'),('10000'),('2000'),('2500');
INSERT INTO Vente([Numero_de_vente]) VALUES('5500'),('9000'),('8000'),('4500'),('2500'),('10500'),('10000'),('9500'),('7500'),('9500');
INSERT INTO Vente([Numero_de_vente]) VALUES('10000'),('8000'),('2000'),('2000'),('4000'),('4000'),('3000'),('6000'),('3000'),('6000');
INSERT INTO Vente([Numero_de_vente]) VALUES('7500'),('3000'),('3500'),('2500'),('7500'),('7500'),('3000'),('8000'),('10500'),('3000');
INSERT INTO Vente([Numero_de_vente]) VALUES('5000'),('5500'),('2000'),('9500'),('7500'),('6500'),('4000'),('8000'),('10500'),('6500');