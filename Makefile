prepare-env:
	cp app/.env.example .env

ci: prepare-env compose-build-prod compose-test compose-down

compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

compose-dev:
	docker-compose -f docker-compose.override.yml up

compose-orph:
	docker-compose down --remove-orphans

compose-build-prod:
	docker-compose -f docker-compose.yml build

compose-down:
	docker-compose down --remove-orphans

install-depend:
	docker run -it -w /root -v `pwd`/app:/root node:14.18.1 npm ci