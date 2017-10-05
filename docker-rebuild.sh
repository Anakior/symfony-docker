#/bin/bash

docker-compose stop -t 0 && docker-compose rm --all  && docker-compose build && docker-compose up -d --remove-orphans