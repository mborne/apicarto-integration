# DILA - Annuaire de l'administration

Source [Service-public.fr - Annuaire de l’administration - Base de données locales](https://www.data.gouv.fr/fr/datasets/service-public-fr-annuaire-de-l-administration-base-de-donnees-locales/)

## Principe

Les fichiers XML du jeu de données source sont mis à plat dans des tables.

## Modification

* Les plages d'ouvertures sont converties sous forme textuelles
* Seule la première adresse est prises en compte (pour l'instant)

## Exemple d'application

Récupérer les organismes pour une commune :

```
SELECT o.* FROM dila.commune c
	LEFT JOIN dila.organisme o 
		ON o.id = c.organisme_id 
	WHERE c.insee = '25349' 
;
```

## TODO

* dila.adresse : adresse des organismes (actuellement seule la première adresse est utilisée)
* documenter et opensourcer le parseur (.jar dans bin)


