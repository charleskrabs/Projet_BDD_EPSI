CREATE TABLE [Fournisseur] (
    [FournisseurID] INTEGER NOT NULL IDENTITY(1, 1),
    [Nom] VARCHAR(255) NULL,
    [Produit] VARCHAR(255) NULL,
    [Reference] VARCHAR(14) NULL,
    [Localisation] VARCHAR(255) NULL,
    PRIMARY KEY ([FournisseurID])
);
GO

INSERT INTO Fournisseur([Nom],[Produit],[Reference],[Localisation]) VALUES('Quisque Corp.','desserts','612191056','Puri'),('Urna Convallis Erat LLC','p�tes','096199773','Rockford'),('Nullam Scelerisque Corp.','salades','096471180','Amelia'),('Est Mauris Rhoncus Consulting','tartes','134678952','Wilmont'),('Ipsum Consulting','tartes','467923322','Garbsen'),('Sed Corporation','nouilles','377479696','Jefferson City'),('Curabitur Corp.','sandwiches','806865911','Morro d''Alba'),('Ipsum Nunc Id Corporation','tartes','947320289','Monteleone di Spoleto'),('Vitae Sodales Nisi Foundation','rago�ts','438619207','Recco'),('Eget Mollis Institute','c�r�ales','150692663','Saint-L�');
INSERT INTO Fournisseur([Nom],[Produit],[Reference],[Localisation]) VALUES('Eu Ligula Aenean Inc.','rago�ts','167933241','Weiz'),('Eu Eros PC','desserts','881004329','Canino'),('Massa Suspendisse Eleifend PC','tartes','740727367','Tual'),('Hendrerit Company','p�tes','127532943','Calestano'),('Quam Industries','desserts','259067098','Macerata'),('Enim Curabitur Inc.','salades','419446695','�kersberga'),('Nibh Donec Est PC','rago�ts','446698722','Greymouth'),('Posuere Enim Nisl Institute','c�r�ales','895123388','Castor'),('Adipiscing Corporation','rago�ts','275397388','Tiruppur'),('Sed Industries','soupes','820857050','Budaun');
INSERT INTO Fournisseur([Nom],[Produit],[Reference],[Localisation]) VALUES('Bibendum Fermentum Metus Limited','salades','014805766','�pinal'),('Eu Neque Corp.','salades','433512597','Cowdenbeath'),('Ut PC','nouilles','300873106','Kielce'),('Neque Nullam Nisl Company','sandwiches','720622752','Altamura'),('Nunc LLP','fruits de mer','213608813','Covington'),('Duis Mi Enim Consulting','salades','476469499','Tomohon'),('Est LLP','tartes','774038467','Pelluhue'),('Eu Turpis PC','fruits de mer','353894215','Dendermonde'),('Facilisis LLP','salades','313587784','Coleville Lake'),('Urna Justo Faucibus Limited','p�tes','030107866','Biarritz');
INSERT INTO Fournisseur([Nom],[Produit],[Reference],[Localisation]) VALUES('Fringilla Donec Feugiat Inc.','tartes','958208944','Goutroux'),('In Magna Ltd','desserts','832233712','Rezzoaglio'),('Adipiscing Enim Mi Incorporated','fruits de mer','879288645','Forbach'),('Massa Integer Inc.','tartes','881906861','Fort Providence'),('Praesent PC','soupes','951203017','San Jos� de Maipo'),('Nec Urna Et PC','c�r�ales','870945235','LaSalle'),('Nisl Arcu Iaculis LLC','fruits de mer','410674634','Bor�s'),('Iaculis Corporation','c�r�ales','455892547','Nuremberg'),('Neque Industries','p�tes','570671214','Shimanovsk'),('Proin Nisl Sem Inc.','sandwiches','848093449','Neuss');
INSERT INTO Fournisseur([Nom],[Produit],[Reference],[Localisation]) VALUES('Dui Nec Urna Corp.','p�tes','690136155','Swindon'),('Accumsan Laoreet Ipsum PC','salades','895063022','Mount Pearl'),('Sem Limited','salades','056856081','Bad Oldesloe'),('Quam Quis Diam Corp.','desserts','335239026','Palmiano'),('Amet Risus Incorporated','c�r�ales','007085426','Pitalito'),('Rhoncus Donec Est Institute','salades','515575272','Warrnambool'),('In Consulting','nouilles','243870094','Bruck an der Mur'),('Justo Nec Incorporated','rago�ts','077691301','Brodick'),('Aliquam Nec Industries','desserts','293593323','Puerto Montt'),('Pede LLC','salades','026131946','Mustafakemalpa?a');
INSERT INTO Fournisseur([Nom],[Produit],[Reference],[Localisation]) VALUES('Urna Et LLP','desserts','736061623','Fresno'),('Etiam Imperdiet Company','rago�ts','137921540','Sitapur'),('Eget Ipsum Donec PC','c�r�ales','141241349','Baton Rouge'),('Netus Et Malesuada Inc.','fruits de mer','383154101','Overmere'),('Vitae Velit Consulting','c�r�ales','358488575','San Valentino in Abruzzo Citeriore'),('Nunc Ullamcorper Velit Industries','desserts','918034893','South Bend'),('Venenatis Lacus Company','c�r�ales','323852467','Solok'),('Tempor Associates','rago�ts','023970049','Melsele'),('Donec Nibh Company','fruits de mer','571135375','Beypazar?'),('Nisi Aenean Foundation','p�tes','189037534','Bologna');
INSERT INTO Fournisseur([Nom],[Produit],[Reference],[Localisation]) VALUES('Pellentesque PC','p�tes','056475171','Borghetto di Vara'),('Elit Consulting','salades','765244181','Palena'),('Eu Ltd','sandwiches','192327286','Whitburn'),('Magna LLC','rago�ts','121473565','Colorno'),('Ac Institute','rago�ts','227384005','Khanewal'),('Pede Et PC','p�tes','946445293','Windermere'),('Sodales Nisi Magna Foundation','tartes','099543118','Port Hope'),('Scelerisque Institute','rago�ts','083002196','Garz�n'),('Velit Pellentesque Corporation','tartes','465169415','Sasaram'),('Cras Ltd','soupes','505366005','Pittsburgh');
INSERT INTO Fournisseur([Nom],[Produit],[Reference],[Localisation]) VALUES('Ut Nulla Cras LLP','desserts','188503197','Virelles'),('Ligula Tortor Dictum Company','rago�ts','247937378','Palmira'),('Nisi Sem Semper Associates','nouilles','197128754','Mardan'),('Etiam Gravida Ltd','tartes','383649316','Fort Simpson'),('Mi Felis Company','rago�ts','999581317','Isca sullo Ionio'),('At Lacus Quisque LLP','salades','169821592','Chennai'),('Porttitor Corp.','nouilles','910516954','Affligem'),('Mollis Foundation','nouilles','538656174','Olmu�'),('Hymenaeos Mauris Ut Inc.','rago�ts','802877308','Gunpo'),('Id Sapien Ltd','rago�ts','467870085','Llaillay');
INSERT INTO Fournisseur([Nom],[Produit],[Reference],[Localisation]) VALUES('Proin Ltd','tartes','035532928','Guaymas'),('Lacus Quisque PC','salades','310970942','Bhavnagar'),('Cum Sociis Company','nouilles','347216384','Dalbeattie'),('Metus Facilisis Corp.','p�tes','059789552','Af?in'),('Congue Elit Sed Consulting','c�r�ales','539754374','Lehri'),('Quis Diam Incorporated','p�tes','629813213','Wijnegem'),('Ultricies Dignissim Consulting','desserts','354462756','Altm�nster'),('Ante Blandit Ltd','rago�ts','456288554','Santiago'),('Purus Duis Corp.','salades','793048455','Palencia'),('Pharetra Associates','rago�ts','922417860','Otegem');
INSERT INTO Fournisseur([Nom],[Produit],[Reference],[Localisation]) VALUES('Id Magna Et Associates','soupes','753973148','Jasper'),('Sed Pharetra Incorporated','p�tes','100889138','K�flach'),('Imperdiet Ltd','nouilles','799073408','Segni'),('Ornare Placerat Orci Ltd','sandwiches','999665474','Tczew'),('Consequat Nec Mollis LLP','sandwiches','200974053','College'),('Tempus Non Ltd','fruits de mer','133210484','Vastogirardi'),('Arcu Vestibulum Ltd','fruits de mer','219937414','Stalhille'),('Blandit Mattis Foundation','rago�ts','811476340','Erpe'),('Ac Mi Eleifend Associates','p�tes','225529908','Bear'),('Ac Arcu Nunc Associates','c�r�ales','954225215','Lillois-Witterz�e');