# docker-pg

A weird configuration / proof of concept that almost works the way I want it to.

## Description
Just a config for getting a postgres docker container running.

Meant to spin up a dockerized instance of a postgres database where the folders inside of `assets/sql/` become schemas,
and the `.sql` files inside of those schema folders become the tables as part of the docker image / container build process. 

## How to use
Right click the Dockerfile.test in VsCode and select `open in integrated terminal`.
Then follow the commented instruction in the Dockerfile.test  
OR  
Use your terminal and change directory to this project and run the commented instructions in the Dockerfile.test

## Connect with pgAdmin

- [pgAdmin](https://www.pgadmin.org/download/)

Register a new server using:
- host: `localhost`
- port: `5432`
- Maintenance database: `postgres`
- username: `postgres`
- password: `postgres`

If you used a different port other than the recommended port 5432,
specify the port you used instead.