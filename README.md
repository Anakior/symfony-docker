# Docker compose base for Symfony3

## To create

- copy .env.dist to .env
- edit .env to change vars
- **docker-compose build**
- **docker-compose up -d**
- add in **/etc/hosts** this line : **127.0.0.1 symfony.dev**

## To start

- in folder **docker-compose start**

## To reset

- **docker-compose stop -t 0 && docker-compose rm --all  && docker-compose build && docker-compose up -d --remove-orphans**


## URL

- **Site :** http://{server_name}/
- **LogStash :** http://{server_name}:81
- **PhpMyAdmin :** http://{server_name}:8080

Note : You can change **server_name** in **nginx/symfony.conf**