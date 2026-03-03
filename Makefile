up:
	docker compose up --build

down:
	docker compose down -v

build:
	docker compose build

test:
	cd user-service && pytest
	cd order-service && pytest