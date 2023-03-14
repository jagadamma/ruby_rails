#!/bin/bash
cd 
docker compose build
docker compose run web rails new . --database=postgresql
