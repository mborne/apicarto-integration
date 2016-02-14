# DILA - Annuaire de l'administration

Source [Service-public.fr - Annuaire de l’administration - Base de données locales](https://www.data.gouv.fr/fr/datasets/service-public-fr-annuaire-de-l-administration-base-de-donnees-locales/)

## Principe

Les fichiers XML du jeu de données source sont mis à plat dans des tables.

## Modification

* Les plages d'ouvertures sont converties sous forme textuelles
* Seule la première adresse est prises en compte (pour l'instant)

## TODO

* dila.commune : les organismes rattachés à chaque commune (insee,pivot,organisme_id)
* dila.adresse : adresse des organismes (actuellement dans dila)
* documenter et opensourcer le parseur (encore instable, en particulier au niveau des arguments de la commande)


