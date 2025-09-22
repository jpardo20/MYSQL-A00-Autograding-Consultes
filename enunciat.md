# Enunciat — Consultes MySQL sobre `institut`

> **Objectiu:** Practicar SELECT + JOIN + GROUP BY sobre un esquema ja preparat.
> Edita els fitxers a `solutions/` i comprova l'autograding.

## Q1 (`solutions/q1.sql`)
Llista els **noms d'assignatures** impartides al curs **"1r de DAM"**, ordenades **alfabèticament**.
Sortida (TSV, sense capçalera) amb 1 columna: `nom`.

## Q2 (`solutions/q2.sql`)
Mostra per a cada **curs** el **promig** de `notaFinal`, amb dues columnes:
`nom_curs<TAB>mitjana` (arrodonida a 2 decimals), ordenat per `nom_curs` asc.
Pista: `ROUND(AVG(notaFinal), 2)`.

> Pots executar les teves consultes localment i comparar amb `expected/*.tsv`.
