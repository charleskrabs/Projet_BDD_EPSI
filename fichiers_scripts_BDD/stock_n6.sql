IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('Stock'))
BEGIN;
    DROP TABLE [Stock];
END;
GO

CREATE TABLE [Stock] (
    [StockID] INTEGER NOT NULL IDENTITY(1, 1),
    [Quantite] VARCHAR(255) NULL,
    PRIMARY KEY ([StockID])
);
GO

INSERT INTO Stock([Quantite]) VALUES('7500'),('2000'),('3000'),('10500'),('5000'),('8500'),('6000'),('5500'),('10500'),('9500');
INSERT INTO Stock([Quantite]) VALUES('4500'),('9000'),('4500'),('6000'),('6500'),('8500'),('2000'),('9000'),('4500'),('6500');
INSERT INTO Stock([Quantite]) VALUES('7500'),('3500'),('7500'),('2000'),('2000'),('2000'),('2000'),('9500'),('6500'),('10500');
INSERT INTO Stock([Quantite]) VALUES('3500'),('6000'),('9500'),('6500'),('6000'),('8000'),('3500'),('6500'),('4000'),('5000');
INSERT INTO Stock([Quantite]) VALUES('2000'),('10500'),('4000'),('7500'),('4000'),('10000'),('2000'),('9000'),('10000'),('2000');
INSERT INTO Stock([Quantite]) VALUES('4000'),('10500'),('3000'),('2000'),('2500'),('4500'),('10500'),('10000'),('9000'),('5000');
INSERT INTO Stock([Quantite]) VALUES('4000'),('3500'),('8500'),('3500'),('4000'),('5000'),('2000'),('5500'),('3000'),('4000');
INSERT INTO Stock([Quantite]) VALUES('8000'),('2500'),('9500'),('6500'),('2000'),('2500'),('6500'),('4500'),('4000'),('8500');
INSERT INTO Stock([Quantite]) VALUES('9000'),('8500'),('10000'),('3500'),('2000'),('4500'),('6500'),('3000'),('5000'),('9500');
INSERT INTO Stock([Quantite]) VALUES('8500'),('8000'),('9000'),('9000'),('9000'),('4000'),('3500'),('3000'),('2000'),('4500');