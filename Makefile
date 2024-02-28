#!/usr/bin/make
include .env

up-f:
	docker compose up --build --remove-orphans

up:
	docker compose up -d --build --remove-orphans 

down:
	docker compose down --remove-orphans

shell:
	docker exec -u mssql -it $(DB_NAME) /bin/sh