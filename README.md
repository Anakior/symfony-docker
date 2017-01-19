# Docker compose base for Symfony3

## To create

- copy .env.dist to .env
- edit .env to change vars
- **docker-compose build**
- **docker-compose up -d**

## To start

- in folder **docker-compose start**

## To reset

- **docker-compose stop -t 0 && docker-compose rm --all  && docker-compose build && docker-compose up -d --remove-orphans**