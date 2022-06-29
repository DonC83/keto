#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --db "$POSTGRES_DB" <<-EOSQL
  CREATE USER keto WITH PASSWORD 'keto';
  CREATE DATABASE keto;
  GRANT ALL PRIVILEGES ON DATABASE keto TO keto;
EOSQL