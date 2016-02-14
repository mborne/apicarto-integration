CREATE SCHEMA IF NOT EXISTS cog ;

DROP TABLE IF EXISTS cog.commune  ;
CREATE TABLE cog.commune (
    ACTUAL varchar(1),   --	Code actualité de la commune
    CHEFLIEU varchar(1), --	Chef-lieu d'arrondissement, de département, de région ou bureau centralisateur de canton
    CDC varchar(1),      --	Découpage de la commune en cantons
    RANG varchar(2),     --	Nombre de fractions cantonales + 1 de la commune lorsqu'elle est multicantonale
    REG varchar(2),      --	Code région
    DEP varchar(3),      --	Code département
    COM varchar(3),      --	Code commune
    AR varchar(1),       --	Code arrondissement
    CT varchar(2),       --	Code canton
    MODIF varchar(1),    --	Indicateur de modification subie par la commune
    POLE varchar(5),     --	Code de la commune pôle de la commune fusionnée
    TNCC varchar(1),     --	Type de nom en clair
    ARTMAJ varchar(5),   --	Article (majuscules)
    NCC varchar(70),     --	Nom en clair (majuscules)
    ARTMIN varchar(5),   --	Article (typographie riche)
    NCCENR varchar(70),  --	Nom en clair (typographie riche)
    ARTICLCT varchar(5), --	Article (canton)
    NCCCT varchar(70)    --	Nom en clair du canton (typographie riche)
) ;


DROP TABLE IF EXISTS cog.departement ;
CREATE TABLE cog.departement (
    REGION varchar(2),   -- Code région
    DEP varchar(3),      --	Code département
    CHEFLIEU varchar(5), -- Code de la commune chef-lieu
    TNCC varchar(1),     -- Type de nom en clair
    NCC varchar(70),     -- Libellé en lettres majuscules
    NCCENR varchar(70)   -- Libellé enrichi
) ;


DROP TABLE IF EXISTS cog.region ;
CREATE TABLE cog.region (
    REGION varchar(2),      -- Code Région
    CHEFLIEU varchar(5),    -- Code de la commune chef-lieu
    TNCC varchar(1),        -- Type de nom en clair
    NCC	varchar(70),        -- Libellé en lettres majuscules
    NCCENR varchar(70)      -- Libellé enrichi
);



