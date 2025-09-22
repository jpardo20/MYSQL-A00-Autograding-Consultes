#!/usr/bin/env bash
set -euo pipefail

HOST="127.0.0.1"
USER="root"
PASS="root"

# (Re)crea la BD i les dades
mysql -h "$HOST" -u"$USER" -p"$PASS" < schema.sql
mysql -h "$HOST" -u"$USER" -p"$PASS" < data.sql

mkdir -p actual

# Executa consultes de l'alumne i genera TSV (batch, no headers)
mysql -h "$HOST" -u"$USER" -p"$PASS" --database=institut -B -N < solutions/q1.sql > actual/q1.tsv
mysql -h "$HOST" -u"$USER" -p"$PASS" --database=institut -B -N < solutions/q2.sql > actual/q2.tsv

# Compara
diff -u expected/q1.tsv actual/q1.tsv
diff -u expected/q2.tsv actual/q2.tsv

echo "✅ Totes les proves han passat"
