--les clients ayant une facture superieur au prix moyen des factures de tout les clients--
SELECT C.NOM,C.PRENOM, F.PRIXTTC
FROM CLIENT C, FACTURE F
WHERE C.ClientID=F.CLIENTID
AND F.PRIXTTC>(
				SELECT  AVG (PRIXTTC)
				FROM FACTURE F
			)

--les produits ayant une quantite inferieur à 51 et un prix inferieur à 20€
SELECT P.NOM, R.QUANTITE, P.PRIX
FROM PRODUIT P, RAYON R
WHERE R.QUANTITE<51 AND P.PRIX<20
ORDER BY PRIX


--
SELECT
FROM 
WHERE