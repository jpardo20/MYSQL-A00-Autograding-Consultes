# Autograding MySQL — Consultes sobre l'esquema `institut`

Aquest repositori és una **plantilla de Classroom** on la creació de la BD i les dades
ja ve **preparada**. L'alumne només ha d'editar **les consultes** dins `solutions/`.

- BD: MySQL 8 (al GitHub Actions s'aixeca un contenidor de MySQL)
- Esquema: `institut` (definit a `schema.sql` + `data.sql`)
- Autograding: `GitHub Actions` + comparació d'eixides **TSV** (tab-separat)

## Què ha de fer l'alumne
1. Edita `solutions/q1.sql`, `solutions/q2.sql`, ... segons l'enunciat.
2. Fes `commit` i `push`.
3. Mira el resultat als **Checks** (Actions).

### Provar localment (si tens MySQL)
```bash
# Crea la BD i les dades al teu MySQL local (ajusta usuari/password/host si cal)
mysql -h 127.0.0.1 -uroot -proot < schema.sql
mysql -h 127.0.0.1 -uroot -proot < data.sql

# Executa els tests
chmod +x tests/run_tests.sh
tests/run_tests.sh
```
# MYSQL-A00-Autograding-Consultes
