# APICARTO intégration

L'idée : Intégrer dans une base de données PostGIS les jeux de données ouverts et présents sur http://data.gouv.fr pour pouvoir les exploiter :
* Visualiser les données
* Effectuer des traitements SIG
* Croiser les données
* Exposer des services [apicarto](http://github.com/sgmap/apicarto)

Attention :

* Ce dépôt est utilisé pour l'instant pour de l'expérimentation (la structure de la base va varier, des schémas vont être ajoutés)
* Les jeux de données ne sont pas (encore) utilisés dans l'API carto

Questionnement :

* Quelle est la licence de la base de données résultante ? Faut-il une variable d'environnement NO_ODBL pour pouvoir avoir une base résultante en licence ouverte?

### Variables d'environnement

* PGHOST
* PGUSER
* PGPASSWORD


Remarque : PGDATABASE n'est pas supportée pour l'instant.

## Import des données dans une base

### Version courte

```
createdb apicarto
psql -d apicarto -c "CREATE EXTENSION postgis"
cd datasets
sh import-all.sh
```

### Version longue

* Création de la base de données

```
sudo su postgres
psql -c "CREATE USER apicarto WITH PASSWORD 'secretpassword'"
createdb -O apicarto apicarto
psql -d apicarto -c "CREATE EXTENSION postgis"
```

* Import des données

```
cd datasets
PGUSER=apicarto PGPASSWORD=secretpassword sh import-all.sh
```


## Comment intégrer un nouveau jeu de données?

### datasets/[name]/import.sh

* Ajouter un dossier dans dataset correspondant au jeu de données
* Créer un script "import.sh" qui télécharge les données et les importe dans la base "apicarto"

### Pourquoi des shells?

* Les scripts shells sont maitrisés par la plupart des DBA postgres/postgis
* Les shells ont la liberté d'appeler les outils de leur choix (exécutable, script python, grunt, jar, etc.)
* ```psql``` supporte nativement les variables d'environnement PGHOST, PGUSER, PGPASSWORD ce qui permet une personnalisation suffisante


## Où trouver les jeux de données?

Il est important d'avoir une URL de téléchargement. De nombreux jeux de données sont recensés sur [data.gouv.fr](https://www.data.gouv.fr/fr/), mais d'autres sites proposent des URL (exemple [page de téléchargement du COG de l'INSEE](http://www.insee.fr/fr/methodes/nomenclatures/cog/telechargement.asp)).


## Quels jeux de données intégrer (ou pas)?

Dans un premier temps, on se concentre sur les jeux de données ayant une couverture France entière (ou presque).

En cas d'intégration de jeux de données régionaux, on veillera à uniformiser les structures.


## Outils disponibles pour les scripts

* ogr2ogr : Utilitaire de conversion
* shp2pgsql : Intégration d'un shapefile dans PostGIS

## TODO

* Mettre en place un mécanisme de documentation pour les jeux de données (licence, origine, schéma, lien vers les specs. si existante)
* Dockerfile ou Vagrant pour démonstration, windows et documentation de l'installation des outils
