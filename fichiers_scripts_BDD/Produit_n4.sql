IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('Produit'))
BEGIN;
    DROP TABLE [Produit];
END;
GO

CREATE TABLE [Produit] (
    [ProduitID] INTEGER NOT NULL IDENTITY(1, 1),
    [Nom] VARCHAR(255) NULL,
    [Prix] VARCHAR(255) NULL,
    [Reference] VARCHAR(15) NULL,
    PRIMARY KEY ([ProduitID])
);
GO

INSERT INTO Produit([Nom],[Prix],[Reference]) VALUES('soupes','23','32244321'),('nouilles','79','19951451'),('ragoûts','53','49920159'),('nouilles','47','47201754'),('tartes','97','19036590'),('soupes','19','12817033'),('salades','3','17766415'),('nouilles','59','19474675'),('fruits de mer','53','5355623'),('sandwiches','79','12045562');
INSERT INTO Produit([Nom],[Prix],[Reference]) VALUES('desserts','43','31390951'),('fruits de mer','1','39150109'),('céréales','73','45768825'),('nouilles','13','19992200'),('fruits de mer','71','20719820'),('ragoûts','53','36230110'),('salades','53','5380456'),('soupes','13','30025053'),('tartes','23','32467227'),('ragoûts','43','50452958');
INSERT INTO Produit([Nom],[Prix],[Reference]) VALUES('sandwiches','83','35292783'),('desserts','31','47911240'),('ragoûts','61','23938619'),('pâtes','37','40644181'),('desserts','43','28452063'),('céréales','5','18601911'),('céréales','53','30836292'),('céréales','29','30369259'),('soupes','29','22442348'),('salades','2','46347795');
INSERT INTO Produit([Nom],[Prix],[Reference]) VALUES('fruits de mer','79','24835713'),('fruits de mer','5','34339435'),('salades','83','46331439'),('fruits de mer','97','46158530'),('soupes','67','22366962'),('pâtes','37','42173506'),('desserts','71','24853761'),('nouilles','71','9332522'),('salades','67','32091889'),('ragoûts','83','14634575');
INSERT INTO Produit([Nom],[Prix],[Reference]) VALUES('sandwiches','1','8968974'),('pâtes','67','44113984'),('salades','7','7414546'),('sandwiches','19','42933883'),('soupes','1','19118750'),('ragoûts','47','44876396'),('soupes','83','25853018'),('ragoûts','79','16940811'),('desserts','2','31910754'),('pâtes','1','39698488');
INSERT INTO Produit([Nom],[Prix],[Reference]) VALUES('pâtes','71','37737752'),('nouilles','59','46347679'),('céréales','11','19594709'),('desserts','19','45084753'),('desserts','71','29350753'),('desserts','1','50353380'),('desserts','61','32905220'),('ragoûts','89','46722883'),('nouilles','7','8153814'),('pâtes','73','18651413');
INSERT INTO Produit([Nom],[Prix],[Reference]) VALUES('ragoûts','1','13459355'),('fruits de mer','29','45305923'),('salades','1','31169364'),('nouilles','3','14763749'),('nouilles','29','23142676'),('tartes','13','12514974'),('nouilles','79','40022856'),('pâtes','3','26789382'),('salades','7','26952833'),('desserts','41','45386991');
INSERT INTO Produit([Nom],[Prix],[Reference]) VALUES('salades','5','46609577'),('sandwiches','5','43831764'),('desserts','19','49971137'),('ragoûts','83','23948261'),('tartes','53','39945741'),('ragoûts','11','36637123'),('salades','11','42533677'),('salades','5','15179723'),('pâtes','13','13707397'),('fruits de mer','79','28356625');
INSERT INTO Produit([Nom],[Prix],[Reference]) VALUES('céréales','29','26734761'),('soupes','41','14853113'),('fruits de mer','3','6651873'),('fruits de mer','7','44001550'),('salades','61','12983570'),('sandwiches','13','6799046'),('ragoûts','47','40366339'),('salades','2','10320006'),('sandwiches','29','29051454'),('desserts','83','40374790');
INSERT INTO Produit([Nom],[Prix],[Reference]) VALUES('pâtes','47','35293798'),('céréales','5','20444688'),('pâtes','7','6538298'),('fruits de mer','19','30383367'),('pâtes','13','15759635'),('tartes','29','36965579'),('pâtes','13','27103668'),('soupes','37','19428764'),('nouilles','53','15466933'),('salades','47','10452783');