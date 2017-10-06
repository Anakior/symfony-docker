# Docker compose base for Symfony2/3 with phpmyadmin

## To create

- copy .env.dist to .env
- edit .env to change vars
- **docker-compose build**
- **docker-compose up -d**
- add in **/etc/hosts** this line : **127.0.0.1 symfony.dev**

## To start

- in folder **docker-compose start**

## To reset

- **./docker-rebuild.sh**

## Using docker-sync

Symfony Docker can be very slow on mac (don't use it on linux this is useless) so i have added the possibility to use docker-sync. You have to install it with:

- **sudo gem install docker-sync**

The file are separated to allow to use either docker-sync or not so to launch it instead of a docker-compose start do :

- **make start_dev** (this will download a lot of thing the first time)

To stop it

- **make stop_dev**


## URL

- **Site :** http://{server_name}/
- **LogStash :** http://{server_name}:81
- **PhpMyAdmin :** http://{server_name}:8080

Note : You can change **server_name** in **nginx/symfony.conf** meanwhile it will be **symfony.dev**
