setup:
	npm ci

start:
	npm start

dev:
	npm run dev

lint:
	npx eslint .

test:
	npm test

heroku-logs:
	heroku logs --tail

prepare-env:
	cp -n .env.example .env

docker-tests:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

docker-dev:
	docker-compose -f docker-compose.override.yml up