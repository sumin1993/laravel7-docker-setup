# Laravel + Nginx + Docker

## Description
Start developing a fresh Laravel application with `docker` using `docker-compose`.

The images used in this repo is `nginx`,`mysql:5.7` and `laravel 7.*`. 
The goal is to make setting up the development as simple as possible.

laravel version 7.* install command
(this project is already installed laravel 7.*)
```
composer create-project --prefer-dist laravel/laravel:^7.0 blog
```

## 1. Setup development environment
### Prerequisites
In order to use this compose file (docker-compose.yml) you must have:

1. [docker](https://docs.docker.com/engine/installation/)
1. [docker-compose](https://docs.docker.com/compose/install/)

## 2. Build the images and start the services:
* all the docker setup environment done and just run the services.
```
docker-compose build
docker-compose up -d
```

## 3. Api Start Up
* Go to Project Directory
```
cd [proj-path]
```

* Build docker and remove vendor **[First Time only]****
```
docker-compose build
```

* Up docker-compose
```
docker-compose up -d
```

* Reset docker-compose
```
docker-compose restart
```

* update/install composer
```
docker-compose exec app composer install
docker-compose exec app composer update
```

### Install Bootstrap
```
docker-compose exec app composer require laravel/ui

php artisan ui bootstrap

npm install

npm run dev
```

### Database Setup

* copy .env.example , rename to .env , change these db connet
```
DB_CONNECTION=mysql
DB_HOST=db
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=user1
DB_PASSWORD=admin
```

* migrate new database (Make sure the destined database (here: laravel) is empty)
```
docker exec app php artisan migrate
```

* Or to rollback and re-run migrate from start
```
docker exec app php artisan migrate:refresh
```

* Or to rollback and re-run by step number
```
docker exec app php artisan migrate:refresh --step=[number]
```

## 4. Run Project 
```
・phpmyadmin
http://localhost:8100/
db: laravel
username: user1
password: admin

・laravel project
http://localhost:8000/
```
