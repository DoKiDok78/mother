#!/bin/bash

POSTGRES_MASKED_URL=postgresql://theoxxx@localhost:5432
POSTGRES_URL=postgresql://theo:mysecretpassword@localhost:5432

echo psql $POSTGRES_MASKED_URL
psql $POSTGRES_URL