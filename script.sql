    -- Création de la base de données
DROP DATABASE IF EXISTS grande_surface;

CREATE DATABASE grande_surface;


    -- Création des tables
DROP TABLE IF EXISTS magasin;
CREATE TABLE magasin (
    id INT NOT NULL IDENTITY (1,1),
    type_magasin VARCHAR(255) NOT NULL,
    ville VARCHAR(255) NOT NULL,
    code_postale INT NOT NULL,
    adresse VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS employe;
CREATE TABLE employe (
    id INT NOT NULL IDENTITY (1,1),
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    estlivreur TINYINT NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS contrat;
CREATE TABLE contrat (
    id INT NOT NULL IDENTITY(1,1),
    type_contrat VARCHAR(255) NOT NULL,
    salaire FLOAT NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS produit;
CREATE TABLE produit (
    id INT NOT NULL IDENTITY(1,1),
    nom VARCHAR(255) NOT NULL,
    prix FLOAT NOT NULL,
    reference BIGINT NOT NULL UNIQUE,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS vente;
CREATE TABLE vente (
    id INT NOT NULL IDENTITY(1,1),
    nb_vente BIGINT NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS rayon;
CREATE TABLE rayon (
    id INT NOT NULL IDENTITY(1,1),
    quantite INT NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS stock;
CREATE TABLE stock (
    id INT NOT NULL IDENTITY(1,1),
    quantite INT NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS fournisseur;
CREATE TABLE fournisseur (
    id INT NOT NULL IDENTITY(1,1),
    nom VARCHAR(255) NOT NULL,
    produit VARCHAR(255) NOT NULL,
    reference BIGINT NOT NULL UNIQUE,
    localisation VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS client;
CREATE TABLE client (
    id INT NOT NULL IDENTITY(1,1),
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    mail VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS commande;
CREATE TABLE commande (
    id INT NOT NULL IDENTITY(1,1),
    numero_commande BIGINT NOT NULL UNIQUE,
    prixTTC FLOAT NOT NULL,
    PRIMARY KEY (id),
    -- Insertion d'une contrainte pendant la création de la table
    CONSTRAINT prix_positif_cmd_ck CHECK (prixTTC > 0)
);

DROP TABLE IF EXISTS facture;
CREATE TABLE facture (
    id INT NOT NULL IDENTITY(1,1),
    numero_facture BIGINT NOT NULL UNIQUE,
    prixTTC FLOAT NOT NULL,
    PRIMARY KEY (id),
    -- Insertion d'une contrainte pendant la création de la table
    CONSTRAINT prix_positif_fct_ck CHECK (prixTTC > 0)
);


    -- Création des contraintes...

        -- pour la table employe
ALTER TABLE employe
ADD CONSTRAINT magasin_fk FOREIGN KEY (idmagasin) REFERENCES magasin(id);

        -- pour la table contrat
ALTER TABLE contrat
ADD CONSTRAINT employe_fk FOREIGN KEY (idemploye) REFERENCES employe(id);
ALTER TABLE contrat
ADD CONSTRAINT salaire_positif_ck CHECK (salaire >= 0);

        -- pour la table client
ALTER TABLE client
ADD CONSTRAINT magasin_fk FOREIGN KEY (idmagasin) REFERENCES magasin(id);

        -- pour la table commande
ALTER TABLE commande
ADD CONSTRAINT client_fk FOREIGN KEY (idclient) REFERENCES client(id);

        -- pour la table facture
ALTER TABLE facture
ADD CONSTRAINT client_fk FOREIGN KEY (idclient) REFERENCES client(id);

        -- pour la table produit
ALTER TABLE produit
ADD CONSTRAINT magasin_fk FOREIGN KEY (idmagasin) REFERENCES magasin(id);
ALTER TABLE produit
ADD CONSTRAINT reference_ck CHECK (LEN(reference) = 15);

        -- pour la table vente
ALTER TABLE vente
ADD CONSTRAINT produit_fk FOREIGN KEY (idproduit) REFERENCES produit(id);

        -- pour la table rayon
ALTER TABLE rayon
ADD CONSTRAINT produit_fk FOREIGN KEY (idproduit) REFERENCES produit(id);

        -- pour la table stock
ALTER TABLE stock
ADD CONSTRAINT produit_fk FOREIGN KEY (idproduit) REFERENCES produit(id);

        -- pour la table fournisseur
ALTER TABLE fournisseur
ADD CONSTRAINT produit_fk FOREIGN KEY (idproduit) REFERENCES produit(id);
ALTER TABLE fournisseur
ADD CONSTRAINT reference_ck CHECK (LEN(reference) = 10);

    --Exemple d'insertion de données dans les différentes tables
INSERT INTO magasin VALUES ('Grande surface', 'Lyon', 69006, '29 Rue Barrème');
INSERT INTO magasin VALUES ('Drive', 'Tassin-la-Demi-Lune', 69160, '42 Avenue Misery');
INSERT INTO employe VALUES ('Afino', 'Merlin', 0);
INSERT INTO employe VALUES ('Bernu', 'Antonio', 1);
INSERT INTO contrat VALUES ('Stage', 0);
INSERT INTO contrat VALUES ('CDD', 1200);
INSERT INTO contrat VALUES ('CDI Cadre', 2400);
INSERT INTO client VALUES ('Raptor', 'Masimo', 'rapatormassimo@gmail.com');
INSERT INTO client VALUES ('Hairi', 'Abdel', 'abdel.pro@yahoo.com');
INSERT INTO fournisseur VALUES ('Lactel', 'Lait', 1234567891, 'Bretagne');
INSERT INTO fournisseur VALUES ('Panzanni', 'Pâtes', 1234567892, 'Vénétie');
INSERT INTO fournisseur VALUES ('Aoste', 'Jambon', 1234567893, 'Val d aoste');
INSERT INTO produit VALUES ('Salade Manathan', 4.95, 123456789987456);
INSERT INTO produit VALUES ('Salade Lyonnaise', 4.95, 123456789987412);
