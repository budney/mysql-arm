# mysql-arm
Docker image for running MySQL on arm with specified uid and gid.

## About
- Based on the [ricado/mysql-server-armv7](https://hub.docker.com/r/ricado/mysql-server-armv7) docker image.
- Adds support for USER_UID and USER_GID variables, so you can specify the uid and gid of the mysql user.

## Getting Started
The simplest way to use this image is in a docker-compose file like this:

```
version: "3"

services:
    mysql:
        image: budney/mysql:latest
        container_name: mysql
        restart: unless-stopped
        environment:
            - USER_UID=65534
            - USER_GID=65534
            - MYSQL_ROOT_PASSWORD=<<PASSWORD>>
            - MYSQL_USER=<<USERNAME>>
            - MYSQL_PASSWORD=<<PASSWORD>>
            - MYSQL_DATABASE=<<DBNAME>>
        ports:
            - 3306:3306
        volumes:
            - /path/to/data/volume:/var/lib/mysql
```
