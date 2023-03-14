#!/bin/bash
docker compose run web rack db:create
docker compose run web rack db:migrate
docker compose up
