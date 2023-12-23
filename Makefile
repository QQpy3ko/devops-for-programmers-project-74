prepare-env:
	cp app/.env.example .env

ci: prepare-env
	docker-compose -f docker-compose.yml up --abort-on-container-exit

docker-dev:
	docker-compose -f docker-compose.override.yml up

docker-orph:
	docker-compose down --remove-orphans