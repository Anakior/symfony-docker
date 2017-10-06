OS := $(shell uname)

start_dev:
ifeq ($(OS),Darwin)
	docker volume create --name=app-sync
	docker-compose -f docker-compose-sync.yml up -d
	docker-sync start
	docker exec -it symfony_php chown -R www-data:www-data app/cache
else
	docker-compose up -d
	docker exec -it symfony_php chown -R www-data:www-data app/cache
endif

stop_dev:           ## Stop the Docker containers
ifeq ($(OS),Darwin)
	docker-compose stop
	docker-sync stop
else
	docker-compose stop
endif
