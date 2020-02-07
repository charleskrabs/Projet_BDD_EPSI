--les clients ayant une facture superieur au prix moyen des factures de tout les clients--
SELECT C.NOM,C.PRENOM, F.PRIXTTC
FROM CLIENT C, FACTURE F
WHERE C.ClientID=F.CLIENTID
AND F.PRIXTTC>(
				SELECT  AVG (PRIXTTC)
				FROM FACTURE F
			);

--les produits ayant une quantite inferieur à 51 et un prix inferieur à 20€
SELECT P.NOM, R.QUANTITE, P.PRIX
FROM PRODUIT P, RAYON R
WHERE R.QUANTITE<51 AND P.PRIX<20
ORDER BY PRIX


--les employes non livreur qui ont un salaire superieur a 2000€
SELECT E.NOM, E.PRENOM, C.SALAIRE
FROM EMPLOYE E, CONTRATS C, MAGASIN M
WHERE C.SALAIRE>2500(
					SELECT E.Estlivreur
					FROM EMPLOYE E
					WHERE E.Estlivreur=0
					)

--Les produits avec un nombres de ventres > 100 et un nombre en rayon inférieur a 50

SELECT V.nb_vente, R.quantite, P.nom, P.prix
FROM Vente V, Rayon R, Produit P
WHERE V.nb_vente > 100 AND P.prix < 50;


--Tout les clients qui sont clients dans un magasin qui possede des livreurs et avec un nb_vente > 1000

SELECT C.nom, C.prenom, E.estlivreur, V.nb-vente
FROM Client C, Employe E, Vente V
WHERE E.estlivreur == 1 AND V.nbvente>(
						SELECT AVG (nb_vente)
						FROM Vente
						);

-- Les produits qui ont une quantite en stock < a 100 et une quantité en rayon < 20

SELECT P.nom, S.quantite, R.quantite
FROM Produit P, Stock S, Rayon R
WHERE S.quantite < 100 AND R.quantite < 20;


-- supprimer un produit quand il a une quantité inférieur a 10

DELETE P.NOM, P.Quantite
FROM Produit P
WHERE P.Quantite < 10

-- 
